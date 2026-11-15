# fvsOL entry point (fvsOL) and the Shiny server function (FVSOnlineServer).
#
# FVSOnlineServer is split across several files. This file holds the session
# start-up code (logging, globals, project databases, lock file, the first few
# observers). The rest of the server is in the R/server*.R files listed below.
# Each of those files defines one quoted expression, srvXxx <- quote({...}).
# At the end of FVSOnlineServer those expressions are evaluated, in this order,
# inside FVSOnlineServer's own environment. The code therefore behaves exactly
# as if it were written inline here: input, output, session, globals, dbGlb,
# fvsOutData, and helpers defined in other sections are all in scope.
#
#   serverGlobals.R       reference classes, constants, run scripts (not a section)
#   serverHelpers.R       small shared helper functions, e.g. setDisabled (not a section)
#   serverOutputLoad.R    srvOutputLoad    View Outputs > Load
#   serverExplore.R       srvExplore       View Outputs > Explore
#   serverGraphs.R        srvGraphs        View Outputs > Graphs
#   serverStands.R        srvStands        Simulate > Stands, groups
#   serverRuns.R          srvRuns          Simulate > run new/save/duplicate/reload
#   serverComponents.R    srvComponents    Simulate > Components, freeform editing
#   serverRunExec.R       srvRunExec       Simulate > Time, Save and Run
#   serverDownloads.R     srvDownloads     download handlers
#   serverKCP.R           srvKCP           Components > Editor (KCP files)
#   serverSVS.R           srvSVS           Visualize (SVS)
#   serverMaps.R          srvMaps          View On Maps
#   serverProjectTools.R  srvProjectTools  delete runs, backups, restore
#   serverInputDB.R       srvInputDB       Import input data: upload/install DB
#   serverInputEdit.R     srvInputEdit     Import input data: edit tables, climate
#   serverMapUpload.R     srvMapUpload     Import input data: map data
#   serverImport.R        srvImport        Import runs and other items
#   serverProjects.R      srvProjects      project management, saveRun
#
# To add server code, put it in the section file for its feature area. A new
# file needs a matching entry in the list at the end of FVSOnlineServer.
# See docs/fvsOL-code-structure.md for more detail.

#' Run fvsOL (FVS OnLine/OnLocal). 
#'
#' @param prjDir the name of the directory containing an fvsOL project.
#' @param runUUID the uuid of the run that should be opened when the system starts, 
#'   if NULL or not found in the list of runs, it is ignored.
#' @param fvsBin the name of the directory containing the FVS load libraries for the platform
#' @param shiny.trace turns on tracing for shiny, see shiny documentation
#' @param logToConsole controls if the log is output to the console or the log file,
#'   the default set by the interactive() function.
#' @return the shiny app.
#' @export    
fvsOL <- function (prjDir=NULL,runUUID=NULL,fvsBin=NULL,shiny.trace=FALSE,
                   logToConsole=interactive())                                         
{
  require(stats)
  require(utils)
  if (!is.null(prjDir) && dir.exists(prjDir)) setwd(prjDir)
  if (is.null(fvsBin) || !dir.exists(fvsBin)) 
  {
    if (dir.exists("FVSbin")) fvsBin="FVSbin" else stop("fvsBin must be set")
  }
  fvsBin <<- fvsBin
  runUUID <<- runUUID
  logToConsole <<- logToConsole
  
  cat ("FVSOnline/OnLocal function fvsOL started.\n")
  
  addResourcePath("colourpicker-lib/js", 
    system.file("www/shared/colourpicker/js", package="colourpicker"))
  addResourcePath("colourpicker-lib/css", 
    system.file("www/shared/colourpicker/css",package="colourpicker"))
  addResourcePath("colourpicker-binding", 
    system.file("srcjs",package="colourpicker"))
  addResourcePath("FVSlogo.png", 
    system.file("extdata","www/FVSlogo.png",package="fvsOL"))
  addResourcePath("USDAFS.png", 
    system.file("extdata","www/USDAFS.png",package="fvsOL"))
  addResourcePath("message-handler.js", 
    system.file("extdata","www/message-handler.js",package="fvsOL"))
  if (!dir.exists ("www")) dir.create("www")
  addResourcePath("www",file.path(".","www"))
  addResourcePath("FVS_styles.css",
    system.file("extdata","www/FVS_styles.css", package="fvsOL"))
  
  # set shiny.trace=TRUE for reactive tracing 
  options(shiny.maxRequestSize=10000*1024^2,shiny.trace=shiny.trace,
          rgl.inShiny=TRUE,rgl.useNULL=TRUE)                          
        
  data (prms)
  data (treeforms)

  cat ("Starting shinyApp.\n")
   
  shinyApp(FVSOnlineUI, FVSOnlineServer, options=list(launch.browser=TRUE))
}

                                        
FVSOnlineServer <- function(input, output, session) 
{  
cat ("FVSOnline/OnLocal interface server start\n")
  if (!dir.exists ("www")) dir.create("www")
  addResourcePath("www",file.path(".","www"))

  # set serverDate to be the release date using packageVersion
  serverDate=as.character(packageVersion("fvsOL"))
  serverDate=unlist(strsplit(serverDate,".",fixed=TRUE))
  for (i in 2:3) if (nchar(serverDate[i])==1) serverDate[i]=paste0("0",serverDate[i])
  if(!is.na(serverDate[4])){
    if (nchar(serverDate[4])==1) serverDate[4]=paste0("0",serverDate[4])
    serverDate[4]= paste0(".", serverDate[4])
  }
  serverDate=paste0(serverDate,collapse="")

cat ("ServerDate=",serverDate,"\n")

  if (!logToConsole) 
  {
    if (file.exists("FVSOnline.log")) 
    {
      unlink("FVSOnline.older.log") 
      result <- tryCatch({ 
        file.rename("FVSOnline.log","FVSOnline.older.log")
      },
      warning = function(w) {
        cat("Warning: ", w$message, "\n")
      },
      error = function(e) {
        cat("Error: ", e$message, "\n")
          showModal(shiny::modalDialog(
          title = e$message,
          tagList(p(
          "Please check installation directory permissions and ensure 
          write access is permitted to the user running the application 
          at the installation directory."),
          p("Alternatively, please reinstall the application to a 
          directory where write access is permitted.")),
          easyClose = F,
          footer = tagList(actionButton("close", "Close Window & Stop App", 
               class = "btn-danger",
               onclick = "setTimeout(function(){window.close();}, 500);"))))
        stopApp()
        return(FALSE)
      })
    }     
    #make sure the sink stack is empty
    while (sink.number()) sink()         
    sink("FVSOnline.log")
  }
                                                     
cat ("FVSOnline/OnLocal interface server start, serverDate=",serverDate,"\n")
  
  withProgress(session,
  {  
    setProgress(message = "Start up", 
                detail  = "Loading scripts and settings", value = 1)
                
    globals <- mkGlobals$new(saveOnExit=TRUE,reloadAppIsSet=0,
               gFreeze=FALSE,fvsBin=fvsBin)
    dbGlb <- new.env()
    dbGlb$tbl <- NULL
    dbGlb$navsOn <- FALSE            
    dbGlb$rowSelOn <- FALSE
    dbGlb$disprows <- 20
    modGroupGlb <- new.env()
    modGroupGlb$sid <- NULL
    modGroupGlb$stands <- NULL
    if (file.exists("projectIsLocked.txt"))  
    {
cat ("Project is locked.\n")
      output$appLocked<-renderUI(HTML(paste0('<h4 style="color:#E00000;font-weight:bold">',
        'Warning: This project may already be opened.</h4>',
        '<h5>Ensure the project is not opened in another window.</h5>',
        '<button id="clearLock" type="button" class="btn btn-default ',
        'action-button">Clear this message and proceed</button>',
        '&nbsp;&nbsp;&nbsp;&nbsp;<button id="exitNow" type="button" ',
        'class="btn btn-default action-button">Exit now</button><h3></h3>')))
    } else cat (file="projectIsLocked.txt",date(),"\n") 
    setProgress(message = "Start up",value = 2)
    
    # Start of loading project specific data
    nruns = mkFVSProjectDB()
    dbGlb$prjDB = connectFVSProjectDB()

    if (nruns==0)
    {   
      globals$fvsRun <- mkfvsRun$new(uuid=uuidgen(),title="Run 1",defMgmtID="A001")
      resetGlobals(globals,FALSE)
      storeFVSRun(dbGlb$prjDB,globals$fvsRun)
    } 
    globals$FVS_Runs = getFVSRuns(dbGlb$prjDB)
    #update a couple of list buttons with the list of tables             
    xlsxFile=system.file("extdata", "databaseDescription.xlsx", 
               package="fvsOL")
    if (file.exists(xlsxFile))
    {
      if ("OutputTableDescriptions" %in% getSheetNames(xlsxFile))
      {
        tabs = read.xlsx(xlsxFile=xlsxFile,sheet="OutputTableDescriptions")[,1]
        tableList <- sort(c("",tabs))
        metr=grep("Metric",tableList,ignore.case=TRUE)
        if (length(metr))
        {
          metric = tableList[metr]
          tableList=c(tableList[-metr],metric)
        }
        tableList = as.list(tableList)
      }
      updateSelectInput(session=session, inputId="tabDescSel2",choices=tableList,
          select=tableList[[1]])
      updateSelectInput(session=session, inputId="tabDescSel",,choices=tableList,
          select=tableList[[1]])
    }        

    setProgress(message = "Start up",
                detail  = "Loading interface elements", value = 3)
    
    serverDateOut = if (tolower(basename(dirname((package="fvsOL")))) == "r-dev")
    {
      if (isLocal()) 
        paste0('<font color="darkred"><b>Dev OnLocal</b></font> ',serverDate,"<br>") else
        paste0('<font color="darkred"><b>Development</b></font> ',serverDate,"<br>") 
    } else {
      paste0(paste0("Release date: ",serverDate, "<br>"),if (isLocal()) " Local" else " Online"," configuration<br>")
    }
    hostedByLogo=system.file("extdata","www/hostedByLogo.png",
      package="fvsOL")
cat ("hostedByLogo=",hostedByLogo," serverDateOut=",serverDateOut,"\n")
    if (file.exists(hostedByLogo)) 
    {
      addResourcePath("hostedByLogo.png",hostedByLogo) 
      serverDateOut = paste0(serverDateOut,"Hosted by<br>",'<img src="hostedByLogo.png"</img><br>') 
    }       
    output$serverDate=renderUI(HTML(serverDateOut))
    tit=NULL
    pfexists = file.exists("projectId.txt")
    if (!pfexists || (pfexists && file.size("projectId.txt") < 2))
      cat("title= ",basename(getwd()),"\n",file="projectId.txt")
    prjid = scan("projectId.txt",what="",sep="\n",quiet=TRUE)
    tit=prjid[grep("^title",prjid)]
    tit=trim(unlist(strsplit(tit,split="=",fixed=TRUE))[2])
    email=prjid[grep("^email",prjid)]
    email=trim(unlist(strsplit(email,split="=",fixed=TRUE))[2])
    tstring = paste0("Project title: <b>",tit,"</b>",
           if (length(email)) paste0("<br>Email: <b>",email,"</b>") else "",
           if (isLocal())(paste0("<br>Current Location: <b>", getwd(), "</b>")),
           "<br>Last accessed: <b>",
           format(file.info(getwd())[1,"mtime"],"%a %b %d %H:%M:%S %Y"),"</b>")
cat ("tstring=",tstring,"\n")    
    output$projectTitle = renderText(HTML(tstring))
    mkSimCnts(globals$fvsRun,sels=globals$fvsRun$selsim)
    resetGlobals(globals,TRUE)
    selChoices = globals$FVS_Runs
cat ("Setting initial selections, length(selChoices)=",length(selChoices),"\n")
    
    runUUID = if (!is.null(runUUID) && runUUID %in% selChoices) runUUID else selChoices[[1]]
    updateSelectInput(session=session, inputId="runSel", 
        choices=selChoices,selected=runUUID)
    updateTextInput(session=session, inputId="title", value=names(selChoices[1]))
    if (exists("fvsOutData")) rm (fvsOutData) 
    fvsOutData <- mkfvsOutData$new(plotSpecs=list(res=144,height=4,width=6))

    dbDrv <- dbDriver("SQLite")
    dbGlb$dbOcon <- dbConnect(dbDrv,"FVSOut.db")  
    
    loadObject(dbGlb$prjDB,"stdstkParms")  
    if (exists("stdstkParms"))
    {
      val = stdstkParms$sdskwdbh
      if (!is.na(val)) updateNumericInput(session=session,inputId="sdskwdbh",
         value=val)
      val = stdstkParms$sdskldbh
      if (!is.na(val)) updateNumericInput(session=session, inputId="sdskldbh",
         value=val)
    }
          
    # the default SpatialData is distributed with the package, install it if it
    # is not in the project directory.
    if (!file.exists("FVS_Data.db") || file.size("FVS_Data.db")==0)
    {
      frm=system.file("extdata", "FVS_Data.db.default", package="fvsOL")
      file.copy(frm,"FVS_Data.db",overwrite=TRUE)
      frm=system.file("extdata", "SpatialData.RData.default",package=sub("package:","",find('fvsOL')[1]))
      file.copy(frm,"SpatialData.RData",overwrite=TRUE)
    }
    globals$changeind <- 0
    markRunDirty(output, FALSE)
    dbGlb$dbIcon <- dbConnect(dbDrv,"FVS_Data.db")
    globals$exploring <- FALSE

    # Check for improper loaded database
    initial_check <- checkMinColumnDefs(dbGlb$dbIcon)
    if(!is.null(initial_check)) {
      cat("Detected invalid database installed")
      url <- a("Chapter 3 of the Database Users Guide", 
               href="https://www.fs.usda.gov/fmsc/ftp/fvs/docs/gtr/DBSUserGuide.pdf",
               target="_blank", rel="noopener noreferrer")
      showModal(shiny::modalDialog(
        title = "Invalid database detected",
        tagList(HTML(initial_check),p(
        "Pre-load checks have detected an installed database that does not conform to input database requirements.
        Please see input database requirements in", url),         
        p("The default training dataset will now be installed.  If a custom database is desired, 
        please load it through the Upload inventory database tab.")),
        easyClose = F,
        footer = tagList(modalButton("Acknowledge"))))

      # Disconnect from bad database
      dbDisconnect(dbGlb$dbIcon)

      # copy in default training data
      frm=system.file("extdata", "FVS_Data.db.default", package="fvsOL")
      file.copy(frm,"FVS_Data.db",overwrite=TRUE)
      frm=system.file("extdata", "SpatialData.RData.default",package=sub("package:","",find('fvsOL')[1]))
      file.copy(frm,"SpatialData.RData",overwrite=TRUE)

      # Reconnect to FVS_Data.db
      dbGlb$dbIcon <- dbConnect(dbDrv,"FVS_Data.db")
    }

    setProgress(value = NULL)          
  }, min=1, max=6)
  observe({
cat ("protocol: ", session$clientData$url_protocol, "\n",
     "hostname: ", session$clientData$url_hostname, "\n",
     "pathname: ", session$clientData$url_pathname, "\n",
     "port: ",     session$clientData$url_port,     "\n",
     "search: ",   session$clientData$url_search,   "\n")
    globals$hostname = session$clientData$url_hostname
cat("signalClosing=",input$signalClosing,"\n")
    if (!is.null(input$signalClosing) && input$signalClosing==1 &&
        globals$reloadAppIsSet == 0 && globals$hostname == "127.0.0.1") 
    {
cat ("sending closeWindow\n")
      session$sendCustomMessage(type = "closeWindow"," ")
    }
  })
  
  session$onSessionEnded(function ()
  { 
cat ("onSessionEnded, globals$saveOnExit=",globals$saveOnExit,
     " interactive()=",interactive(),"\n",
     "globals$reloadAppIsSet=",globals$reloadAppIsSet,
     " globals$hostname=",globals$hostname,"\n")
    if (exists("dbOcon",envir=dbGlb,inherit=FALSE)) try(dbDisconnect(dbGlb$dbOcon))
    if (exists("dbIcon",envir=dbGlb,inherit=FALSE)) try(dbDisconnect(dbGlb$dbIcon)) 
    if (length(globals$importItems))
    {
      if (attr(globals$importItems,"temp")) unlink(attr(globals$importItems,"dir"),recursive = TRUE)
      globals$importItems=list()
    }    

    if (globals$saveOnExit) 
    {
      saveRun(input,session)
      FVS_Runs = globals$FVS_Runs
      stdstkParms = isolate(list("sdskwdbh"=input$sdskwdbh,
                                 "sdskldbh"=input$sdskldbh)) 
      storeOrUpdateObject(dbGlb$prjDB,stdstkParms)
      prjIdTxt = "projectId.txt"
      if (file.exists(prjIdTxt))  # this is done to update the modification time.
      {
        prjid = scan(prjIdTxt,what="character",sep="\n",quiet=TRUE)
        write(file=prjIdTxt,prjid)
      }
    }
    unlink ("projectIsLocked.txt")  
    # remove excess images that may be created in Maps.
    delList = dir ("www",pattern="*png$",full.names=TRUE)
    if (length(delList)) lapply(delList,function(x) unlink(x))  
    #note: the stopApp function returns to the R process that called shinyApp()
    if (globals$reloadAppIsSet == 0) stopApp()
    globals$reloadAppIsSet == 0
  })
  
  if (isLocal()) {
    volumeResult <- tryCatch({
      volumes <-c(getVolumes2()())
      shinyFiles::shinyDirChoose(input, "Change_wd", roots= volumes, session= session, restrictions = system.file(package = "base"))
      output$VDINote <- renderUI({
      HTML(paste0("<b>VDI Users should change to an accessible network directory with persistent memory</b>"))
      })
      }, warning = function(w) {
        cat("Warning: ", w$message, "\n")
      }, error = function(e) {
        cat("Error: ", e$message, "\n")
        # Disable the Change_wd button if an error occurs while trying to access the directory structure
        setDisabled(session, "Change_wd", TRUE)
        output$VDINote <- renderUI({
        HTML(paste0("<b>An error occurred while trying to access directory structure.  This option has been disabled.</b>"))
       })
    })
  }

  ## clearLock
  observe({
    if (!is.null(input$clearLock) && input$clearLock==0)
    {
      withProgress(session, {  
        for (i in 1:5)
        {
          setProgress(message = "5 second delay  ", 
                detail  = paste(i,"of 5"), value = i)
          Sys.sleep(1)
        }
        setProgress(value = NULL)          
      }, min=1, max=10)
    }
  })
  
  ## exitNow
  observe({
    if (!is.null(input$exitNow) && input$exitNow>0)
    {
cat ("exit now\n")
      globals$saveOnExit=FALSE
      session$sendCustomMessage(type = "closeWindow"," ")
    }
  })
  ## remake the lock file.
  observe({
    if (!is.null(input$clearLock) && input$clearLock>0)
    {
      output$appLocked<-NULL
      # remake the lock file.
      cat (file="projectIsLocked.txt",date(),"\n")
    }
  })
      
  ## changeind  
  observe({
    cat ("changeind=",globals$changeind,"\n")          
    if (globals$changeind == 0){
      markRunDirty(output, FALSE)
      output$srtYr <-renderUI({
        HTML(paste0("<b>",input$startyr,"</b>"))
      })
      output$eYr <-renderUI({        
        HTML(paste0("<b>",input$endyr,"</b>"))
      })
      output$cyLen <-renderUI({
        HTML(paste0("<b>",input$cyclelen,"</b>"))
      })
      output$cyAt <-renderUI({
        HTML(paste0("<b>",input$cycleat,"</b>"))
      })
    }
  })
  
  ## Load
  observe({
    if (input$topPan == "View Outputs" && input$leftPan == "Load")
    {
      globals$selAllVars=FALSE
      globals$tableMessage=FALSE
cat ("View Outputs & Load\n")
      initTableGraphTools(globals,session,output,fvsOutData)
      output$table <- renderTable(NULL)
      tbs <- myListTables(dbGlb$dbOcon)     
      if (length(tbs) > 0 && !is.na(match("FVS_Cases",tbs)))
      {
        runsdf = dbGetQuery(dbGlb$dbOcon,
          paste0("Select RunTitle,KeywordFile from FVS_Cases group by KeywordFile ",
                 "having min(RunDateTime) order by RunDateTime desc;"))
        fvsOutData$runs = runsdf$KeywordFile
        names(fvsOutData$runs) = runsdf$RunTitle
      }
      updateSelectInput(session, "runs", choices = fvsOutData$runs, selected=0)
    }
  })

  ## The rest of the server is split by feature area into R/server*.R files.
  ## Each is a quoted expression evaluated here, in this function's environment,
  ## in the original order, so behavior is identical to the inline code.
  srvEnv <- environment()
  for (srvSection in list(srvOutputLoad, srvExplore, srvGraphs, srvStands,
       srvRuns, srvComponents, srvRunExec, srvDownloads, srvKCP, srvSVS,
       srvMaps, srvProjectTools, srvInputDB, srvInputEdit, srvMapUpload,
       srvImport, srvProjects))
    eval(srvSection, envir = srvEnv)
}
