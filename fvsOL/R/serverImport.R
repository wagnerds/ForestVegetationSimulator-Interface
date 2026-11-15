# Import runs and other items from other projects.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvImport <- quote({
   ## Import runs and other items
   observe({
     if(input$toolsPan == "Import runs and other items") 
     {
       choices = getProjectList(includeLocked=TRUE)
       actprj <- grep(basename(getwd()),choices) # remove current project
       if (length(actprj)) choices <- choices[-actprj]      
       updateSelectInput(session=session, inputId="impPrjSource", 
         choices=choices,selected=0)
       output$selectedSourceMsg <- renderText(
            paste0('<p style="font-size:17px;color:darkred"><b>',
                   'No source selected.</b>'))
       output$impPrjSourceMsg     <- NULL
       output$uploadRunsRdatMsg   <- NULL
       output$impRunsMsg          <- NULL  
       output$impCustomCmpsMsg    <- NULL
       output$impGraphSettingMsg  <- NULL
       output$impCustomQueriesMsg <- NULL
       output$impFVSDataMsg       <- NULL    
       output$impSpatialDataMsg   <- NULL
       updateSelectInput(session=session, inputId="uploadRunsRdat",choices=list())
       updateSelectInput(session=session, inputId="impRuns",choices=list())
       updateSelectInput(session=session, inputId="impCustomCmps",choices=list())
       updateSelectInput(session=session, inputId="impGraphSettings",choices=list())
       updateSelectInput(session=session, inputId="impFVSData",choices=list())
       updateSelectInput(session=session, inputId="impSpatialData",choices=list())
     }  
  })                                     
  ## mkSrcMsgAndList
  mkSrcMsgAndList <- function(db,nruns)
  {
    msg = paste0("File contains ",nruns," runs")
    tbs=dbListTables(db)
    itms=listTableNames(db)
    itms=intersect(itms,c("GraphSettings","customCmps"))
    if (file.exists("SpatialData.RData")) itms=c(itms,"SpatialData")
    if (file.exists("FVS_Data.db")) itms=c(itms,"FVS_Data")
    if (length(itms)>0) msg=paste0(msg," plus: ",paste0(itms,collapse=", "))
    if (nruns > 0) itms=c(itms,"Runs")
    rtn = list(itms,msg)
    attr(rtn,"dir") = getwd()
    for (itm in itms) 
    { 
      switch(itm,
      "Runs" = {
        updateSelectInput(session=session, inputId="impRuns",
                          choices=getFVSRuns(db))
      },
      "GraphSettings" = {
        loadObject(db,"GraphSettings")
        names=setdiff(names(GraphSettings),"None")
        updateSelectInput(session=session, inputId="impGraphSettings",
          choices=as.list(names))
      },
      "customCmps" = {
        loadObject(db,"customCmps")      
        updateSelectInput(session=session, inputId="impCustomCmps",
          choices=as.list(names(customCmps)))
      })
    }
    zout = setdiff(c("Runs","GraphSettings","customCmps"),itms)
    for (itm in zout) 
    { 
      switch(itm,
      "Runs" = updateSelectInput(session=session, inputId="impRuns",choices=list()),
      "GraphSettings" = updateSelectInput(session=session, inputId="impGraphSettings",choices=list()),
      "customCmps" = updateSelectInput(session=session, inputId="impCustomCmps",choices=list()),    
      )
    }
    rtn
  }                                          
    
  ## Upload zip file.                  
  observe({ 
    if (is.null(input$uploadRunsRdat)) return()
    if (!length(grep("zip",input$uploadRunsRdat$type))) {                                 
      output$uploadRunsRdatMsg  <- renderText("Uploaded file is not a .zip")
    } else { 
      isolate({
        if (length(globals$importItems))
        {
          if (attr(globals$importItems,"temp")) 
            unlink(attr(globals$importItems,"dir"),recursive = TRUE)
          globals$importItems=list()
        }   
        curdir = getwd()
        tdir = dirname(input$uploadRunsRdat$datapath)
        setwd(tdir)
        tmpPrj = uuidgen()
        dir.create(tmpPrj)
        tmpPrj = file.path(getwd(),tmpPrj)
        setwd(tmpPrj)
        file.copy(from=input$uploadRunsRdat$datapath,to=tmpPrj)
        zipName = basename(input$uploadRunsRdat$datapath)
        unlink(input$uploadRunsRdat$datapath)
        utils::unzip(zipName, junkpaths = TRUE)
        unlink(zipName)
        updateSelectInput(session=session, inputId="impPrjSource",selected=0)
        nruns=mkFVSProjectDB()
        db=connectFVSProjectDB()
        ml = mkSrcMsgAndList(db,nruns)
        dbDisconnect(db)
        output$uploadRunsRdatMsg <- renderUI(HTML(ml[[2]]))
        attr(ml,"temp") = TRUE # this directory can be deleted
        output$selectedSourceMsg <- renderText(
          paste0('<p style="font-size:17px;color:darkred"><b>Source: ',
                  ml[[2]]))
        globals$importItems = ml
        setwd(curdir)
      })
    }
    session$sendCustomMessage(type = "resetFileInputHandler","uploadRunsRdat")          
  })

  ## impPrjSource
  observe({
    if (is.null(input$impPrjSource)) return() 
    {
      curdir = getwd()
      setwd("../")
      tmpPrj = file.path(getwd(),input$impPrjSource)
      if (dir.exists(tmpPrj)) 
      {
        setwd(tmpPrj)
        db = connectFVSProjectDB()
        nruns=mkFVSProjectDB()
        ml = mkSrcMsgAndList(db,nruns)
        ml[[2]] = gsub("File",paste("Project",input$impPrjSource),ml[[2]])
        dbDisconnect(db)
        output$selectedSourceMsg <- renderText(
            paste0('<p style="font-size:17px;color:darkred"><b>Source: ',
                   ml[[2]]))
        attr(ml,"temp") = FALSE  # don't delete this source directory
        globals$importItems = ml
      }   
      setwd(curdir)
    }    
  })                                                                                   
  
  ## doImpRuns        
  observe({
    if (input$doImpRuns > 0) 
    {isolate({
      if (is.null(input$impRuns)) return()
      prjDir=attr(globals$importItems,"dir")
      pDB=connectFVSProjectDB(prjDir)
      on.exit(dbDisconnect(pDB))
      curRuns = names(getFVSRuns(dbGlb$prjDB))
      theRun = loadFVSRun(pDB,input$impRuns)
      if (is.null(theRun)) 
      { 
        output$impRunsMsg = renderText("The run could not be loaded.")
        return()
      }
      curTitle = theRun$title
      theRun$title = mkNameUnique(curTitle,names(getFVSRuns(dbGlb$prjDB)))
      theRun$uuid = uuidgen()
      storeFVSRun(dbGlb$prjDB,theRun)
      globals$FVS_Runs = getFVSRuns(dbGlb$prjDB)     
      output$impRunsMsg = renderText(paste0('Run "',curTitle,'" imported and ',
       ' is named "',theRun$title,'" in your current project.'))
      updateSelectInput(session=session, inputId="runSel", 
                        choices=globals$FVS_Runs,selected=globals$fvsRun$uuid)
    })}
  })

  ## doImpCustomCmps
  observe({
    if (input$doImpCustomCmps > 0)
    {isolate({
      if (is.null(input$impCustomCmps)) return()
      prjDir=attr(globals$importItems,"dir")
      pDB=connectFVSProjectDB(prjDir)
      on.exit(dbDisconnect(pDB))
      loadObject(pDB,"customCmps",asName="source")
      loadObject(dbGlb$prjDB,"customCmps")
      curTitle = input$impCustomCmps
      if(exists("customCmps")){
        newtitle = mkNameUnique(curTitle,names(customCmps))
        } else{
        customCmps = list()
        newtitle = mkNameUnique(curTitle,customCmps)
      }
      customCmps[newtitle] = source[curTitle]
      storeOrUpdateObject(dbGlb$prjDB,customCmps)
      output$impCustomCmpsMsg = renderText(paste0('Component "',curTitle,'" imported and ',
       ' is named "',newtitle,'" in your current project.'))
      globals$customCmps = customCmps
      updateSelectInput(session=session,inputId="kcpSel",choices=as.list(names(customCmps)), 
      selected=names(customCmps)[1])    
    })}
  })

  ## doImpGraphSettings
  observe({
    if (input$doImpGraphSettings > 0) 
    {isolate({
      if (is.null(input$impGraphSettings)) return()
      prjDir=attr(globals$importItems,"dir")
      pDB=connectFVSProjectDB(prjDir)
      on.exit(dbDisconnect(pDB))
      loadObject(pDB,"GraphSettings",asName="source")
      loadObject(dbGlb$prjDB,"GraphSettings")
      curTitle = input$impGraphSettings
      if(exists("GraphSettings")){
        newtitle = mkNameUnique(curTitle,names(GraphSettings))
        } else{
        GraphSettings = list()
        newtitle = mkNameUnique(curTitle,GraphSettings)
      }
      GraphSettings[newtitle] = source[curTitle]
      storeOrUpdateObject(dbGlb$prjDB,GraphSettings)
      output$impGraphSettingsMsg = renderText(paste0('Graph setting "',curTitle,'" imported and ',
       ' is named "',newtitle,'" in your current project.'))  
      updateSelectInput(session=session,inputId="OPsettings",choices=as.list(names(GraphSettings)), 
      selected=names(GraphSettings)[1])    
    })}
  })

  ## doImpCustomQueries REMOVED (DW 10/2026)
  
  ## impFVS_Data 
  observe({
    if (input$impFVS_Data > 0)
    {
cat(" input$impFVS_Data=",input$impFVS_Data,"\n")
      session$sendCustomMessage(type = "dialogContentUpdate",
        message = list(id = "impFVS_DataDlg",
          message = "This action overwrites your current FVS_Data.db")) 
    }
  })
  observe({  
    if (input$impFVS_DataDlgBtn == 0) return()
    isolate({
cat(" input$impFVS_DataDlgBtn=",input$impFVS_DataDlgBtn,"\n")
      needfile = file.path(attr(globals$importItems,"dir"),"FVS_Data.db")
      if (length(needfile) && nchar(needfile) && file.exists(needfile)) 
      {
        file.copy(from=needfile,to="FVS_Data.db",overwrite=TRUE) 
        output$impFVS_DataMsg = renderText("FVS_Data.db has been imported.")
      } else output$impFVS_DataMsg = renderText("Source FVS_Data.db was NOT found.")
    })  
  })
  ## impSpatialData
  observe({
    if(input$impSpatialData > 0)
    {           
cat(" input$impSpatialData=",input$impSpatialData,"\n")
      session$sendCustomMessage(type = "dialogContentUpdate",
        message = list(id = "impSpatialDataDlg",
          message = "This action adds this SpatialData your current SpatialData")) 
     }                                                                    
  })
  observe({  
    if (input$impSpatialDataDlgBtn == 0) return()
    isolate({
cat(" input$impSpatialDataDlgBtn=",input$impSpatialDataDlgBtn,"\n")
      needfile = file.path(attr(globals$importItems,"dir"),"SpatialData.RData")
      if (length(needfile) && nchar(needfile) && file.exists(needfile)) 
      {
        spatdat = "SpatialData.RData"
        if (!exists("SpatialData",envir=dbGlb,inherit=FALSE) && file.exists(spatdat))
        {
          load(spatdat,envir=dbGlb)
          if (class(dbGlb$SpatialData)=="SpatialPolygonsDataFrame") 
            dbGlb$SpatialData=list(d=dbGlb$SpatialData)
          load(needfile) #loads into the current frame (local environment).
          dbGlb$SpatialData <- append(dbGlb$SpatialData,SpatialData)
          save(SpatialData,envir=dbGlb,file="SpatialData.RData")
        } else file.copy(from=needfile,to="SpatialData.RData",overwrite=TRUE) 
        output$impSpatialDataMsg = renderText("SpatialData.RData has been added to this project's spatial data.")
      } else output$impSpatialDataMsg = renderText("Source SpatialData.RData was not found.")
    })  
  })  
 
  # runScript selection                                                         
  observe(if (length(input$runScript)) customRunOps())
})
