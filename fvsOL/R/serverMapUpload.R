# Import input data: upload map (spatial) data.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvMapUpload <- quote({
   ## Upload Map data
   observe({
    if(input$inputDBPan == "Upload Map data") 
    {
cat ("Map data hit.\n")
      library(sf)
      updateSelectInput(session=session, inputId="mapUpLayers", choices=list(),
                        selected=0)
      output$mapActionMsg = renderText(" ")
    }
   })

   ## mapUpload
   observe({
    if(is.null(input$mapUpload)) return()
    {
cat ("mapUpload\n")
      progress <- shiny::Progress$new(session,min=1,max=3)
      if (file.exists(input$mapUpload$datapath))
      {
        fileEnding = tolower(tools::file_ext(basename(input$mapUpload$datapath)))
cat ("mapUpload, filename=",input$mapUpload$datapath," ending=",fileEnding,"\n")
        if (fileEnding != "zip") 
        {
          output$mapActionMsg = renderText(paste0("Upload a .zip file"))
          progress$close()
          return()
        }
        mapDir = paste0(dirname(input$mapUpload$datapath),"/mapData")
        unlink(mapDir,recursive=TRUE)
        dir.create(mapDir)
        file.copy(from=input$mapUpload$datapath,to=mapDir)
        zipName = basename(input$mapUpload$datapath)
        unlink(input$mapUpload$datapath)
        progress$set(message = "Unzipping",value = 1)
        curdir = getwd()
        setwd(mapDir)
        utils::unzip(zipName, junkpaths = TRUE)
        unlink(zipName)
        if (length(dir(mapDir)) > 1) mapDir = dirname(mapDir)
        progress$set(message = "Getting layers",value = 2)
        if (length(dir(mapDir)) > 1) mapDir = dirname(mapDir)
        setwd(mapDir)
        lyrs = try(sf::st_layers(dir(mapDir)))
        setwd(curdir)                                
cat ("mapUpload, class(lyrs)=",class(lyrs),"\n")
        if ("try-error" %in% class(lyrs) || length(lyrs$name)==0)
        {
          output$mapActionMsg = renderText("Can not find layers in data")
          progress$close()
          return()
        }
        lyrs = as.list(lyrs$name)
        if (length(lyrs) > 1) 
        {
          lyr = grep ("poly",names(lyrs),ignore.case=TRUE)
          if (length(lyr) == 0 || any(is.na(lyr))) lyr = 1
          if (length(lyr) > 1) lyr = lyr[which.min(nchar(names(lyrs)[lyr]))]
          lyr = names(lyrs)[lyr]
        } else lyr = lyrs[1]
        lyr = unlist(lyr)
        updateSelectInput(session=session, inputId="mapUpLayers", choices=lyrs,
                          selected=lyr)
        progress$close() 
      }
    }
   })

   ## mapUpLayers
   observe({
      if (is.null(input$mapUpLayers)) return()
      datadir = dirname(isolate(input$mapUpload$datapath))
      if (!dir.exists(datadir)) return()
      curdir = getwd()
      setwd(datadir)
      datadir = dir()
cat ("input$mapUpLayers =",input$mapUpLayers,"\n")
      if (length(dir(datadir)) == 1) setwd(datadir)
      progress <- shiny::Progress$new(session,min=1,max=3)
      progress$set(message = paste0("Loading map: ",datadir," Layer: ",input$mapUpLayers),value=2)
      txtoutput = capture.output(dbGlb$spd <- try(st_read(dir(),input$mapUpLayers)))
      setwd(curdir)
      if ("try-error" %in% class(dbGlb$spd))
      {
        output$mapActionMsg = renderText(paste0("Map read error: ",dbGlb$spd))
        progress$close()
        setwd(curdir)
        return()
      }
      txtoutput = paste0(txtoutput,collapse="\n")
      output$mapActionMsg = renderText(txtoutput)
      progress$set(message = txtoutput,value=3)
      stdInit = getTableName(dbGlb$dbIcon,"FVS_StandInit")
      ids = try(dbGetQuery(dbGlb$dbIcon,paste0('select Stand_ID from ',stdInit)))
cat ("length(ids)=",length(ids),"\n")
      choices = setdiff(names(dbGlb$spd),"geometry")
      names(choices) = choices
      if ("try-error" %in% class(ids) || nrow(ids) == 0)
      {
        selected = grep("ID",choices,ignore.case=TRUE)[1]
        if (is.na(selected)) selected=0
      } else {
        ids = unlist(ids)
        names(ids) = NULL
        cnts = NULL
        for (col in choices)
          cnts = c(cnts,length(na.omit(match(ids,dbGlb$spd[,col][[col]])))) 
        cnts = cnts/length(ids)*100
        choices = paste0(choices," ",format(cnts,digits=3),"%")
        selected = choices[which.max(cnts)]
      }
cat ("input$mapUpLayers, number of layers (choices)=",length(choices)," selected=",selected,"\n")
      updateSelectInput(session=session, inputId="mapUpIDMatch",
          choices=choices,selected=selected)
      progress$close()
   })
   
   prepSpatialData = function(dbGlb)
   {
     if (!exists("spd",envir=dbGlb,inherit=FALSE)) return(NULL)   
     stdInit = getTableName(dbGlb$dbIcon,"FVS_StandInit")
     ids1 = try(dbGetQuery(dbGlb$dbIcon,paste0('select distinct Stand_ID from ',stdInit)))
     ids1 = if (inherits(ids1,"try-error")) list() else unlist(ids1)
     names(ids1) = NULL
     if ("FVS_Cases" %in% 
       dbGetQuery(dbGlb$dbOcon,"SELECT * FROM sqlite_master where type='table'")$name)
     {
       ids2 = try(dbGetQuery(dbGlb$dbOcon,'select distinct StandID from FVS_Cases;'))
       ids2 = if ("try-error" %in% class(ids2)) list() else unlist(ids2)
       names(ids2) = NULL
       keep=union(ids1,ids2) 
     } else keep=ids1
     matID = unlist(strsplit(input$mapUpIDMatch," "))[1]
     keep=na.omit(charmatch(keep,dbGlb$spd[,matID][[matID]]))
     if (length(keep)) 
     {
       SpatialData=dbGlb$spd[keep,]
       attr(SpatialData,"MatchesStandID") =  matID
       output$mapActionMsg = renderText(paste0("Map saved for this project, StandID match=",
           matID,", Number of objects kept=",nrow(SpatialData)))
     } else {
       SpatialData=NULL
       output$mapActionMsg = renderText("No map or data to save.")
     }
     rm (spd,envir=dbGlb)    
     return(SpatialData)
   }
   ## mapUpSave
   observe({
     if(input$mapUpSave > 0)
     {
       SpatialData=prepSpatialData(dbGlb)
       if (!is.null(SpatialData)) 
       {
         save (SpatialData,file="SpatialData.RData")
         dbGlb$SpatialData = SpatialData
       }
     }
   })
   ## mapUpAdd 
   observe({
     if(input$mapUpAdd > 0)
     {     
       NewSpatialData=prepSpatialData(dbGlb)
       if (!is.null(NewSpatialData)) 
       {
         spatdat="SpatialData.RData"
         if (file.exists(spatdat)) load(file=spatdat)
         if (!exists("SpatialData")) SpatialData=NewSpatialData else
           SpatialData = if (class(SpatialData)=="list") 
             append(after=0,NewSpatialData) else list(SpatialData,NewSpatialData)        
         save (SpatialData,file=spatdat)
         dbGlb$SpatialData = SpatialData
       }
     }
   })
})
