# Simulate > Time and Run: time settings, run wait/background, Save and Run, background kill, refresh timer.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvRunExec <- quote({
  ## time--start year
  observe({
    if(!length(input$simCont) || !length(globals$fvsRun$startyr) || 
                           globals$fvsRun$startyr==input$startyr) return()
    globals$fvsRun$startyr  <- input$startyr
    globals$changeind <- 1
    output$contChange <- renderText(HTML("<b>*Run*</b>"))
  })
  ## time--end year
  observe({
    if(!length(input$simCont) || !length(globals$fvsRun$endyr) || 
                                globals$fvsRun$endyr==input$endyr) return()
    globals$fvsRun$endyr <- input$endyr
    globals$changeind <- 1
    output$contChange <- renderText(HTML("<b>*Run*</b>"))
  })
  ## time--cycle length
  observe({
    if(!length(input$simCont) || !length(globals$fvsRun$cyclelen) || globals$fvsRun$cyclelen==input$cyclelen) return()
    globals$fvsRun$cyclelen <- input$cyclelen
    globals$changeind <- 1
    output$contChange <- renderText(HTML("<b>*Run*</b>"))
  }) 
  ## time--cycle breaks
  observe({
    if(!length(input$simCont) || (length(globals$fvsRun$cycleat) && 
       length(input$cycleat) && globals$fvsRun$cycleat==input$cycleat)) return()
    globals$fvsRun$cycleat  <- input$cycleat
    globals$changeind <- 1
    output$contChange <- renderText(HTML("<b>*Run*</b>"))
  })
  
  
  ## runwaitback
  observe(
    output$bkgCpuPrompt <- renderUI(if (input$runwaitback=="Wait for run") NULL else
      list(myInlineNumericInput("bkgNcpu","Background processes",
        value=as.character(max(1,floor(detectCores()/2))), min="1", 
        max=as.character(detectCores()), step="1",size=10,labelstyle="font-weight:normal;"),
        HTML(paste0("<p><small>A background run is divided into sets of ",
         "separate processes that are run at once. The max ",
         "number of processes is limited to ",detectCores(),", the number of CPUs ",
         "cores in this computer.</small></p>")))
  ))

  


  ## Save and Run
  observeEvent(input$saveandrun, {
    if(!length(input$simCont))
    {
      cat("No Active Stands\n")
      showModal(shiny::modalDialog(title = "Cannot Perform Operation", 
                                   "'Run Contents' must contain at least one stand or group to perform this operation "))
      return()
    }
      cat("Nulling uiRunPlot at Save and Run\n")
      output$uiRunPlot <- output$uiErrorScan <- renderUI(NULL)
      globals$currentQuickPlot = character(0) 
      # timing checks.
      thisYr = as.numeric(format(Sys.time(), "%Y"))
      # First check to see if required start year, end year, or cycle length fields are blank.
      if (input$startyr =="") {
        session$sendCustomMessage(type = "infomessage",
                                  message = paste0("The common starting year is blank."))
        updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
        return()
      }
      if (input$endyr =="") {
        session$sendCustomMessage(type = "infomessage",
                                  message = paste0("The common ending year is blank."))
        updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
        return()
      }
      if (input$cyclelen =="") {
        session$sendCustomMessage(type = "infomessage",
                                  message = paste0("The growth and reporting interval is blank."))
        updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
        return()
      }
      # other start year checks
      for(i in 1:length(globals$fvsRun$stands)){
        if (((input$startyr !="" && ((as.numeric(input$startyr)) > (thisYr + 50))) ||
             ((input$startyr !="") && nchar(input$startyr) > 4))){
          session$sendCustomMessage(type = "infomessage",
                                    message = paste0("The common starting year of ",input$startyr,
                                                     " is more than 50 years from the current year of ", thisYr))
          updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
          return()
        }
        if ((input$startyr !="") && (input$startyr < globals$fvsRun$stands[[i]]$invyr)){
          session$sendCustomMessage(type = "infomessage",
                                    message = paste0("The common starting year of ",input$startyr,
                                                     " is before the inventory year of ", globals$fvsRun$stands[[i]]$invyr))
          updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
          return()
        }
      }
      # other end year checks
      for(i in 1:length(globals$fvsRun$stands)){
        if (((input$endyr !="" && ((as.numeric(input$endyr)) > 
                                   (as.numeric(input$cyclelen) * 40 + as.numeric(input$startyr)))) ||
             ((input$endyr !="") && nchar(input$endyr) > 4))){
          session$sendCustomMessage(type = "infomessage",
                                    message = paste0("The common ending year of ", input$endyr,
                                                     " is more than 40 growth cycles from the current year of ", thisYr))
          updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
          return()
        }
        if ((input$endyr !="") && ((as.numeric(input$endyr) < 
                                    as.numeric(globals$fvsRun$stands[[i]]$invyr)))){
          session$sendCustomMessage(type = "infomessage",
                                    message = paste0("The common ending year of ", input$endyr,
                                                     " is before the inventory year of ", globals$fvsRun$stands[[i]]$invyr))
          updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
          return()
        }
      }
      # other cycle length check
      if (((input$cyclelen !="" && ((as.numeric(input$cyclelen)) > 50))) ||
          ((input$cyclelen !="") && nchar(input$cyclelen) > 4)){
        session$sendCustomMessage(type = "infomessage",
                                  message = paste0("The growth interval of ", input$cyclelen,
                                                   " years is greater than the maximum 50 years"))
        updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
        return()
      }
      baseCycles = seq(as.numeric(globals$fvsRun$startyr),as.numeric(globals$fvsRun$endyr),
                       as.numeric(globals$fvsRun$cyclelen))
      cycleat = scan(text=gsub(";"," ",gsub(","," ",globals$fvsRun$cycleat)),
                     what=0,quiet=TRUE)
      # Cycle break checks
      if (length(cycleat)){
        for(i in 1:length(globals$fvsRun$stands)){
          for(j in 1:length(cycleat)){
            if ((cycleat[j] > (thisYr + 400))){
              session$sendCustomMessage(type = "infomessage",
                                        message = paste0("The additional reporting year of ", cycleat[j],
                                                         " is more than 400 years from the current year of", thisYr))
              updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
              return()
            }
            if ((cycleat[j] < as.numeric(globals$fvsRun$stands[[i]]$invyr))){
              session$sendCustomMessage(type = "infomessage",
                                        message = paste0("The additional reporting year of ", cycleat[j],
                                                         " is before the inventory year of ", globals$fvsRun$stands[[i]]$invyr))
              updateTabsetPanel(session=session,inputId="rightPan",selected="Time")
              return()
            }
          }
        }
      }  
      progress <- shiny::Progress$new(session,min=1,
                                      max=length(globals$fvsRun$stands)+10)
      progress$set(message = "Run preparation: ", 
                   detail = "Saving FVS Run", value = 1)
      saveRun(input,session)
      updateSelectInput(session=session, inputId="runSel", 
                        choices=globals$FVS_Runs,selected=globals$FVS_Runs[[1]]) 
      
      killIfRunning(globals$fvsRun$uuid)
      # if rerunning a run that is currently selected in the "View Outputs",
      # then clear those tools.
      if (globals$fvsRun$uuid %in% input$runs) initTableGraphTools(globals,session,output,fvsOutData)
      progress$set(message = "Run preparation: ", 
                   detail = "Deleting old ouputs", value = 2)         
      removeFVSRunFiles(globals$fvsRun$uuid)
      updateSelectInput(session=session, inputId="bkgRuns", 
                        choices=getBkgRunList(),selected=0)
      progress$set(message = "Run preparation: ", 
                   detail = "Write .key file and prepare program", value = 3)
      cat ("runwaitback=",input$runwaitback,"\n")
      
      if (input$runwaitback!="Wait for run")
      {
        ncpu=suppressWarnings(if(is.null(input$bkgNcpu)) NA else 
          as.numeric(input$bkgNcpu))
        if (is.na(ncpu)) ncpu=1
        progress$set(message = "Run preparation: ", 
                     detail = "Starting backgrouind run", value = length(globals$fvsRun$stands)+10)
        updateTextInput(session=session, inputId="bkgNcpu",value=as.character(ncpu)) 
        msg=extnSimulateRun(runUUID=globals$fvsRun$uuid,fvsBin=globals$fvsBin,
                            ncpu=ncpu)
        if(msg=="wrong active database"){
          cat ("Run data query returned no data to run.\n")  
          progress$set(message = "Error: Keyword file was not created. Try re-importing
                     the inventory database associated with this run.",
                       detail = msg, value = 3) 
          Sys.sleep(5)
          progress$close()
          return()  
        }
        refreshTimmer <- reactiveTimer(500,session=session)
        progress$close()
        output$contChange <- renderUI("Run")   
        return()
      }         
      msg=writeKeyFile(globals,dbGlb$dbIcon)
      fc = paste0(globals$fvsRun$uuid,".key")
      if (!file.exists(fc))
      {
        if(msg=="Wrong active database."){
          cat ("Wrong active database.\n")  
          progress$set(message = "Error: Wrong active database. Try re-importing
                     the inventory database associated with this run.",
                       detail = NA, value = 3) 
          return()  
        } else {
          cat ("keyword file was not created.\n")
          progress$set(message = "Error: Keyword file was not created.",detail = msg, value = 3)
          Sys.sleep(5)
          progress$close()
          return()
        }
      }
      if(msg=="Stand not found in FVS_ClimAttrs table."){
        cat ("Stand not found in FVS_ClimAttrs table.\n")  
        progress$set(message = "Error: Stand(s) not found in the existing FVS_ClimAttrs table. Check climate data 
                     to ensure all stands in the run are included.",
                     detail = NA, value = 3) 
        return()
      }
      if(msg=="No Climate attributes data found."){
        cat ("No climate attributes data found.\n")  
        progress$set(message = "Error: No climate attributes data found. Make sure to either upload it using 
                     the Upload Climate-FVS data menu, or check the file name on the ClimData keyword.",
                     detail = NA, value = 3) 
        return()
      }
      if (!dir.exists(globals$fvsBin)) 
      {
        progress$set(message = paste0("Error: ",globals$fvsBin," does not exist."),
                     detail = "", value = 3) 
        Sys.sleep(5)
        progress$close()
        return()
      }
      dir.create(globals$fvsRun$uuid)
      fvschild = makePSOCKcluster(1)
      #on exit of the reactive context
      on.exit({          
        progress$close()
        cat ("exiting, stop fvschild\n")          
        try(stopCluster(fvschild))
        Sys.sleep(0.3)
        unlink(paste0(globals$fvsRun$uuid,".db"))
        unlink(paste0(globals$fvsRun$uuid,"_genrpt.txt"))
      }) 
      clusterEvalQ(fvschild,library(rFVS))
      cmd = paste0("clusterEvalQ(fvschild,fvsLoad('",
                   globals$fvsRun$FVSpgm,"',bin='",globals$fvsBin,"'))")
      cat ("load FVSpgm cmd=",cmd,"\n")          
      rtn = try(eval(parse(text=cmd)))
      if (inherits(rtn,"try-error")) return()          
      # if not using the default run script, load the one requested.    
      if (globals$fvsRun$runScript != "fvsRun")
      {
        rsFn = paste0("customRun_",globals$fvsRun$runScript,".R")
        if (!file.exists(rsFn)) rsFn = system.file("extdata", rsFn,
                                                   package="fvsOL")
        if (!file.exists(rsFn)) return()
        cmd = paste0("clusterEvalQ(fvschild,source('",rsFn,"'))")
        cat ("run script load cmd=",cmd,"\n")
        rtn = try(eval(parse(text=cmd)))
        if (inherits(rtn,"try-error")) return()
        runOps <- if (is.null(globals$fvsRun$uiCustomRunOps)) list() else 
          globals$fvsRun$uiCustomRunOps
        rtn = try(clusterExport(fvschild,list("runOps"),envir=environment())) 
        if (inherits(rtn,"try-error")) return()
      }
      foo = paste0(globals$fvsRun$uuid,".key")
      cmd = paste0("clusterEvalQ(fvschild,",'fvsSetCmdLine("--keywordfile=',foo,'"))')
      cat ("load run cmd=",cmd,"\n")
      rtn = try(eval(parse(text=cmd))) 
      if (inherits(rtn,"try-error")) return()
      cat ("at for start\n") 
      allSum = list()
      for (i in 1:length(globals$fvsRun$stands))
      {
        detail = paste0("Stand ",i," StandId=",globals$fvsRun$stands[[i]][["sid"]])          
        progress$set(message = "FVS running", detail = detail, value = i+4) 
        rtn = if (globals$fvsRun$runScript != "fvsRun")
        {
          cmd = paste0("clusterEvalQ(fvschild,",globals$fvsRun$runScript,"(runOps))")
          cat ("custom run cmd=",cmd,"\n")              
          try(eval(parse(text=cmd)))
        } else {
          cat ("running normal run cmd\n")
          try(clusterEvalQ(fvschild,fvsRun()))
        }
        cat ("rtn class for stand i=",i," is ",class(rtn),"\n")
        if (inherits(rtn,"try-error"))
        { 
          cat ("run try error\n")
          return()
        }
        rtn = rtn[[1]]
        if (rtn != 0) break          
        ids = try(clusterEvalQ(fvschild,fvsGetStandIDs()))
        if (inherits(ids,"try-error")) break
        ids = ids[[1]]
        rn = paste0("SId=",ids["standid"],";MId=",ids["mgmtid"])
        cat ("rn=",rn,"\n")
        rtn = try(clusterEvalQ(fvschild,fvsSetupSummary(fvsGetSummary())))
        if (inherits(rtn,"try-error")) break
        allSum[[i]] = rtn[[1]]
        names(allSum)[i] = rn
      }
      cat ("rtn,class=",class(rtn),"\n")
      try(clusterEvalQ(fvschild,fvsRun()))        
      progress$set(message = "Scanning output for errors", detail = "", 
                   value = length(globals$fvsRun$stands)+4)
      outf=paste0(globals$fvsRun$uuid,".out")
      errScan = try(extnErrorScan(outf))
      if (inherits(errScan,"try-error")) errScan = 
        "Error scan failed likely due to invalid multibyte strings in output"
      output$uiErrorScan <- renderUI(list(
        h6(paste0("Run made with: ",globals$fvsRun$FVSpgm)," ",attr(errScan,"pgmRV")),
        h5("FVS error scan: "),
        tags$style(type="text/css", paste0("#errorScan { overflow:auto; ",
                                           "height:150px; font-family:monospace; font-size:90%;}")),
        HTML(paste(errScan,"<br>"))))
      if (length(dir(globals$fvsRun$uuid)) == 0) 
        unlink(globals$fvsRun$uuid,recursive = TRUE, force = TRUE)
      progress$set(message = if (length(allSum) == length(globals$fvsRun$stands))
        "FVS finished" else
          "FVS run failed", detail = "", 
        value = length(globals$fvsRun$stands)+5)
      Sys.sleep(.1)       
      cat ("length(allSum)=",length(allSum),"\n")
      if (length(allSum) == 0) {Sys.sleep(.4); return()}
      progress$set(message = "FVS finished",  
                   detail = "Merging output to master database",
                   value = length(globals$fvsRun$stands)+6)
      res = addNewRun2DB(globals$fvsRun$uuid,dbGlb$dbOcon)
      unlink(paste0(globals$fvsRun$uuid,".db"))
      unlink(paste0(globals$fvsRun$uuid,"_genrpt.txt"))
      progress$set(message = "Building plot", detail = "", 
                   value = length(globals$fvsRun$stands)+6)
      modn = names(allSum)
      toch = unique(modn)
      if (length(toch) != length(modn)) 
      {
        for (chg in toch)
        {
          chrr = chg == modn
          if ((nch <- sum(chrr)) < 2) next
          chg = unlist(strsplit(chg,";"))
          modn[chrr] = sprintf("%s r%03i;%s",chg[1],1:nch,chg[2])
        }
        names(allSum) = modn
      }
      X <- Y <- Stand <- NULL
      unitConv = if (substring(globals$fvsRun$FVSpgm,4) %in% c("bc","on"))
        0.0699713 else 1    # note FT3pACRtoM3pHA = 0.0699713
      for (i in 1:length(allSum)) 
      { 
        X = c(X,allSum[[i]][,"Year"])
        Y = c(Y,allSum[[i]][,"TCuFt"]) * unitConv
        ltag = gsub(x=names(allSum)[i],pattern=";.*$",replacement="")
        ltag = gsub(x=ltag,pattern="^SId=",replacement="")
        Stand=c(Stand,c(rep(ltag,nrow(allSum[[i]]))))
      }
      toplot = data.frame(X = X, Y=Y, Stand=as.factor(Stand))
      toMany = nlevels(toplot$Stand) > 9
      colors = autorecycle(cbbPalette,nlevels(toplot$Stand))
      yUnits = expression(Total~(ft^{3}/a))
      if (substring(globals$fvsRun$FVSpgm,4) %in% c("bc","on"))
        yUnits = expression(Total~(m^{3}/ha))
      plt = ggplot(data = toplot) + scale_colour_manual(values=colors) +
        geom_line (aes(x=X,y=Y,color=Stand)) +
        labs(x="Year", y=yUnits) + 
        theme(text = element_text(size=6), 
              legend.position=if (toMany) "none" else "right",
              axis.text = element_text(color="black")) 
      width=if (toMany) 3 else 4
      height=2.5
      CairoPNG("www/quick.png", width=width, height=height, units="in", res=150)
      print(plt)
      dev.off()
      output$uiRunPlot <- renderUI(
        plotOutput("runPlot",width="100%",height=paste0((height+1)*144,"px")))
      output$runPlot <- renderImage(list(src="www/quick.png", width=(width+1)*144, 
                                         height=(height+1)*144), deleteFile=TRUE)
      cat ("setting currentQuickPlot, input$runSel=",input$runSel,"\n")
      globals$currentQuickPlot = globals$fvsRun$uuid
      globals$changeind <- 0
      output$contChange <- renderUI("Run")
      updateTabsetPanel(session=session, inputId="leftPan",selected="Load")
  })

## bkgKill  
  observe({  
    if (input$bkgKill == 0) return()
    isolate ({
      if (!is.null(input$bkgRuns))
      {
        fn = fs::path_sanitize(input$bkgRuns)
        if (file.exists(fn)) {
          uuid=sub(".pidStatus","",input$bkgRuns)
          uuid = fs::path_sanitize(uuid)
          killIfRunning(uuid)
          removeFVSRunFiles(uuid)
        } else {
          showModal(shiny::modalDialog(title = "Unable to process request", 
          "Background run file does not exist. It may have been deleted or moved.",  
          "Please try your run again."))
          return()
        }
      }
      updateSelectInput(session=session, inputId="bkgRuns", 
                      choices=getBkgRunList(),selected=0)
    })
  })
  
## refreshTimmer
  refreshTimmer <- reactiveTimer(2000,session=session)
  observe({  
    if (refreshTimmer()) 
    { 
      # 2000 millisceconds = 2 seconds
      choices=getBkgRunList()
      refreshTimmer <- if (length(choices)==0) reactiveTimer(Inf,session=session) else 
                                               reactiveTimer(2000,session=session)       
      updateSelectInput(session=session, inputId="bkgRuns", 
                        choices=getBkgRunList(),selected=isolate(input$bkgRuns))
    }
  })
})
