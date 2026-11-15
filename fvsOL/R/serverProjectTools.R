# Manage Projects: delete runs/outputs, zip backups, restore backup, delete project, help.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvProjectTools <- quote({
  ## Tools, related to Copy
  observe({    
    if (input$toolsPan == "Copy projects") 
    {
      backups = dir (pattern="ProjectBackup")
      if (length(backups)) 
      {
        backups = sort(backups,decreasing=TRUE)
        names(backups) = backups 
      } else backups=list()
      updateSelectInput(session=session, inputId="pickBackup", 
        choices = backups, selected=NULL)
    } 
  }) 
                                                                                              

  ## deleteRun  
  observe({
    if(input$deleteRun > 0)
    {
      isolate({
        tit = globals$fvsRun$title
        session$sendCustomMessage(type = "dialogContentUpdate",
          message = list(id = "deleteRunDlg", 
            message = paste0('Delete run "',
            globals$fvsRun$title,'" (and all related outputs)?')))
      })
    }
  })
  observe({
    if (input$deleteRunDlgBtn > 0)
    {
      isolate({
cat ("delete run",globals$fvsRun$title," uuid=",globals$fvsRun$uuid,
     " runSel=",input$runSel,"lenRuns=",length(globals$FVS_Runs),"\n")
        killIfRunning(globals$fvsRun$uuid)
        removeFVSRunFiles(globals$fvsRun$uuid,all=TRUE)
        deleteRelatedDBRows(globals$fvsRun$uuid,dbGlb$dbOcon)
        removeFVSRun(dbGlb$prjDB,input$runSel)
        if (file.exists("projectId.txt"))
        {
          prjid = scan("projectId.txt",what="",sep="\n",quiet=TRUE)
          write(file="projectId.txt",prjid)
        } 
        globals$saveOnExit = FALSE
        globals$reloadAppIsSet=1
        session$reload()       
      })
    }
  })
  
  ## deleteAllOutputs
  observe({
    if(input$deleteAllOutputs > 0)
    {
      session$sendCustomMessage(type = "dialogContentUpdate",
        message = list(id = "deleteAllOutputsDlg",
                  message = "Delete all outputs?"))
    }
  })
  observe({  
    if (input$deleteAllOutputsDlgBtn == 0) return()
    isolate({
cat ("delete all outputs\n")
      dbGlb$dbOcon <- dbDisconnect(dbGlb$dbOcon )    
      unlink("FVSOut.db")
      for (uuid in globals$FVS_Runs) removeFVSRunFiles(uuid)
      dbGlb$dbOcon <- dbConnect(dbDriver("SQLite"),"FVSOut.db")    
    })  
  })
  
  ## deleteAllRuns
  observe({
    if(input$deleteAllRuns > 0)
    {
      session$sendCustomMessage(type = "dialogContentUpdate",
        message = list(id = "deleteAllRunsDlg",
                  message = "Delete all runs and outputs?"))
    }
  })
  observe({
    if (input$deleteAllRunsDlgBtn == 0) return()
    isolate({
cat ("delete all runs and outputs\n")
      rmfiles=dir(pattern="[.]pidStatus$")      
      for (tokill in rmfiles) killIfRunning(sub(".pidStatus","",tokill))
      dbGlb$dbOcon <- dbDisconnect(dbGlb$dbOcon)
      unlink("FVSOut.db")
      globals$FVS_Runs = getFVSRuns(dbGlb$prjDB)
      for (uuid in globals$FVS_Runs) 
      {
        removeFVSRunFiles(uuid,all=TRUE)
        removeFVSRun(dbGlb$prjDB,uuid)
      }
      globals$FVS_Runs = getFVSRuns(dbGlb$prjDB)
      dbGlb$dbOcon <- dbConnect(dbDriver("SQLite"),"FVSOut.db")
      globals$saveOnExit = FALSE
      globals$reloadAppIsSet=1
      session$reload()
    })  
  })
  
  ## delZipBackup
  observe({
    if(input$delZipBackup > 0)
    {
      validBackups <- lapply(dir(pattern = ".zip"), function(f)
      {
        if("projectId.txt" %in% utils::unzip(f, list = TRUE)$Name && "FVS_Data.db" %in% utils::unzip(f, list = TRUE)$Name) return(f)
        })
      validBackups <- unlist(validBackups[!sapply(validBackups, is.null)])
      fl = isolate(fs::path_sanitize(input$pickBackup))
      if (is.null(fl)) return()
      if (fl %in% validBackups && file.exists(fl))
      {
        unlink(fl)
        backups = dir (pattern="ProjectBackup")
        if (length(backups)) 
        {
          backups = sort(backups,decreasing=TRUE)
          names(backups) = backups 
        } else backups=list()
        updateSelectInput(session=session, inputId="pickBackup", 
          choices = backups, selected=NULL)
      } else {
        showModal(shiny::modalDialog(title = "Delete Project Backup",
          paste0("Project backup ",fl," is not a valid project backup zip file"),
          easyClose = TRUE, footer = NULL))
          return()
      }
    }
  })    
  

 ## mkZipBackup 
  observe({
    if(input$mkZipBackup > 0)
    {
      flst=dir()
      del = grep("^ProjectBackup",flst)
      if (length(del)) flst = flst[-del]
      del = grep("^www",flst)
      if (length(del)) flst = flst[-del]
      del = grep("^projectIsLocked",flst) 
      if (length(del)) flst = flst[-del]
      delFVSbin = grep ("^FVSbin",flst)
      if (length(delFVSbin)) flst = flst[-delFVSbin]
      createdFVSbin=FALSE
      if (isolate(input$prjBckCnts)=="projFVS")
      {
        if (globals$fvsBin != "FVSbin")
        {
          if (!dir.exists("FVSbin")) dir.create("FVSbin")
          fvsPgms = list.files(fvsBin,pattern=paste0(.Platform$dynlib.ext,"$"),
                               full.names=TRUE)
          file.copy(fvsPgms,"FVSbin")
          createdFVSbin=TRUE
        }
        fvsPgms = list.files("FVSbin",pattern=paste0(.Platform$dynlib.ext,"$"))
        fvsPgms = paste0("FVSbin","/",fvsPgms)
        flst = c(flst,fvsPgms)
      } 
      zfile=paste0("ProjectBackup_",format(Sys.time(),"%Y-%m-%d_%H_%M_%S"),".zip")
      # close the input and output databases if they are openned
      ocon = class(dbGlb$dbOcon) == "SQLiteConnection" && dbIsValid(dbGlb$dbOcon)
      icon = class(dbGlb$dbIcon) == "SQLiteConnection" && dbIsValid(dbGlb$dbIcon)
      if (ocon) dbDisconnect(dbGlb$dbOcon)
      if (icon) dbDisconnect(dbGlb$dbIcon)
      progress <- shiny::Progress$new(session,min=1,max=length(flst))
      for (i in 1:length(flst))
      {
        x = flst[i]
        progress$set(message = paste0("Adding ",x," to ",zfile), value = i)
        rtn=if (file.exists(zfile)) try(zipr_append(zfile,x)) else try(zipr(zfile,x))
        if (inherits(rtn,"try-error")) 
        {
          progress$set(message = paste0("Failed to add ",x," to ",zfile), value = i+1)
          Sys.sleep(.2)
        }
      }
      if (createdFVSbin) unlink("FVSbin")
      if (ocon) dbGlb$dbOcon <- dbConnect(dbDriver("SQLite"),dbGlb$dbOcon@dbname)   
      if (icon) dbGlb$dbIcon <- dbConnect(dbDriver("SQLite"),dbGlb$dbIcon@dbname)   
      Sys.sleep(.2)
      progress$close()
      backups = dir (pattern="ProjectBackup")
      if (length(backups)) 
      {
        backups = sort(backups,decreasing=TRUE)
        names(backups) = backups 
      } else backups=list()
      updateSelectInput(session=session, inputId="pickBackup", 
        choices = backups, selected=NULL)
    }
  })    
  
 ## Upload Project Backup--upZipBackup
  observe({
    if (!isLocal()) return()
    if (is.null(input$upZipBackup)) return()
    prjBackupUpload = input$upZipBackup$name
cat ("prjBackupUpload=",prjBackupUpload,"\n")
    progress <- shiny::Progress$new(session,min=1,max=5)
    progress$set(message = "Begining project backup upload",value = 2)
    fext <- tools::file_ext(basename(input$upZipBackup$name))
    if (fext !="zip") 
    {
      output$delPrjActionMsg  = renderText("<b>Uploaded file is not a valid project backup zip file</b>")
      unlink(input$upZipBackup$datapath)
      progress$close()
      return()
    }
    zip_conts <-utils::unzip(input$upZipBackup$datapath, list = TRUE)
    if(!("projectId.txt" %in% zip_conts$Name) || !("FVS_Data.db" %in% zip_conts$Name)){
      output$delPrjActionMsg  = renderText("<b>Uploaded file is not a valid project backup zip file</b>")
      unlink(input$upZipBackup$datapath)
      progress$close()
      return()
    }


    fdir = dirname(input$upZipBackup$datapath)
    progress$set(message = "Copying project backup to current project directory",value = 4)
    file.copy(input$upZipBackup$datapath,prjBackupUpload)
    backups <- lapply(dir(pattern = ".zip"), function(f){
      if("projectId.txt" %in% utils::unzip(f, list = TRUE)$Name && "FVS_Data.db" %in% utils::unzip(f, list = TRUE)$Name) return(f)
    })
    backups <- unlist(backups[!sapply(backups, is.null)])

    #backups = dir(pattern="ProjectBackup")
    if (length(backups)) 
    {
      backups = sort(backups,decreasing=TRUE)
      names(backups) = backups 
      updateSelectInput(session=session, inputId="pickBackup", 
          choices = backups, selected=backups[length(backups)])
    } else updateSelectInput(session=session, inputId="pickBackup", 
            choices = list(), selected=NULL)
    output$delPrjActionMsg  = renderText("<b>Project backup added to above list of backups to process</b>")
    progress$close()
  })
  
  ## restorePrjBackup 
  observeEvent(input$restorePrjBackup,
  {
    if (is.na(input$pickBackup) || is.null(input$pickBackup) || !file.exists(input$pickBackup))
    { 
        session$sendCustomMessage(type = "dialogContentUpdate",
        message = list(id = "restorePrjBackupDlg",
          message = paste0("WARNING: No project backup selected for restoration")))
      return()
    }
    cnts = zip_list(input$pickBackup)
    if (length(cnts)==0) return()
    if(length(grep("FVSbin",cnts$filename)) || 
       length(grep(paste0("FVS[a-z]*",.Platform$dynlib.ext,"$"),cnts$filename)))
    {
      output$btnA <-renderUI(HTML("Project files only"))
      output$btnB <-renderUI(HTML("Project files and FVS software"))
      setVisible(session, "restorePrjBackupDlgBtnC", TRUE)
      session$sendCustomMessage(type = "dialogContentUpdate",
        message = list(id = "restorePrjBackupDlg",
          message = paste0("WARNING: restoring this project backup will overwrite",
          " any existing project files in this current project. If you don't",
          " want to lose existing project files, consider restoring to a new empty",
          " project instead. This backup also contains FVS software that will",
          " overwrite your currently installed version with the software in the",
          " backup, if selected.  What contents would you like to restore?")))
      globals$prjFilesOnly = FALSE
    } else {
      output$btnA <- renderUI(HTML("Yes"))
      output$btnB <-renderUI(HTML("No"))
      setVisible(session, "restorePrjBackupDlgBtnC", FALSE)
      globals$prjFilesOnly = TRUE
      session$sendCustomMessage(type = "dialogContentUpdate",
        message = list(id = "restorePrjBackupDlg",
          message = paste0("WARNING: restoring this project backup will overwrite", 
          " any existing project files in this current project. If you don't", 
          " want to lose existing project files, consider restoring to a new",
          " empty project instead. Are you sure?")))
    }
  })
  
  observeEvent(input$restorePrjBackupDlgBtnA,{  
    isolate({
       if (is.na(input$pickBackup) || is.null(input$pickBackup) || !file.exists(input$pickBackup)) return()
        progress <- shiny::Progress$new(session,min=1,max=5)
        progress$set(message = "Unzipping project backup",value = 2)
        fvsWorkBackup = input$pickBackup
cat ("restorePrjBackupDlgBtB fvsWorkBackup=",fvsWorkBackup,"\n")    
        if (file.exists(fvsWorkBackup)) 
        {
          progress$set(message = "Checking backup contents",value = 3)
          ocon = class(dbGlb$dbOcon) == "SQLiteConnection" && dbIsValid(dbGlb$dbOcon)
          icon = class(dbGlb$dbIcon) == "SQLiteConnection" && dbIsValid(dbGlb$dbIcon)
          if (ocon) dbDisconnect(dbGlb$dbOcon)
          if (icon) dbDisconnect(dbGlb$dbIcon)
          td <- tempdir()
          rtn = try(utils::unzip (paste0(getwd(),"/",fvsWorkBackup),exdir=td,
                    overwrite=TRUE,junkpaths=FALSE))
          if (inherits(rtn,"try-error")) return()
          zipConts <- dir(td,include.dirs=TRUE,recursive=TRUE)
          del=NULL
          for (todel in c("^www","^rFVS","R$",".html$",".zip$","treeforms.RData",
                          "^FVSbin","prms.RData",".log$")) del = c(del,grep (todel,zipConts))
          if (length(del)) lapply(paste0(td,"/",zipConts[del]),unlink,recursive=TRUE)
          pgms=dir(td,pattern=paste0("FVS[a-z]*",.Platform$dynlib.ext,"$"))
          if (length(pgms)) lapply(paste0(td,"/",pgms),unlink,recursive=TRUE)
          curcnts=dir()
          tokeep = grep("^ProjectBackup",curcnts)
          tokeep = c(tokeep,grep("^projectId",curcnts))
          curcnts = curcnts[tokeep]
          lapply(paste0(td,"/",curcnts),unlink,recursive=TRUE)
          progress$set(message = "Copying backup contents",value = 4)
          zipConts <- dir(td,recursive=TRUE)    
          lapply(zipConts,function(x,td) file.copy(from=paste0(td,"/",x),to=x,overwrite=TRUE),td)
          unlink(td,recursive=TRUE)
        } 
        if (ocon) dbGlb$dbOcon <- dbConnect(dbDriver("SQLite"),dbGlb$dbOcon@dbname)   
        if (icon) dbGlb$dbIcon <- dbConnect(dbDriver("SQLite"),dbGlb$dbIcon@dbname)
        globals$reloadAppIsSet=1
        globals$saveOnExit=FALSE
        progress$close()
        session$reload()
      })
  })    
      
  observeEvent(input$restorePrjBackupDlgBtnB,{  
    isolate({
        if (is.na(input$pickBackup) || is.null(input$pickBackup) || !file.exists(input$pickBackup)) return()
        if(globals$prjFilesOnly){
          globals$prjFilesOnly = FALSE
          return()
        }
        progress <- shiny::Progress$new(session,min=1,max=5)
        progress$set(message = "Unzipping project backup",value = 2)
        fvsWorkBackup = input$pickBackup
cat ("restorePrjBackupDlgBtnA fvsWorkBackup=",fvsWorkBackup,"\n")    
        if (file.exists(fvsWorkBackup)) 
        {
          progress$set(message = "Checking backup contents",value = 3)
          ocon = class(dbGlb$dbOcon) == "SQLiteConnection" && dbIsValid(dbGlb$dbOcon)
          icon = class(dbGlb$dbIcon) == "SQLiteConnection" && dbIsValid(dbGlb$dbIcon)
          if (ocon) dbDisconnect(dbGlb$dbOcon)
          if (icon) dbDisconnect(dbGlb$dbIcon)
          curdir=getwd()
          td <- paste0(tempdir(),"/pbk")
          suppressWarnings(dir.create(td))
          setwd(td)
          lapply(dir(),function(x) unlink(x,recursive=TRUE,force=TRUE))
          rtn = try(utils::unzip (paste0(curdir,"/",fvsWorkBackup),exdir=td,
                    overwrite=TRUE,junkpaths=FALSE))
          if (inherits(rtn,"try-error")) return()
          zipConts <- dir(td,include.dirs=TRUE,recursive=TRUE)
          del=NULL
          # TODO: most of this list is related to old versions the software (pre "package")
          # and can be reviewed (many dropped) in the future, say 2024 or so.
          for (todel in c("^www","^rFVS","R$",".html$",".zip$","treeforms.RData",
              "prms.RData",".log$","FVS_Data.db.default","FVS_Data.db.empty", 
              "databaseDescription.xlsx","projectIsLocked.txt",".png$", 
              "SpatialData.RData.default" )) del = c(del,grep (todel,zipConts))
          if (length(del)) lapply(paste0(td,"/",zipConts[del]),unlink,recursive=TRUE)
          mkFVSProjectDB()
          zipConts <- dir(td,include.dirs=TRUE,recursive=TRUE)
          pgms=dir(td,pattern=paste0("FVS[a-z]*",.Platform$dynlib.ext,"$"))
          if (length(pgms)) 
          {
            frompgms=paste0(td,"/",pgms)
            todir=paste0(td,"/FVSbin")
            dir.create(todir)
            topgms=paste0(todir,"/",pgms)
            file.rename(from=frompgms,to=topgms)
          }
          setwd(curdir)
          curcnts=dir()
          tokeep = grep("^ProjectBackup",curcnts)
          tokeep = c(tokeep,grep("^projectId",curcnts))
          curcnts = curcnts[tokeep]
          lapply(paste0(td,"/",curcnts),unlink,recursive=TRUE)
          if (globals$fvsBin != "FVSbin" && length(topgms))
          {
            progress$set(message = "Copying backup contents",value = 4)
            zipContsFVS <- dir(paste0(td,"/FVSbin"),pattern=paste0("FVS[a-z]*",.Platform$dynlib.ext,"$"))
            zipContsPrj <- zipConts[-(match(zipContsFVS,zipConts))]
            lapply(zipContsFVS,function(x,td) file.copy(from=paste0(td,"/FVSbin/",x),to=globals$fvsBin,overwrite=TRUE),td)
            lapply(zipContsPrj,function(x,td) file.copy(from=paste0(td,"/",x),to=x,overwrite=TRUE),td)
          } else {
            progress$set(message = "Copying backup contents",value = 4)
            dir.create("FVSbin")
            zipConts <- dir(td,recursive=TRUE)    
            lapply(zipConts,function(x,td) file.copy(from=paste0(td,"/",x),to=x,overwrite=TRUE),td)
          }
          unlink(td,recursive=TRUE)
        } 
        globals$reloadAppIsSet=1
        globals$saveOnExit=FALSE
        progress$close()
        session$reload()
      })
  })
  
  observeEvent(input$restorePrjBackupDlgBtnC,
     updateSelectInput(session=session, inputId="pickBackup", selected=NULL)
  )

  ## PrjDelete 
  observe({
    if(input$PrjDelete > 0)
    {            
      isolate({
        if (is.null(input$PrjDelSelect)) 
        {
          output$delPrjActionMsg <- renderUI(HTML("No project selected."))
          session$sendCustomMessage(type = "dialogContentUpdate",
            message = list(id = "PrjDeleteDlg", message=
              paste0('Select a project to delete, press Yes or No to continue.')))
        } else {
cat ("PrjDelete, input$PrjDelSelect=",input$PrjDelSelect,"\n")
          prjList=getProjectList()
          nm = names(prjList)[charmatch(input$PrjDelSelect,prjList)]
          output$delPrjActionMsg <- NULL
          msg = if(length(grep("ProjectBackup_",dir("../",input$PrjDelSelect)))) 
            " contains project backups within it that you may want to download first. "  else ""
          session$sendCustomMessage(type = "dialogContentUpdate",
            message = list(id = "PrjDeleteDlg", message = 
            paste0(nm,msg,"Are you sure you still want to delete this project?")))
        }
      })
    }                                        
  })
 observe({
    if (input$PrjDeleteDlgBtn > 0) 
    {
cat("delete project button.") 
      isolate({
        if (is.null(input$PrjDelSelect)) 
        {
          output$delPrjActionMsg <- renderUI(HTML("No project selected."))
        } else {
          target <-fs::path_sanitize(input$PrjDelSelect)
          prjList=getProjectList()
          if (! target %in% names(prjList))
          {
            output$delPrjActionMsg <- renderUI(HTML("<b>Project directory not found.</b>"))
            return()
          }
          delPrj=paste0("../",target)  
          if (file.exists(paste0(delPrj,"/projectIsLocked.txt")))             
          {
            output$delPrjActionMsg <- renderUI(HTML("Cannot delete a locked project."))
          } else {
            if (nchar(delPrj)<4 || !dir.exists(delPrj))    
            {
              output$delPrjActionMsg <- renderUI(HTML("<b>Project directory not found.</b>"))
            } else {
              unlink(delPrj, recursive=TRUE)        
              output$delPrjActionMsg <- renderUI(HTML("<b>Project deleted</b>"))
              updateProjectSelections()
            }
          }
        } 
      })
    }
  })

  ## topHelp
  observe({
    if (input$topPan == "Help")
    {
      if (! exists("fvshelp")) data(fvsOnlineHelpRender)
      if (! exists("fvshelp")) fvshelp="<h4> No help is available</h4>"
      output$uiHelpText <- renderUI(HTML(fvshelp))
    }
  })

})
