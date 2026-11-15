# Download handlers for tables, databases, xlsx, project backups, run output, keywords, zip.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvDownloads <- quote({
  ## Download handlers
  ## Download dlRenderData

    output$dlRenderData <- downloadHandler(
      filename=function () paste0("table",input$dlRDType),
      content=function (tf = tempfile())
      {
        if (input$dlRDType == ".csv")
        {
          if (nrow(fvsOutData$render) > 0)
            write.csv(fvsOutData$render,file=tf,row.names=FALSE) else 
            cat (file=tf,'"No data"\n')
        } else {
          if (nrow(fvsOutData$render) > 0)
          {
            excelRowLimit=1048576
            if (nrow(fvsOutData$render) > excelRowLimit) 
              write.xlsx(fvsOutData$render[1:excelRowLimit,],file=tf,colNames = TRUE) else 
              write.xlsx(fvsOutData$render,file=tf,colNames = TRUE) 
          } else write.xlsx(file=tf)
        }
      }, contentType=if (length(input$table) && input$dlRDType==".csv") "text/csv" else 
         "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
         ### NB: length(input$table) is tested only to force this downloadHandler to fire.
    ## Download dlFVSDatadb
    output$dlFVSDatadb <- downloadHandler(
       filename="FVS_Data.db",
       content = function (tf = tempfile()) file.copy("FVS_Data.db",tf))
    ## Download dlFVSOutdb
    output$dlFVSOutdb <- downloadHandler(
       filename="FVSOut.db",
       content = function (tf = tempfile()) file.copy("FVSOut.db",tf))
    ## Download dlFVSOutxlsx
    output$dlFVSOutxlsx <- downloadHandler(
       filename= function () paste0(globals$fvsRun$title,"_FVSoutput.xlsx"),
       content = function (tf = paste0(tempfile(),".xlsx"))
       {
         # limit the number of rows exported to Excel to 1,048,576
         excelRowLimit=1048576
         runuuid = globals$fvsRun$uuid
         if (is.null(runuuid)) return()
         tabs = myListTables(dbGlb$dbOcon)
         if (!("FVS_Cases" %in% tabs)) return()
         cases = dbGetQuery(dbGlb$dbOcon,paste0("select CaseID from FVS_Cases ",
             "where KeywordFile = '",globals$fvsRun$uuid,"';"))
         if (nrow(cases) == 0) return()
cat ("download run as xlsx, ncases=",nrow(cases),"\n")
         dbExecute(dbGlb$dbOcon, "drop table if exists tmp_get_cases")
         dbWriteTable(dbGlb$dbOcon, "tmp_get_cases", cases, temporary = TRUE, overwrite = TRUE)
         out = list()
         cmpYes = if ("CmpMetaData" %in% tabs) 
         { 
           meta = try(dbReadTable(dbGlb$dbOcon,"CmpMetaData"))
           class(meta) == "data.frame" && meta$KeywordFile == runuuid
         }
         for (tab in tabs)
         {
           qry = if (!is.null(cmpYes) && cmpYes && substr(tab,1,3) == "Cmp")
             paste0("select * from ",tab," limit ",excelRowLimit,";") else
             paste0("select * from ",tab," where ",tab,".CaseID in",
                    " (select CaseID from tmp_get_cases) limit ",excelRowLimit,";")
          dat = try(dbGetQuery(dbGlb$dbOcon,qry))
          if (inherits(dat,"try-error")) next
          if (nrow(dat) == 0) next
          out[[tab]] = dat
cat ("qry=",qry," class(dat)=",class(dat),"\n")
         }
         if (length(out)) write.xlsx(file=tf,out)
       }, contentType=NULL)
  
  ## dlPrjBackup
    output$dlPrjBackup <- downloadHandler(filename=function ()
      isolate({
        validBackups <- lapply(dir(pattern = ".zip"), function(f){
          if("projectId.txt" %in% utils::unzip(f, list = TRUE)$Name && "FVS_Data.db" %in% utils::unzip(f, list = TRUE)$Name) return(f)
        })
        validBackups <- unlist(validBackups[!sapply(validBackups, is.null)])
        requestedBkUp <- fs::path_sanitize(input$pickBackup)
        
        if (requestedBkUp %in% validBackups && file.exists(requestedBkUp)) requestedBkUp else "NoBackup.txt"
      }),  
      content=function (tf = tempfile())
      {
        validBackups <- lapply(dir(pattern = ".zip"), function(f){
          if("projectId.txt" %in% utils::unzip(f, list = TRUE)$Name && "FVS_Data.db" %in% utils::unzip(f, list = TRUE)$Name) return(f)
        })
        validBackups <- unlist(validBackups[!sapply(validBackups, is.null)])
        sfile <- fs::path_sanitize(input$pickBackup)

        if (sfile %in% validBackups && file.exists(sfile)) file.copy(sfile,tf) else
          cat (file=tf,"Backup does not exist.\n")
      }, contentType="zip")
    
  ## DownLoad
  output$dlFVSRunout <- downloadHandler(
      filename=function() paste0(globals$fvsRun$title,"_FVSoutput.txt"),
      content=function (tf = tempfile())
      {
        sfile = paste0(input$runSel,".out")
        if (file.exists(sfile))
        {
          file.copy(sfile,tf)
          # use perl to change line endings, ignore if an error is detected
          if (!isLocal()) try(system(paste0("perl -pi -e 's/\\n/\\r\\n/' ",tf)))
        } else cat (file=tf,"Output not yet created.\n")
      }, contentType="text")
  ## Download keywords
  output$dlFVSRunkey <- downloadHandler(
      filename=function()paste0(globals$fvsRun$title,"_FVSkeywords.txt"),
      content=function (tf = tempfile())
      {
        sfile = paste0(input$runSel,".key")
        if (file.exists(sfile)) file.copy(sfile,tf) else
          cat (file=tf,"Keywords not yet created.\n")
      }, contentType="text")
  
  ## Download FVSProjectData.zip 
  output$dlFVSRunZip <- downloadHandler(
     filename="FVSProjectData.zip",
     content = function (tf = tempfile())
         {
           tempDir = paste0(dirname(tf),"/tozip")
           if (dir.exists(tempDir)) lapply(paste0(tempDir,"/",dir(tempDir)),unlink) else
               dir.create(tempDir)
           spatdat = "SpatialData.RData" 
           srcRunUuid = globals$fvsRun$uuid
           for (ele in input$dlZipSet)
           {
             cat ("building download, ele=",ele,"\n")
             switch (ele,
               outdb = {
                 from="FVSOut.db"
                 to=file.path(tempDir,from)
                 if (file.exists(from)) file.copy(from=from,to=to) else
                   cat (file=to,"Output database does not exist.\n")
               },
               key   = {
                 from=paste0(srcRunUuid,".key")
                 to=file.path(tempDir,paste0(globals$fvsRun$title,"_FVSkeywords.txt")) 
                 if (file.exists(from)) file.copy(from=from,to=to)                   
               },
               out   = {
                 from=paste0(srcRunUuid,".out")
                 to=paste0(tempDir,"/",globals$fvsRun$title,"_FVSoutput.txt")
                 if (file.exists(from)) file.copy(from=from,to=to) 
               },
               subdir= {
                 from=srcRunUuid
                 if (dir.exists(from)) 
                 {
                   to = file.path(tempDir,paste0(globals$fvsRun$title,"_SVS"))
                   dir.create (to)
                   file.copy(from=from,to=to,recursive = TRUE)
                   file.copy(from=paste0(from,"_index.svs"),to=to)
                 } 
               },
               FVS_Data = file.copy(from="FVS_Data.db" ,
                                    to=file.path(tempDir,"FVS_Data.db")),
               fvsProjdb = {
                 rdat="FVSProject.db"
                 if (file.exists(rdat)) file.copy(from=rdat,to=file.path(tempDir,rdat))
               },
               SpatialData = {
                 spatdat = "SpatialData.RData" 
               if (file.exists(spatdat)) file.copy(from=spatdat,
                                     to=file.path(tempDir,spatdat))
               }                        
           )}
           curdir = getwd()
           setwd(tempDir)
           zipr(tf,dir())
           unlink(tempDir,recursive = TRUE)
           setwd(curdir)
         }, contentType="application/zip")  
  
})
