# Components > Editor: keyword component (KCP) upload, select, new, append, save, delete, download.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvKCP <- quote({
  ## kcpUpload
  observe({  
    if (is.null(input$kcpUpload)) return()
    data=scan(file=input$kcpUpload$datapath,sep="\n",what="",quiet=TRUE)
    if (input$kcpUpload$name=="FVS_kcps.RData") data <- data[4:length(data)]
    if (length(data)==0) return()
    isolate ({
      addnl = TRUE
      if (length(globals$customCmps) == 0 && input$kcpUpload$name=="FVS_kcps.RData")
      {
        load(input$kcpUpload$datapath)
        globals$customCmps = customCmps
        addnl = FALSE
      }
      if (length(globals$customCmps) && !is.null(globals$customCmps) && input$kcpEdit !=""){
                updateSelectInput(session=session, inputId="kcpSel", selected = 0)
      }
      updateTextInput(session=session, inputId="kcpTitle", value=
                        paste("From:",input$kcpUpload$name))
      if(addnl){
        updateTextInput(session=session, inputId="kcpEdit", value=
                          paste(data,collapse="\n"))
      } else {
        updateTextInput(session=session, inputId="kcpEdit", value=globals$customCmps[1])
        save(file="FVS_kcps.RData",customCmps) 
      }
    })
  })
  
  ## kcpSel
  observe({
    if (length(input$kcpSel) == 0) return()
cat ("kcpSel called, input$kcpSel=",input$kcpSel,"\n")
    if (is.null(input$kcpSel))
    { 
      updateTextInput(session=session, inputId="kcpTitle",value="") 
      updateTextInput(session=session, inputId="kcpEdit",value="")
    } else {
      sel = match(trim(input$kcpSel),trim(names(globals$customCmps)))
      updateTextInput(session=session, inputId="kcpTitle",
        value=names(globals$customCmps)[sel])
      updateTextInput(session=session, inputId="kcpEdit",
        value=globals$customCmps[[sel]])
    }
  })
  
  ## kcpNew
  observe({  
    if (length(input$kcpNew) && input$kcpNew > 0)
    {
      isolate ({
        updateSelectInput(session=session, inputId="kcpSel", selected = 0)
        updateTextInput(session=session, inputId="kcpTitle", value="")
        updateTextInput(session=session, inputId="kcpEdit", value="")
        globals$kcpAppendConts <- list()
        globals$condKeyCntr <- 0
      })
cat ("kcpNew called, input$kcpNew=",input$kcpNew,"\n")
    }
  })
  
   ## kcpAppend
  observe({  
    if (length(input$kcpAppend) && input$kcpAppend > 0)
    {
      isolate ({
        topaste = findCmp(globals$fvsRun,input$simCont[1])
        if (is.null(topaste)) return()
        if (nchar(input$kcpTitle) == 0) 
        updateTextInput(session=session, inputId="kcpTitle", 
          value=topaste$title)
        updateTextInput(session=session, inputId="kcpEdit", value=
          paste0(input$kcpEdit,"* ",topaste$title,"\n",topaste$kwds,"\n"))
        session$sendCustomMessage(type="refocus", "kcpEdit")
        indx <- match(input$simCont,globals$fvsRun$simcnts)
        if (!length(globals$kcpAppendConts)){
          globals$kcpAppendConts[1] <- globals$fvsRun$simcnts[indx]
          names(globals$kcpAppendConts)[1] <- names(globals$fvsRun$simcnts)[indx]
        }else
          globals$kcpAppendConts[(length(globals$kcpAppendConts)+1)] <- globals$fvsRun$simcnts[indx]
          names(globals$kcpAppendConts)[length(globals$kcpAppendConts)] <- names(globals$fvsRun$simcnts)[indx]
          # first conditional added
        if (length(grep("^-> Cnd",names(globals$kcpAppendConts[length(globals$kcpAppendConts)]))) &&
            (!length(globals$opencond) || globals$opencond==0)){
          globals$opencond <- 1
          globals$condKeyCntr <- 0
        }
        # first conditional keyword added
        if (length(grep("^--> Kwd",names(globals$kcpAppendConts[length(globals$kcpAppendConts)])))){
          globals$condKeyCntr <- globals$condKeyCntr + 1
          }
        if (length(grep("^-> Cnd",names(globals$kcpAppendConts[length(globals$kcpAppendConts)]))) &&
            (length(globals$condKeyCntr) && globals$condKeyCntr > 0)){
          globals$opencond <- 0
          globals$condKeyCntr <- 0
          updateTextInput(session=session, inputId="kcpEdit", value=
            paste0(input$kcpEdit,"ENDIF\n","* ",topaste$title,"\n",topaste$kwds,"\n"))
          }
        if (length(grep("^-> Kwd",names(globals$kcpAppendConts[length(globals$kcpAppendConts)])))&&
            (length(globals$condKeyCntr) && globals$condKeyCntr > 0)){
          globals$opencond <- 0
          globals$condKeyCntr <- 0
          updateTextInput(session=session, inputId="kcpEdit", value=
            paste0(input$kcpEdit,"ENDIF\n","* ",topaste$title,"\n",topaste$kwds,"\n"))
        }  
      })
    }
  })
  
  ## kcpSaveInRun
  observeEvent(input$kcpSaveInRun, {
    cat ("kcpSaveInRun\n")
    if(!length(input$simCont)) {
      cat("No Active Stands\n")
      showModal(shiny::modalDialog(title = "Cannot Perform Operation", 
                "'Run Contents' must contain at least one stand or group to perform this operation "))
      return()
    }
    if (nchar(input$kcpTitle) == 0) {
      newTit = paste0("Editor: Component ",length(globals$customCmps)+1) 
      updateTextInput(session=session, inputId="kcpTitle", value=newTit)
    } else newTit = paste0("Editor: ",trim(input$kcpTitle))
    newcmp = mkfvsCmp(uuid=uuidgen(),atag="k",kwds=input$kcpEdit,exten="base",
                      variant=globals$activeVariants[1],kwdName="freeEdit",
                      title=newTit,reopn=character(0))
    # find the attachment point. 
    sel = input$simCont[[1]]
    grp = findIdx(globals$fvsRun$grps,sel)
    std = if (is.null(grp)) findIdx(globals$fvsRun$stands,sel) else NULL
    cmp = NULL
    if (is.null(grp) && is.null(std)) {
      for (grp in 1:length(globals$fvsRun$grps)) {
        cmp = findIdx(globals$fvsRun$grps[[grp]]$cmps,sel)
        if (!is.null(cmp)) break
      }
      if (is.null(cmp)) grp = NULL
      if (is.null(grp)) for (std in 1:length(globals$fvsRun$stands)) {
        cmp = findIdx(globals$fvsRun$stands[[std]]$cmps,sel)
        if (!is.null(cmp)) break
      }
    }
    # attach the new component
    if (is.null(grp)) {
      globals$fvsRun$stands[[std]]$cmps <- if (is.null(cmp))  
      append(globals$fvsRun$stands[[std]]$cmps, newcmp) else 
              append(globals$fvsRun$stands[[std]]$cmps, newcmp, after=cmp)
    } else { 
      globals$fvsRun$grps[[grp]]$cmps <- if (is.null(cmp))  
      append(globals$fvsRun$grps[[grp]]$cmps, newcmp) else
      append(globals$fvsRun$grps[[grp]]$cmps, newcmp, after=cmp)
    }
    mkSimCnts(globals$fvsRun,sels=input$simCont[[1]],justGrps=input$simContType=="Just groups")
    updateSelectInput(session=session, inputId="simCont", 
                      choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
    globals$changeind <- 1
    output$contChange <- renderText(HTML("<b>*Run*</b>"))
    globals$schedBoxPkey <- character(0)
  })

  ## kcpSaveCmps
  observe({
    if (length(input$kcpSaveCmps) && input$kcpSaveCmps > 0)
    {
      isolate ({
cat ("kcpSaveCmps called, kcpTitle=",input$kcpTitle," isnull=",
is.null(input$kcpTitle),"\n")
        if (nchar(input$kcpTitle) == 0)
        {
          newTit = paste0("Component ",length(globals$customCmps)+1) 
          updateTextInput(session=session, inputId="kcpTitle", value=newTit)
        } else newTit = trim(input$kcpTitle)
        globals$customCmps[[newTit]] = input$kcpEdit
        customCmps = globals$customCmps
        skip1 <- strsplit(as.character(customCmps),"\n")[[1]][length(strsplit(as.character(customCmps),"\n")[[1]])]
        skip <- length(grep("ENDIF", toupper(skip1)))
        if(length(grep("^--> Kwd",names(globals$kcpAppendConts[length(globals$kcpAppendConts)]))) && !skip)
        {
          updateTextInput(session=session, inputId="kcpEdit", value=
            paste0(customCmps,"EndIf\n"))
          customCmps <-as.list(paste0(customCmps,"EndIf\n"))
          names(customCmps) <- names(globals$customCmps)
          globals$customCmps = customCmps
        }
        storeOrUpdateObject(dbGlb$prjDB,customCmps)
        updateSelectInput(session=session, inputId="kcpSel",
           choices=names(globals$customCmps),
           selected=newTit)
        mkSimCnts(globals$fvsRun,sels=input$simCont[[1]],justGrps=input$simContType=="Just groups")
        updateSelectInput(session=session, inputId="simCont",
           choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
      })
    }
  })

  ## kcpDelete
  observe({  
    if (length(input$kcpDelete) && input$kcpDelete > 0)
    {
      isolate ({
cat ("kcpDelete, input$kcpSel=",input$kcpSel,"\n")
        if (length(globals$customCmps)) 
        {
          if(is.null(input$kcpSel)){
  
            updateSelectInput(session=session,inputId="kcpSel",choices=as.list(names(globals$customCmps)),
                      selected=names(globals$customCmps)[1])
            return()
          }
          if(length(globals$customCmps)==1){
           customCmps=NULL
            removeObject(dbGlb$prjDB,"customCmps")
            globals$customCmps <- list()
            updateSelectInput(session=session, inputId="kcpSel", choices=list())
            updateTextInput(session=session, inputId="kcpTitle", value="")
            updateTextInput(session=session, inputId="kcpEdit", value="") 
            return()
          }
          sel = na.omit(match(trim(input$kcpSel),trim(names(globals$customCmps))))
          if (length(sel) && input$kcpSel==input$kcpTitle) globals$customCmps[[sel[1]]] = NULL 
          customCmps = globals$customCmps
          storeOrUpdateObject(dbGlb$prjDB,customCmps)
          updateSelectInput(session=session, inputId="kcpSel", choices=names(customCmps))
          if(input$kcpSel!=input$kcpTitle){
            sel = match(trim(input$kcpSel),trim(names(globals$customCmps)))
            updateTextInput(session=session, inputId="kcpTitle",
                            value=names(globals$customCmps)[sel])
            updateTextInput(session=session, inputId="kcpEdit",
                            value=globals$customCmps[[sel]])
          }
        } else {
          customCmps=NULL
          removeObject(dbGlb$prjDB,"customCmps")
          globals$customCmps <- list()
          updateSelectInput(session=session, inputId="kcpSel", choices=list())
          updateTextInput(session=session, inputId="kcpTitle", value="")
          updateTextInput(session=session, inputId="kcpEdit", value="")
        }
      })
    }
  })
                                                                     
  ## Download KCP
  output$kcpDownload <- downloadHandler(filename=function ()
      paste0(input$kcpTitle,".kcp"),
      content=function (tf = tempfile())
      {     
        write(input$kcpEdit,tf)
      }, contentType="text")

  observe({
    if (input$topPan == "Visualize")
    {
cat ("Visualize hit\n")
      allRuns = globals$FVS_Runs
      runChoices = list()
      for (has in names(allRuns))
      {
        fn = paste0(allRuns[[has]],"_index.svs")
        if (file.exists(fn)) runChoices[[has]] = allRuns[[has]] else
        {
          fn = file.path(paste0(allRuns[[has]],"-set1"),
               paste0(allRuns[[has]],"_index.svs"))
          if (file.exists(fn)) runChoices[[has]] = allRuns[[has]]
        }
      }
      updateSelectInput(session=session, inputId="SVSRunList1", 
        choices=runChoices,selected=0)
      updateSelectInput(session=session, inputId="SVSRunList2", 
        choices=runChoices,selected=0)   
      updateSelectInput(session=session, inputId="SVSImgList1", choices=list(),
        selected=0) 
      updateSelectInput(session=session, inputId="SVSImgList2", choices=list(),
        selected=0)
      session$sendCustomMessage(type="jsCode",
        list(code= "$('#SVSstaIm1').hide();$('#SVSdynIm1').hide();"))
      output$SVSqImg1Pers = renderUI(NULL)
      output$SVSqImg1Top  = renderUI(NULL)
      output$SVSqImg1Side = renderUI(NULL)
      output$SVSImg1      = renderRglwidget(NULL)
      session$sendCustomMessage(type="jsCode",
        list(code= "$('#SVSstaIm2').hide();$('#SVSdynIm2').hide();"))
      output$SVSqImg2Pers = renderUI(NULL)
      output$SVSqImg2Top  = renderUI(NULL)
      output$SVSqImg2Side = renderUI(NULL)
      output$SVSImg2      = renderRglwidget(NULL)
    }
  })

})
