# Simulate > Components: edit/cut/copy/paste, freeform editor, component palettes, thinning windows, scheduling, save component in run.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvComponents <- quote({
  ## Edit  
  observe({
    if (input$editSel == 0) return() 
    isolate ({
      output$titleBuild <-output$condBuild <- output$cmdBuild <- output$cmdBuildDesc <- output$fvsFuncRender <- renderUI (NULL)   
      globals$currentEditCmp <- globals$NULLfvsCmp
      if (length(input$simCont) == 0) return()
      toed = input$simCont[1]
      # find component
      cmp = findCmp(globals$fvsRun,toed)
      if (is.null(cmp)) return()
      globals$currentEditCmp = cmp
      if (length(cmp$kwdName) == 0) cmp$kwdName="freeEdit"
cat ("Edit, cmp$kwdName=",cmp$kwdName,"toed=",toed,"\n")
      eltList = NULL
      if (cmp$kwdName=="freeEdit")
      {
        eltList <- mkFreeformEltList(globals,input,prms,cmp$title,cmp$kwds)
        rtn <- if (cmp$atag=="c") list(h5(),
                 div(myInlineTextInput("cmdTitle","Condition title ", 
                 value=globals$currentEditCmp$title,size=40)),h5()) else
                 list(h5(),div(myInlineTextInput("cmdTitle","Component title ", 
                 value=globals$currentEditCmp$title,size=40)),h5())
        if(length(globals$currentEditCmp$title)) rtn <- append(rtn,list(
              h4(paste0('Edit: "',globals$currentEditCmp$title),'"')),after=0)  
        output$titleBuild <- renderUI(rtn)
      } else
      {
        if (length(cmp$kwdName) && nchar(cmp$kwdName))
        { 
          if (exists(cmp$kwdName)) #if a function exists, use it.
          {
            eltList <- eval(parse(text=paste0(cmp$kwdName,
              "(globals$currentEditCmp$title,prms,globals,input,output)")))
            if (is.null(eltList)) return(NULL)
            eltList <- eltList[[1]]
            rtn <- list(h5(),div(myInlineTextInput("cmdTitle","Component title ", 
                                 value=globals$currentEditCmp$title,size=40)),h5())
            if(length(globals$currentEditCmp$title)) rtn <- append(rtn,list(
                  h4(paste0('Edit: "',globals$currentEditCmp$title),'"')),after=0)  
            output$titleBuild <- renderUI(rtn)
          } else {
            pk <- match (cmp$kwdName,names(prms))
            if (!is.na(pk)) # FreeForm Edit, used if pk does not match a parms.
            {        # Launch general purpose builder when pk matches a parms.        
              pkeys <- prms[[pk]]
              eltList <- mkeltList(pkeys,prms,globals,input,output,
                         cmp$atag=="c",FALSE,globals$currentEditCmp$title)     
            }
          }
        }
      }   
      if (is.null(eltList))
      {
        rtn <- list(h5(),div(myInlineTextInput("cmdTitle","Component title ", 
                             value=globals$currentEditCmp$title,size=40)),h5())
        rtn <- append(rtn,list(
        h4(paste0('Edit: "',globals$currentEditCmp$title),'"')),after=0)  
        output$titleBuild <- renderUI(rtn)
        eltList <- mkFreeformEltList(globals,input,prms,globals$currentEditCmp$title,
                            globals$currentEditCmp$kwds)
      }
      eltList <- append(eltList,list(
           tags$style(type="text/css", "#cmdCancel {color:#E00000; font-weight: bold;}"),
           actionButton("cmdCancel","Cancel"),
           tags$style(type="text/css", "#cmdSaveInRun {color:green;}"),
           actionButton("cmdSaveInRun","Save in run")))
      output$cmdBuild <- renderUI(eltList)
      output$cmdBuildDesc <- output$fvsFuncRender <- renderUI (NULL)
      if (input$rightPan != "Components") {
        updateTabsetPanel(session=session,
        inputId="rightPan",selected="Components")
        updateSelectInput(session=session,
        inputId="compTabSet", selected="Management")
      }
      if (input$rightPan == "Components" && input$compTabSet !="Management") {
        updateSelectInput(session=session,
        inputId="compTabSet", selected="Management")
        output$cmdBuildDesc <- output$fvsFuncRender <- renderUI (NULL)
      }
      for (id in c("addMgmtCats","addMgmtCmps","addModCats","addModCmps",
                   "addEvCmps","addKeyExt","addKeyWds"))
          updateSelectInput(session=session, inputId=id, selected=0)
    })
  })
  # install callback functionality for the textarea that has the focus 
  # to get start and end selection poistions.
    observe({
    if (length(input$freeEdit)) 
    {
      session$sendCustomMessage(type="getStartEnd", "freeEdit")
    }
  })
  ## focusedElement
  observe({
    if (length(input$focusedElement) && 
              input$focusedElement %in% c("freeEdit","condDisp"))
      session$sendCustomMessage(type="getStartEnd", input$focusedElement)    
  })
  ## freeSpecies
  observe({
    if (length(input$freeSpecies) && nchar(input$freeSpecies)) 
      insertStringIntoFocusedTextarea(input,input$focusedElement,input$freeSpecies)
  })
  ## freeVars
  observe({
    if (length(input$freeVars) && nchar(input$freeVars)) 
      insertStringIntoFocusedTextarea(input,input$focusedElement,input$freeVars)
  })
  ## freeOps
  observe({
    if (length(input$freeOps) && nchar(input$freeOps))
      insertStringIntoFocusedTextarea(input,input$focusedElement,input$freeOps)
  })  
  ## freeFuncs
  observe({
    if (length(input$freeFuncs) && nchar(input$freeFuncs) && input$freeFuncs != " ") 
    isolate({
      pkeys = prms[[paste0("evmon.function.",input$freeFuncs)]]
      if (is.null(pkeys)) insertStringIntoFocusedTextarea(input,
          input$focusedElement,paste0(input$freeFuncs,"()")) else 
      {
        eltList <- mkeltList(pkeys,prms,globals,globals$fvsRun,funcflag=TRUE)
        eltList <- append(eltList,list(
          actionButton("fvsFuncInsert","Insert function"),
          actionButton("fvsFuncCancel","Cancel function"),h6()))
        output$fvsFuncRender <- renderUI(eltList)
      }
    })
  })  
  ## fvsFuncCancel
  observe({  
    if (length(input$fvsFuncCancel) && input$fvsFuncCancel) 
    {
      output$fvsFuncRender <- renderUI (NULL)
      updateSelectInput(session=session, inputId="freeFuncs",selected=1)
    }
  })
  ## fvsFuncInsert
  observe({
    if (length(input$fvsFuncInsert) && input$fvsFuncInsert)
    isolate({
      pkeys = prms[[paste0("evmon.function.",input$freeFuncs)]]
      ansFrm = getPstring(pkeys,"answerForm",globals$activeVariants[1])
      reopn = NULL
      fn = 0
      repeat
      {
        fn = fn+1
        pkey = paste0("f",fn)
        fps = getPstring(pkeys,pkey,globals$activeVariants[1])
        if (is.null(fps)) break
        pkey = paste0("func.f",fn)
        instr = input[[pkey]]
        reopn = c(reopn,as.character(if (is.null(instr)) " " else instr))
        names(reopn)[fn] = pkey
      }
      string = mkKeyWrd(ansFrm,reopn,pkeys,globals$activeVariants[1])   
      insertStringIntoFocusedTextarea(input,input$focusedElement,string)
    })
  }) 

  ## insertStringIntoFocusedTextarea
  insertStringIntoFocusedTextarea <- function(input,textarea,string)
  {
    isolate({
      if (is.null(textarea)) textarea="freeEdit"
      if (!is.null(string) && nchar(trim(string)) > 0) 
      {
        if (length(input$selectionStart)) 
        {              
          start = input$selectionStart
          end   = input$selectionEnd
        } else { start=0;end=0 }
        len = nchar(input[[textarea]])
cat ("insertStringIntoFocusedTextarea textarea=",textarea," string=",string," start=",start," end=",end," len=",len,"\n")
        if (nchar(string) == 0) return()
        if (start == end && end == len) {         # prepend 
          updateTextInput(session, textarea, value = paste0(input[[textarea]],string))
        } else if (start == 0 && end == start) {  # append
          updateTextInput(session, textarea, value = paste0(string,input[[textarea]]))
        } else if (end >= start) {                # insert/replace
          str = input[[textarea]]
          updateTextInput(session, textarea, value = 
            paste0(substring(input[[textarea]],1,max(1,start)),string,
                   substring(input[[textarea]],min(end+1,len))))
        }
      }
      updateSelectInput(session=session, inputId="freeOps", selected=1)
      updateSelectInput(session=session, inputId="freeVars",selected=1)
      updateSelectInput(session=session, inputId="freeSpecies",selected=1)
      updateSelectInput(session=session, inputId="freeFuncs",selected=1)
      output$fvsFuncRender <- renderUI (NULL)
      session$sendCustomMessage(type="refocus", textarea) 
    })
  }
 
  ## Cut  
  observe({
    if (input$cutCmp == 0) return()
    isolate ({
cat ("Cut length(input$simCont) = ",length(input$simCont),"\n") 
      if (length(input$simCont) == 0) return()
      if (moveToPaste(input$simCont[1],globals,globals$fvsRun))
      {
        globals$foundStand=0L 
        updateReps(globals$fvsRun)
        mkSimCnts(globals$fvsRun,justGrps=input$simContType=="Just groups") 
        updateSelectInput(session=session, inputId="simCont", 
          choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)                 
        output$contCnts <- renderUI(HTML(paste0("Run contents: ",
          length(globals$fvsRun$stands)," stand(s), ",
          length(globals$fvsRun$grps)," group(s)")))
        updateSelectInput(session=session, inputId="selpaste", 
          choices=globals$pastelistShadow,
          selected=if (length(globals$pastelistShadow)) 
              globals$pastelistShadow[[1]] else 0)         
      }
      globals$changeind <- 1
      output$titleBuild <-output$condBuild <- output$cmdBuild <- output$cmdBuildDesc <- output$fvsFuncRender <- renderUI (NULL)   
      output$contChange <- renderText(HTML("<b>*Run*</b>"))
    })
  })

  
  ## Copy  
  observe({
    if (input$copyCmp == 0) return()
    isolate ({
      toCpy = findCmp(globals$fvsRun,input$simCont[1])
      if (is.null(toCpy)) return()
      toCpy = mkfvsCmp(kwds=toCpy$kwds,kwdName=toCpy$kwdName,
              exten=toCpy$exten,variant=toCpy$variant,uuid=uuidgen(),
              atag=toCpy$atag,title=toCpy$title,reopn=toCpy$reopn)
      globals$pastelist <- append(globals$pastelist,toCpy,after=0)     
      globals$pastelistShadow <- append(globals$pastelistShadow,toCpy$uuid,after=0)       
      names(globals$pastelistShadow)[1] = toCpy$title
      updateSelectInput(session=session, inputId="selpaste", 
          choices=globals$pastelistShadow,
          selected=if (length(globals$pastelistShadow)) 
            globals$pastelistShadow[[1]] else 0)
    })
  })


  ## Paste
  observe({
    if (input$paste == 0) return()
    isolate ({
      if (length(input$simCont) == 0) return() 
      if (length(input$selpaste) == 0) return()
      if (nchar(input$selpaste) == 0) return()
      pidx = findIdx (globals$pastelist, input$selpaste)
cat("paste, pidx=",pidx,"\n")
      if (is.null(pidx)) return()
      topaste = globals$pastelist[[pidx]]

      if (length(grep("^SpGroup",topaste$kwds))){
        cat("paste, SpGroup hit\n")
        cntr <- 0
        if(!length(globals$GrpNum)) globals$GrpNum[1] <- 1 
        else {
          globals$GrpNum[(length(globals$GrpNum)+1)] <- length(globals$GrpNum)+1
        }
        pastedName <- strsplit(topaste$kwds, split = '[[:space:]]+')[[1]][2]
        grpName <- gsub(" ", "",mkNameUnique(pastedName, globals$GenGrp, spgroup = TRUE), fixed =TRUE)
        topaste$kwds <- DupSpGrpKwdFormat(pastedName, grpName, topaste$kwds)
        if(!is.null(topaste$reopn)){
          topaste$reopn[["f1"]] = toString(grpName)
        }
        globals$GenGrp[length(globals$GrpNum)] <- grpName
      }

cat("paste, class(topaste)=",class(topaste),"\n")
      if (class(topaste) != "fvsCmp") return()
      topaste = mkfvsCmp(kwds=topaste$kwds,kwdName=topaste$kwdName,
              exten=topaste$exten,variant=topaste$variant,uuid=uuidgen(),
              atag=topaste$atag,title=topaste$title,reopn=topaste$reopn)
      idx = pasteComponent(globals,input$simCont[1],topaste)
      if (!is.null(idx))
      {
        mkSimCnts(globals$fvsRun,justGrps=input$simContType=="Just groups")   
        updateSelectInput(session=session, inputId="simCont", 
           choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
        output$contCnts <- renderUI(HTML(paste0("Run contents: ",
          length(globals$fvsRun$stands)," stand(s), ",
          length(globals$fvsRun$grps)," group(s)")))
      }
      globals$foundStand=0L 
      globals$changeind <- 1
      output$contChange <- renderText(HTML("<b>*Run*</b>"))
    })
  })
   
  
  ## Change to freeform
  observe({
    if (input$mkfree == 0) return()
    isolate ({
      globals$currentEditCmp <- globals$NULLfvsCmp
      updateSelectInput(session=session, inputId="addMgmtCmps", selected = 0)
      if (length(input$simCont) == 0) return ()
      toed = input$simCont[1]
      cmp = findCmp(globals$fvsRun,toed)
      if (is.null(cmp)) return()
      cmp$kwdName="freeEdit"
      if (substring(cmp$title,1,10) != "Freeform: ") cmp$title=paste("Freeform: ",cmp$title)
      cmp$reopn=character(0)
      mkSimCnts(globals$fvsRun,sels=toed,justGrps=input$simContType=="Just groups")
      updateSelectInput(session=session, inputId="simCont", 
           choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
      output$titleBuild <-output$condBuild <- output$cmdBuild <- 
        output$cmdBuildDesc <- output$fvsFuncRender <- renderUI (NULL)    
    })                    
  })

  ## Command Set
  observe({
cat ("compTabSet, input$compTabSet=",input$compTabSet,
     " input$simCont=",length(input$simCont),"\n")
    if(!length(globals$currentEditCmp$kwds) || input$compTabSet !="Management")
    {
      output$titleBuild <-output$condBuild <- output$cmdBuild <- 
        output$cmdBuildDesc <- output$fvsFuncRender <- renderUI (NULL)   
    } 
    if (length(globals$fvsRun$FVSpgm) == 0) return(NULL)
    if (! globals$fvsRun$FVSpgm %in% names(globals$activeFVS)) return(NULL)
    switch (input$compTabSet,
      "Management" = 
      {                                                        
        if (length(globals$mgmtsel) == 0) globals$mgmtsel <- mkMgmtCats(globals)
        updateSelectInput(session=session, inputId="addMgmtCats", 
          choices=mkpair(globals$mgmtsel), selected = 0)
        updateSelectInput(session=session, inputId="addMgmtCmps", 
          choices=list())
      },                                                     
      "Modifiers"  = 
      {
        if (length(globals$mmodsel) == 0) globals$mmodsel <- mkModMCats(globals)
        updateSelectInput(session=session, inputId="addModCats", 
          choices=mkpair(globals$mmodsel), selected = 0)
        updateSelectInput(session=session, inputId="addModCmps", 
          choices=list())
      },
      "Event Monitor"= 
      {                      
        if (length(globals$mevsel) == 0) globals$mevsel <- mkEvMonCats(globals)
        updateSelectInput(session=session, inputId="addEvCmps",
            selected = 0,choices=mkpair(globals$mevsel[[1]]))
      },
      "Economic"= 
      {
        renderComponent(input,output,"ecn")
      },
      "Keywords"   = 
      {
        if (length(globals$extnsel) == 0) mkextkwd(prms,globals)
         updateSelectInput(session=session, inputId="addKeyExt", 
            label="Extensions", choices=globals$extnsel, selected = 0)
         updateSelectInput(session=session, inputId="addKeyWds", 
            label="Keywords", choices=list())
      },
      "Editor"   =                                                   
      {
        customCmps = NULL
        if(length(globals$currentEditCmp$kwds) > 0) closeCmp()
        if (length(globals$customCmps) == 0)loadObject(dbGlb$prjDB,"customCmps")
        if (!is.null(customCmps)){
          globals$customCmps = customCmps
          updateSelectInput(session=session,inputId="kcpSel",choices=as.list(names(customCmps)), 
          selected=names(customCmps)[1])
        }
        eltList <- mkFreeformEltList(globals,input,prms,globals$currentEditCmp$title,
                            globals$currentEditCmp$kwds)
        output$condBuild <- renderUI(NULL)
        output$cmdBuild <-renderUI(eltList)
        output$fvsFuncRender <- renderUI (NULL)
        output$cmdBuildDesc <- renderUI(paste0("Description: This Editor menu allows you to", 
          " utilize the advanced features of the freeform text format for creating custom",
          " component sets by directly adding & editing keyword records and Event Monitor",
          " functions. You can upload an existing keyword component file (.kcp), or keyword",
          " component archive (FVS_kcps.Rdata) and then save it into the Run Contents window",
          " on the left (Save in run), and also save it in the component collection (Save in",
          " component collection). You can also create your own component sets by appending",
          " items from the Run Contents on the left (Append selected component from run)", 
          " and then saving them into your component collection (Save in component collection).",
          " Finally, you can download a text file of your component set (Download(KCP))."))
      },
      NULL)   
  })
  ## kcpEdit
  observe({
    if (length(input$kcpEdit)) 
    {
      session$sendCustomMessage(type="getStartEnd", "kcpEdit")
    }
  })
  ## freeSpeciesKCP
  observe({
    if (length(input$freeSpeciesKCP) && nchar(input$freeSpeciesKCP)) isolate({
      if (length(input$kcpEdit) == 0) return()
      insertStrinIntokcpEdit(input,input$freeSpeciesKCP)
    })
  })
  ## freeVarsKCP
  observe({
    if (length(input$freeVarsKCP) && nchar(input$freeVarsKCP)) isolate({
      if (length(input$kcpEdit) == 0) return()
      insertStrinIntokcpEdit(input,input$freeVarsKCP)
    })
  })
  ## freeOpcKCP
  observe({
    if (length(input$freeOpsKCP) && nchar(input$freeOpsKCP)) 
    isolate({
      if (length(input$kcpEdit) == 0) return()
      insertStrinIntokcpEdit(input,input$freeOpsKCP)
    })
  })  
  ## freeFuncsKCP
  observe({
    if (length(input$freeFuncsKCP) && nchar(input$freeFuncsKCP) && input$freeFuncsKCP != " ") 
    isolate({
      if (length(input$kcpEdit) == 0) return()
      pkeys = prms[[paste0("evmon.function.",input$freeFuncsKCP)]] 
      if (is.null(pkeys)) insertStrinIntokcpEdit(input,
          paste0(input$freeFuncsKCP,"()")) else 
      {
        eltList <- mkeltList(pkeys,prms,globals,input,output,funcflag=TRUE)
        eltList <- append(eltList,list(
          actionButton("fvsFuncInsertKCP","Insert function"),
          actionButton("fvsFuncCancelKCP","Cancel function"),h6()))
        output$fvsFuncRender <- renderUI(eltList)
      }
    })
  }) 
  ## fvsFuncCancelKCP
  observe({  
    if (length(input$fvsFuncCancelKCP) && input$fvsFuncCancelKCP) 
    {
      output$fvsFuncRender <- renderUI (NULL)
      updateSelectInput(session=session, inputId="freeFuncsKCP",selected=1)
    }
  })
  ## fvsFuncInsertKCP
  observe({  
    if (length(input$fvsFuncInsertKCP) && input$fvsFuncInsertKCP)
    isolate({
      pkeys = prms[[paste0("evmon.function.",input$freeFuncsKCP)]]
      ansFrm = getPstring(pkeys,"answerForm",globals$activeVariants[1])
      reopn = NULL
      fn = 0
      repeat
      {
        fn = fn+1
        pkey = paste0("f",fn)
        fps = getPstring(pkeys,pkey,globals$activeVariants[1])
        if (is.null(fps)) break
        pkey = paste0("func.f",fn)
        instr = input[[pkey]]
        reopn = c(reopn,as.character(if (is.null(instr)) " " else instr))
        names(reopn)[fn] = pkey
      }
      string = mkKeyWrd(ansFrm,reopn,pkeys,globals$activeVariants[1])      
      insertStrinIntokcpEdit(input,string)
    })
  }) 
  ## insertStrinIntokcpEdit
  insertStrinIntokcpEdit <- function(input,string)
  {
    if (is.null(string) || nchar(string) == 0 || string == " ") return()
    isolate({
      if (length(input$selectionStart)) 
      {
        start = input$selectionStart
        end   = input$selectionEnd
      } else { start=0;end=0 } 
      len   = nchar(input$kcpEdit)
cat ("insertStrinIntokcpEdit string=",string," start=",start," end=",end," len=",len,"\n")
      if (nchar(string) == 0) return()
      if (start == end && end == len) {         # prepend 
        updateTextInput(session, "kcpEdit", value = paste0(input$kcpEdit,string))
      } else if (start == 0 && end == start) {  # append
        updateTextInput(session, "kcpEdit", value = paste0(string,input$kcpEdit))
      } else if (end >= start) {                # insert/replace
        str = input$kcpEdit
        updateTextInput(session, "kcpEdit", value = 
          paste0(substring(input$kcpEdit,1,max(1,start)),string,
                 substring(input$kcpEdit,min(end+1,len))))
      }
      updateSelectInput(session=session, inputId="freeOpsKCP", selected=1)
      updateSelectInput(session=session, inputId="freeVarsKCP",selected=1)
      updateSelectInput(session=session, inputId="freeSpeciesKCP",selected=1)
      updateSelectInput(session=session, inputId="freeFuncsKCP",selected=1)
      output$fvsFuncRender <- renderUI (NULL)
    })
  }
  
  ## addMgmtCats
  observe({
    if (is.null(input$addMgmtCats)) return()
    if (length(globals$mgmtsel)==0) globals$mgmtsel<-mkMgmtCats(globals)
    updateSelectInput(session=session, inputId="addMgmtCmps", selected = 0, 
      choices=globals$mgmtsel[[as.numeric(input$addMgmtCats)]])
    output$titleBuild <-output$condBuild <- output$cmdBuild <- output$cmdBuildDesc <- renderUI (NULL)
  })
  ## addModCats
  observe({
    if (is.null(input$addModCats)) return()
    if (length(globals$mmodsel) == 0) globals$mmodsel <- mkModMCats(globals)
    updateSelectInput(session=session, inputId="addModCmps", selected = 0, 
          choices=globals$mmodsel[[as.numeric(input$addModCats)]])
    output$titleBuild <-output$condBuild <- output$cmdBuild <- output$cmdBuildDesc <- renderUI (NULL)
  })
  ## addKeyExt
  observe({
    if (is.null(input$addKeyExt))
      updateSelectInput(session=session, inputId="addKeyWds", selected = 0, 
          choices=NULL) else
      {
        if (length(globals$mevsel) == 0) globals$mevsel <- mkEvMonCats(globals)
        updateSelectInput(session=session, inputId="addKeyWds", selected = 0, 
          choices=globals$kwdsel[[input$addKeyExt]])
      }
    output$titleBuild <-output$condBuild <- output$cmdBuild <- output$cmdBuildDesc <- renderUI (NULL)
  })
  ## addMgmtCmps
  observe({
    if (length(input$addMgmtCmps) && 
        nchar(input$addMgmtCmps)) renderComponent(input,output,"mgt")
  })
  ## addModCmps
  observe({
    if (length(input$addModCmps) && 
        nchar(input$addModCmps)) renderComponent(input,output,"mod") 
  })
  ## addKeyWds
  observe({
    if (length(input$addKeyWds) && 
        nchar(input$addKeyWds)) renderComponent(input,output,"key")
  })
  ## addEvent
  observe({
    if (length(input$addEvCmps) && 
        nchar(input$addEvCmps)) renderComponent(input,output,"evn")
  })
     
  ## renderComponent           
  renderComponent <- function(input,output,inCode="default")
  {
cat ("renderComponent, inCode=",inCode,"\n")
    isolate ({
      output$titleBuild <-output$condBuild <- output$cmdBuild <- output$cmdBuildDesc <- renderUI (NULL)
      globals$currentEditCmp <- globals$NULLfvsCmp
      globals$currentCndPkey <- character(0)
      switch (as.character(inCode),
        "mgt" =
        {
          if (is.null(input$addMgmtCats)) return(NULL)
          titIndx = try(match(input$addMgmtCmps,
                              globals$mgmtsel[[as.numeric(input$addMgmtCats)]]))
          if (inherits(titIndx,"try-error")) return(NULL)
          title = names(globals$mgmtsel[[as.numeric(input$addMgmtCats)]])[titIndx]
          globals$currentCmdPkey = globals$mgmtsel[[as.numeric(input$addMgmtCats)]][titIndx]
        },
        "mod" = 
        {
          titIndx = try(match(input$addModCmps,
                        globals$mmodsel[[as.numeric(input$addModCats)]]))
          if (inherits(titIndx,"try-error")) return(NULL)
          title = names(globals$mmodsel[[as.numeric(input$addModCats)]])[titIndx]
          globals$currentCmdPkey = globals$mmodsel[[as.numeric(input$addModCats)]][titIndx]
        },
        "key" = 
        {
          titIndx =  try(match(input$addKeyWds,
                         globals$kwdsel[[input$addKeyExt]]))
          if (inherits(titIndx,"try-error")) return(NULL)
          title = names(globals$kwdsel[[input$addKeyExt]])[titIndx] 
          globals$currentCmdPkey = globals$kwdsel[[input$addKeyExt]][titIndx]
        },
        "evn" = 
        {
          globals$currentCmdPkey=globals$mevsel[[1]][as.numeric(input$addEvCmps)]
          title = names(globals$currentCmdPkey)
        },
        "ecn" =
        {
          title = "Economic analysis"
          globals$currentCmdPkey = "econ Econ_reports"
        },
        return(NULL)
      ) 
cat ("globals$currentCmdPkey=",globals$currentCmdPkey," title=",title,"\n")
      cmdp = scan(text=globals$currentCmdPkey,what="character",sep=" ",quiet=TRUE)
      if(length(cmdp)>1)cmdp <- cmdp[2] else cmdp <- cmdp[1]
      # the cmdp can be a function name, or a ".Win" can be appended to form a 
      # function name.  If a function does not exist, then try finding a prms entry.
      if (exists(cmdp)) funName = cmdp 
      funName = paste0(cmdp,".Win")
      if (!exists(funName)) funName = cmdp
      if (!exists(funName)) funName = NULL
cat ("funName=",funName,"\n")
      if (!is.null(funName)) 
      { 
        globals$winBuildFunction <- funName
          ans = eval(parse(text=paste0(globals$winBuildFunction,
            "(title,prms,globals,input,output)")))
          if (is.null(ans)) return(NULL)
          ans[[1]] <- append(ans[[1]],list(
             tags$style(type="text/css", "#cmdCancel {color:#E00000;font-weight: bold;}"),
             actionButton("cmdCancel","Cancel"),
             tags$style(type="text/css", "#cmdSaveInRun {color:green;}"),
             actionButton("cmdSaveInRun","Save in run")))
          if (length(grep("freeEdit",ans[[1]]))==0) ans[[1]] <- append(ans[[1]],
            list(tags$style(type="text/css","#cmdChgToFree {color:black}"),
                 actionButton("cmdChgToFree","Change to freeform")))
          rtn <- list(h5(),div(myInlineTextInput("cmdTitle","Component title ", value=title,size=40)),h5())
          output$titleBuild <- renderUI(rtn)
          output$cmdBuild     <- renderUI (if (length(ans[[1]])) ans[[1]] else NULL)
          output$cmdBuildDesc <- renderUI (if (length(ans[[2]])) ans[[2]] else NULL)
      } else { 
        globals$winBuildFunction <- character(0)
        indx = match(cmdp,names(prms))
        if (is.na(indx)) return()
        pkeys <- prms[[indx]]
        eltList <- try(mkeltList(pkeys,prms,globals,input,output,FALSE,FALSE,title))
        if (inherits(eltList,"try-error"))
        {
          output$cmdBuildDesc = renderUI (HTML(paste0(
            '<br>Error:<br>Programming for "',title,'" is incorrect.<br>')))
          return()
        }
        eltList <- append(eltList,list(
           tags$style(type="text/css", "#cmdCancel {color:#E00000;font-weight: bold;}"),
           actionButton("cmdCancel","Cancel"),
           tags$style(type="text/css", "#cmdSaveInRun {color:green;}"),
           actionButton("cmdSaveInRun","Save in run"),
           actionButton("cmdChgToFree","Change to freeform")))
        output$cmdBuild <- renderUI (if (length(eltList)) eltList else NULL)
        des <- getPstring(pkeys,"description",globals$activeVariants[1])
        output$cmdBuildDesc <- renderUI (if (!is.null(des) && nchar(des) > 0)
          HTML(paste0("<br>Description:<br>",gsub("\n","<br>",des))) else NULL)
      }
    })
  }

 ## Thin from below window observer function
 observe({
    if(is.null(input$tbf2)) return()
    if(input$tbf2 == "1" || input$tbf2 == "2") {
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf3').prop('disabled',false)"))
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf4').prop('disabled',false)"))
      
      if(input$tbf2 == "1" && input$tbf3 > 0 && input$tbf4 <= 0){
        updateTextInput(session=session,inputId ="tbf4",
                        value=round(sqrt(43560/as.numeric(input$tbf3)),digits=4))
      }
      if(input$tbf2 == "2" && input$tbf3 <= 0 && input$tbf4 > 0){
        updateTextInput(session=session,inputId ="tbf3",
                        value=round(43560/(as.numeric(input$tbf4)^2),digits=2))
      }
      if(input$tbf2 == "1" && input$tbf3 > 0 && input$tbf4 >0){
        updateTextInput(session=session,inputId ="tbf4",
                        value=round(sqrt(43560/as.numeric(input$tbf3)),digits=4))
      }
      if(input$tbf2 == "2" && input$tbf3 > 0 && input$tbf4 >0){
        updateTextInput(session=session,inputId ="tbf3",
                        value=round(43560/(as.numeric(input$tbf4)^2),digits=2))
      }

    } else {
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf3').prop('disabled',true)"))
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf4').prop('disabled',true)"))
    }
    if(input$tbf2 == "3") {
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf5').prop('disabled',false)"))
    } else {
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf5').prop('disabled',true)"))
    }
    if(input$tbf2 == "4") {
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf6').prop('disabled',false)"))
    } else {
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf6').prop('disabled',true)"))
    }
    if(input$tbf2 == "5") {
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf7').prop('disabled',false)"))
    } else {
      session$sendCustomMessage(type="jsCode",
                                list(code= "$('#tbf7').prop('disabled',true)"))
    }
  })
 
 ## Thin from above window observer function
 observe({
  if(length(input$taf2)==0) return()
  if(input$taf2 == "1" || input$taf2 == "2") {
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf3').prop('disabled',false)"))
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf4').prop('disabled',false)"))
    
    if(input$taf2 == "1" && input$taf3 > 0 && input$taf4 <= 0){
      updateTextInput(session=session,inputId ="taf4",
                      value=round(sqrt(43560/as.numeric(input$taf3)),digits=4))
    }
    if(input$taf2 == "2" && input$taf3 <= 0 && input$taf4 > 0){
      updateTextInput(session=session,inputId ="taf3",
                      value=round(43560/(as.numeric(input$taf4)^2),digits=2))
    }
    if(input$taf2 == "1" && input$taf3 > 0 && input$taf4 >0){
      updateTextInput(session=session,inputId ="taf4",
                      value=round(sqrt(43560/as.numeric(input$taf3)),digits=4))
    }
    if(input$taf2 == "2" && input$taf3 > 0 && input$taf4 >0){
      updateTextInput(session=session,inputId ="taf3",
                      value=round(43560/(as.numeric(input$taf4)^2),digits=2))
    }
    
  } else {
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf3').prop('disabled',true)"))
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf4').prop('disabled',true)"))
  }
  if(input$taf2 == "3") {
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf5').prop('disabled',false)"))
  } else {
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf5').prop('disabled',true)"))
  }
  if(input$taf2 == "4") {
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf6').prop('disabled',false)"))
  } else {
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf6').prop('disabled',true)"))
  }
  if(input$taf2 == "5") {
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf7').prop('disabled',false)"))
  } else {
    session$sendCustomMessage(type="jsCode",
                              list(code= "$('#taf7').prop('disabled',true)"))
  }
})
  
  ## schedule box toggled.
  observe({  
    if (length(input$schedbox) == 0) return()
cat("input$schedbox=",input$schedbox,"\n")
    if (input$schedbox == 1) 
    {
      updateTextInput(session, globals$schedBoxPkey, 
        label = "Year or cycle number: ", 
        value = globals$schedBoxYrLastUsed) 
      output$conditions <- renderUI(NULL)
      if (length(globals$toggleind)) globals$currentCndPkey <- character(0)
    } else if (input$schedbox == 2) 
    {
      updateTextInput(session, globals$schedBoxPkey, 
        label = "Number of years after condition is found true: ", value = "0") 
      cndlist = unlist(prms$conditions_list)
      names(cndlist) = unlist(lapply(prms$conditions_list,attr,"pstring"))
      cndlist = as.list(cndlist)
      globals$toggleind <- "1"
cat("globals$currentCmdPkey=",globals$currentCmdPkey,"\n")
      if (length(globals$currentCmdPkey))
      {
        n = suppressWarnings(as.numeric(globals$currentCmdPkey))   
        default =  getPstring(prms[[if (is.na(n)) globals$currentCmdPkey else n]],
          "defaultCondition",globals$activeVariants[1])
        if (is.null(default)) default="cycle1"
      } else default = "cycle1"
      output$conditions <- renderUI(list(
        selectInput("condList", "Create a condition", cndlist, 
          selected = default, multiple = FALSE, selectize = FALSE),
        uiOutput("condElts")))
    } else {
      globals$currentCndPkey <- character(0)
      updateTextInput(session, globals$schedBoxPkey, 
        label = "Number of years after condition is found true ", value = "0") 
      output$conditions <- renderUI(
        selectInput("condList","Existing conditions", globals$existingCmps, 
          selected = NULL, multiple = FALSE, selectize = FALSE))
    }
  })

  ## schedule by condition selection
  observe({  
    if (length(input$schedbox) == 0) return()
    if (length(input$condList) == 0) return()
    if (length(globals$toggleind) && input$schedbox == 1) return()
cat("make condElts, input$condList=",input$condList,"\n") 
    if (input$condList == "none") output$condElts <- renderUI(NULL) else
    {
      cnpkey <- paste0("condition.",input$condList)
      idx <- match(cnpkey,names(prms))
      globals$currentCndPkey <- if (is.na(idx)) character(0) else cnpkey 
      ui = if (identical(globals$currentCndPkey,character(0))) NULL else
      {
        eltList <- mkeltList(prms[[globals$currentCndPkey]],prms,
                             globals,input,output,cndflag=TRUE)
        if (length(eltList) == 0) NULL else eltList
      }
      if (!is.null(ui))
      {                               
        title = getPstring(prms$conditions_list,input$condList)
        if (!is.null(title)) 
        {
          ui <- append(ui,list(myInlineTextInput("condTitle","Condition title", 
                      value=title, size=40)),after=1)
          output$condElts <- renderUI(ui)
        }
      }
    }
  })
  
  ## cmdChgToFree
  observe({       
    if (length(input$cmdChgToFree) == 0 || input$cmdChgToFree==0) return()
    isolate({
cat ("cmdChgToFree=",input$cmdChgToFree,"\n") 
       # process the condition first...if there is one.
      if (length(globals$toggleind)>0 && length(globals$currentCndPkey) &&
                     !is.null(input$schedbox) && input$schedbox == 2) 
       {
cat ("cmdChgToFree processing condition\n") 
         kwds = mkCondKeyWrd(globals,prms,input)
         attr(kwds$kwds,"keywords") = "condDisp"
         globals$currentCndPkey=kwds$kwds
         updateTextInput(session, "condTitle",value=paste0("Freeform: ",input$condTitle))
         condUI <- list(myInlineTextInput("condTitle","Condition title", 
              value=paste0("Freeform: ",input$condTitle), size=40),
              tags$style(type="text/css", 
                "#condDisp{font-family:monospace;font-size:90%;height:1in;width:100%;cursor:auto;}"), 
              tags$script('$(document).ready(function(){ $("textarea").on("focus", function(e){ Shiny.setInputValue("focusedElement", e.target.id);}); }); '),
              tags$textarea(id="condDisp",kwds$kwds),
              myInlineTextInput("cmdTitle","Component title", 
              value=paste0("Freeform: ",input$cmdTitle), size=40))
         output$titleBuild <- renderUI(NULL)
       } else {
         titleUI <- list(h5(),div(myInlineTextInput("cmdTitle","Component title ", paste0("Freeform: ",input$cmdTitle),size=40)),h5())
         output$titleBuild <- renderUI(titleUI)
         condUI <- NULL
       }
cat ("cmdChgToFree processing component\n") 
       if (length(globals$winBuildFunction))
       {
         kwPname = globals$winBuildFunction
         pkeys = character(0)
       } else {
         kwPname = scan(text=globals$currentCmdPkey,what="character",sep=" ",quiet=TRUE)
         pkeys = if (length(kwPname)>1) prms[[kwPname[2]]] else prms[[kwPname[1]]]
       }
       kwds = buildKeywords(character(0),pkeys,kwPname,globals)
       attr(kwds$kwds,"keywords") = "freeEdit"
       attr(kwds$kwds,"extension") = kwds$ex
       globals$currentCmdPkey = kwds$kwds
       globals$winBuildFunction = character(0)
       cmdUI <- mkFreeformEltList(globals,input,prms,paste0("Freeform: ",input$cmdTitle),
                                  kwds$kwds)
       cmdUI <- append(cmdUI,list(
                tags$style(type="text/css", "#cmdCancel {color:#E00000;font-weight: bold;}"),
                actionButton("cmdCancel","Cancel"),
                tags$style(type="text/css", "#cmdSaveInRun {color:green;}"),
                actionButton("cmdSaveInRun","Save in run")))
       output$condBuild <- renderUI(condUI)
       output$cmdBuild <- renderUI(cmdUI)
       output$cmdBuildDesc <- renderUI(NULL)
       session$sendCustomMessage(type="refocus", "freeEdit")
    })
  })
  ## command Cancel
  observe({  
    if (length(input$cmdCancel) && input$cmdCancel == 0) return()
    closeCmp()
  })
  ## closeCmp
  closeCmp <- function ()
  {
    globals$currentEditCmp <- globals$NULLfvsCmp
    globals$schedBoxPkey <- character(0)
    updateSelectInput(session=session, inputId="addMgmtCmps", selected = 0)     
    updateSelectInput(session=session, inputId="addModCmps", selected = 0)     
    updateSelectInput(session=session, inputId="addKeyWds", selected = 0)     
    updateSelectInput(session=session, inputId="addEvCmps",selected = 0)
    output$titleBuild <-output$condBuild <- output$cmdBuild <- output$cmdBuildDesc <- renderUI (NULL)
  }
  ## mkCondKeyWrd
  mkCondKeyWrd <- function (globals,prms,input)
  {
    kwPname = globals$currentCndPkey
cat ("mkCondKeyWrd, kwPname=",kwPname,"\n")
    pkeys = prms[[kwPname]]
    ansFrm = getPstring(pkeys,"answerForm",globals$activeVariants[1])
    if (is.null(ansFrm)) ansFrm = 
      getPstring(pkeys,"parmsForm",globals$activeVariants[1])
    reopn = NULL
    fn = 0
    repeat         
    {
      fn = fn+1
      pkey = paste0("f",fn)
      fps = getPstring(pkeys,pkey,globals$activeVariants[1])
      if (is.null(fps)) break
      instr = input[[paste0("cnd.",pkey)]]
      reopn = c(reopn,as.character(if (is.null(instr)) " " else instr))
      names(reopn)[fn] = pkey
    } 
    instr = input[["waitYears"]]
    reopn = c(reopn,as.character(if (is.null(instr)) character(0) else instr))
    names(reopn)[length(names(reopn))] = "waitYears"
    kwds = sprintf("%-10s%10s\n","If",if (is.null(instr)) " " else instr)
    kwds = paste0(kwds,mkKeyWrd(ansFrm,reopn,pkeys,globals$activeVariants[1]),
           "\nThen")
    list(reopn=reopn,kwds=kwds)
  }
  ## buildKeywords
  buildKeywords <- function(oReopn,pkeys,kwPname,globals)
  {
cat ("in buildKeywords, oReopn=",oReopn," kwPname=",kwPname,"\n")
    if (length(pkeys) == 0 && nchar(kwPname) || (length(globals$currentEditCmp$kwds) &&
        length(pkeys) > 0 && exists(paste0(kwPname,".mkKeyWrd")))) 
    {
      # try to find a function that can make the keywords
      fn = paste0(kwPname,".mkKeyWrd")
      ans = if (exists(fn)) eval(parse(text=paste0(fn,"(input,output)"))) else NULL
    } else { 
      # build from prms entry
      ansFrm = getPstring(pkeys,"answerForm",globals$activeVariants[1])
      if (is.null(ansFrm)) 
      { 
        kw = if (length(kwPname) > 1) kwPname[2] else kwPname[1]
        kw = unlist(strsplit(kw,".",fixed=TRUE))
        kw = kw[length(kw)]
        ansFrm = paste0(substr(paste0(kw,"         "),1,10),
                 "!1,10!!2,10!!3,10!!4,10!!5,10!!6,10!!7,10!")
      } 
      reopn = NULL
      fn = 0              
      repeat
      {                      
        fn = fn+1
        pkey = paste0("f",fn)
        fps = getPstring(pkeys,pkey,globals$activeVariants[1])
        if (is.null(fps)) break
        instr =  if (length(globals$currentEditCmp$atag) && 
                            globals$currentEditCmp$atag=="c") 
                input[[paste0("cnd.",pkey)]] else input[[pkey]]
        if(is.null(instr))instr=" "
        if(instr=="blank")instr=" "
        if(length(grep("noInput",fps)))instr=" "
        if(typeof(instr)=='logical') instr= as.integer(instr)
        reopn = c(reopn,as.character(if (is.null(instr)) " " else instr))
        names(reopn)[fn] = pkey
      }       
      kwds = if ("waitYears" %in% names(oReopn))
      {
        instr = input[["waitYears"]]
        if (!is.null(instr))
        { 
          reopn = c(reopn,as.character(if (is.null(instr)) " " else instr))
          names(reopn)[length(names(reopn))] = "waitYears"
          kwds = sprintf("%-10s%10s\n","If",if (is.null(instr)) " " else instr)
          paste0(kwds,mkKeyWrd(ansFrm,reopn,pkeys,globals$activeVariants[1]),
                 "\nThen")
        }
      } else mkKeyWrd(ansFrm,reopn,pkeys,globals$activeVariants[1])
      ans = list(ex=if (length(kwPname) > 1) kwPname[1] else if (length(grep("keyword.",kwPname))) gsub("[.].*","",gsub("keyword.","",kwPname))
        else "base", kwds=kwds,reopn=reopn)
      if (length(kwPname) > 1 && length(grep("keyword.",kwPname))){
        kwd <- gsub("[.].*","",gsub("keyword.","",kwPname))
        if(kwd[2]=="estbstrp"){
          ans[1] <- if(length(grep("strp",globals$activeExtens))) "strp" else "estb"
        }
      }
    }                        
    ans
  }
  ## Save in run 
  observeEvent(input$cmdSaveInRun, {
      if(!length(input$simCont))
      {
        cat("No Active Stands\n")
        showModal(shiny::modalDialog(title = "Cannot Perform Operation", 
                  "'Run Contents' must contain at least one stand or group 
                  to perform this operation "))
        return()
      }
      if (identical(globals$currentEditCmp,globals$NULLfvsCmp) &&
          identical(globals$currentCndPkey,character(0))  && 
          identical(globals$currentCmdPkey,character(0))) return()

      if (length(globals$currentEditCmp$reopn) && 
          globals$currentEditCmp$reopn[1] == "pasteOnSave")
      {
        globals$currentEditCmp$reopn = character(0)
        globals$currentEditCmp$kwds = input$freeEdit
        if (!is.null(input$cmdTitle) && nchar(input$cmdTitle)) 
          globals$currentEditCmp$title = input$cmdTitle
        idx = pasteComponent(globals,input$simCont[1],globals$currentEditCmp)
        if (!is.null(idx))
        { 
          mkSimCnts(globals$fvsRun,justGrps=input$simContType=="Just groups")   
          updateSelectInput(session=session, inputId="simCont", 
                            choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
        }
        globals$currentEditCmp <- globals$NULLfvsCmp
        closeCmp()                      
        return()
      }     
      if (identical(globals$currentCndPkey,character(0))) newcnd = NULL else 
        if (is.null(attr(globals$currentCndPkey,"keywords"))){ 
          kwds = mkCondKeyWrd(globals,prms,input)
          newcnd = mkfvsCmp(uuid=uuidgen(),atag="c",exten="base",
                            kwdName=globals$currentCndPkey,title=input$condTitle,
                            kwds=kwds$kwds,reopn=kwds$reopn)
        } else {
          newcnd = mkfvsCmp(uuid=uuidgen(),atag="c",
                            exten="base",kwdName="freeEdit",title=input$condTitle,
                            kwds=if (attr(globals$currentCndPkey,"keywords")=="condDisp") 
                              input$condDisp else input$freeForm,
                            reopn=character(0))
        }
      # make or edit a keyword. This section is used for both 
      # building a keyword and editing a keyword or a condition. 
      # if this is true, then we are building a new component
      if (identical(globals$currentEditCmp,globals$NULLfvsCmp))
      {       
        if (length(globals$winBuildFunction))
        {
          kwPname = globals$winBuildFunction
          pkeys = character(0)
        } else {
          if (!is.null(attr(globals$currentCmdPkey,"keywords"))) 
          {
            kwPname = attr(globals$currentCmdPkey,"keywords") 
            pkeys=NULL
          } else {
            kwPname = scan(text=globals$currentCmdPkey,what="character",sep=" ",quiet=TRUE)
            pkeys = if (length(kwPname)>1) prms[[kwPname[2]]] else prms[[kwPname[1]]]
          }
        }
        oReopn  = character(0) 
      } else { # we are editing the component            
        kwPname = globals$currentEditCmp$kwdName
        oReopn  = globals$currentEditCmp$reopn
        cat ("Editing a component: kwPname=",kwPname," oReopn=",oReopn,"\n")
        pkeys = if (length(kwPname)) prms[[kwPname]] else NULL
        if (is.null(pkeys) && length(oReopn) == 0) #this is freeform...
        {
          cat ("Editing as freeform\n")
          globals$currentEditCmp$kwds = input$freeEdit
          globals$currentEditCmp$reopn = character(0)
          globals$currentEditCmp$title = input$cmdTitle
          mkSimCnts(globals$fvsRun,sels=input$simCont[[1]],
                    justGrps=input$simContType=="Just groups")
          updateSelectInput(session=session, inputId="simCont", 
                            choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
          globals$changeind <- 1
          output$contChange <- renderText(HTML("<b>*Run*</b>"))
          closeCmp()
          return()
        }  
      }
      cat ("Building a component: kwPname=",kwPname,"\n")
      ans = if (length(kwPname)==1 && toupper(kwPname) == toupper("freeEdit")) list(ex=attr(globals$currentCmdPkey,"extension"),
                                                                reopn=NULL,kwds=input$freeEdit) else buildKeywords(oReopn,pkeys, kwPname,globals)
      gensps <- grep("SpGroup", ans$kwds)
      if(length(gensps)) 
      { 
        cntr <- 0
        # This globals$GrpNum section might should be relocated ???
        if(!length(globals$GrpNum)) globals$GrpNum[1] <- 1 else
          globals$GrpNum[(length(globals$GrpNum)+1)] <- length(globals$GrpNum)+1
        grlist <- list()
        # Initial SpGroups in Freeform will have NULL reopn, which will cause GSOD if not checked
        if (!is.null(ans$reopn)){
          for (spg in 1:length(ans$reopn)) if(try(ans$reopn[spg])!=" "){
            cntr<-cntr+1
            grlist[cntr]<-ans$reopn[spg]
          }
        }
        else {
          kwdSplit <- strsplit(ans$kwds, split = '[[:space:]]+')
          for (p in 2:length(kwdSplit[[1]])){
            cntr<-cntr+1
            grlist[cntr] <- kwdSplit[[1]][p]
          }
        }

        # Clean and sanitize user input
        grlist[1] <- gsub(" ","", grlist[1])
        grlist[1] <- gsub("[^a-zA-Z0-9_%]","_", htmltools::htmlEscape(grlist[1]))
        # prevent duplicate SpGroup names due to editing & saving non-name changes
        # Check for matching existing name
        tmpk <- match(grlist[1], globals$GenGrp)

        # If requested name does not exist in globals, AND request not associated
        # with editing of existing component add name to globals
        if (is.na(tmpk) && !length(globals$currentEditCmp$kwds)) 
          globals$GenGrp[length(globals$GrpNum)]<-grlist

        # If requested name does not exist in globals, BUT request IS associated with
        # editing of existing component, remove existing name and replace with new name
        else if (is.na(tmpk) && length(globals$currentEditCmp$kwds)){
          EditGrpName <- strsplit(globals$currentEditCmp$kwds, split = '[[:space:]]+')[[1]][2]
          removeGrpIdx <- match(EditGrpName, globals$GenGrp)
          globals$GrpNum <- globals$GrpNum[-length(globals$GrpNum)]
          globals$GenGrp <- globals$GenGrp[-removeGrpIdx]
          globals$GenGrp[length(globals$GrpNum)]<-grlist
        }

        # If requested name exists in globals, AND is an edit of existing component
        # ie, is either a rename of a group to an existing name, or be a non-name edit, 
        # do not allow grpNum to increment
        # If attempt to rename existing group to the name of another existing group, 
        # ie. incoming names does not match value in globals$currentEditCmp$kwds,
        # Create duplicate name, and remove existing name from globals$GenGrp
        else if (!is.na(tmpk) && length(globals$currentEditCmp$kwds)){
          globals$GrpNum <- globals$GrpNum[-length(globals$GrpNum)]
          EditGrpName <- strsplit(globals$currentEditCmp$kwds, split = '[[:space:]]+')[[1]][2]
          # Temporarly store duplicated name
          dupTemp <- grlist[1]
          if(!(grlist[1] == EditGrpName)) {
            grlist[1] <- gsub(" ", '', mkNameUnique(toString(grlist[1]), globals$GenGrp, spgroup=TRUE))
            # Change ans$kwds to match incremented name
            ans$kwds <- DupSpGrpKwdFormat(dupTemp, grlist[1], ans$kwds)
            #ans$kwds <-sub(dupTemp, grlist[1], ans$kwds)

            if(!is.null(ans$reopn)) {
              ans$reopn[["f1"]] = toString(grlist[1])
            }
            removeGrpIdx <- match(EditGrpName, globals$GenGrp)
            globals$GenGrp <- globals$GenGrp[-removeGrpIdx]
            globals$GenGrp[length(globals$GrpNum)]<-grlist
          }
        }

        # If requested name exists in globals, and is a new group request, 
        # not an edit of an existing component, increment name and add to globals
        else if (!is.na(tmpk) && !length(globals$currentEditCmp$kwds)) {
          # Temporarly store duplicated name
          dupTemp <- grlist[1]
          # Increment name in grlist[1]
          grlist[1] <- gsub(" ", '', mkNameUnique(toString(grlist[1]), globals$GenGrp, spgroup=TRUE))
          # Change ans$kwds to match incremented name
          ans$kwds <- DupSpGrpKwdFormat(dupTemp, grlist[1], ans$kwds)
          #ans$kwds <-sub(dupTemp, grlist[1], ans$kwds, fixed = TRUE)

          if(!is.null(ans$reopn)){
            ans$reopn[["f1"]] = toString(grlist[1])
          }
          globals$GenGrp[length(globals$GrpNum)]<-grlist
        }
      } # End checks for general species groups

      if (identical(globals$currentEditCmp,globals$NULLfvsCmp))
      {
        newcmp = mkfvsCmp(uuid=uuidgen(),atag="k",kwds=ans$kwds,exten=ans$ex,
                          variant=globals$activeVariants[1],kwdName= if (length(kwPname)>1) kwPname[2] else kwPname[1],
                          title=input$cmdTitle,
                          reopn=if (is.null(ans$reopn)) character(0) else ans$reopn)
        # find the attachment point. 
        sel = if (length(globals$schedBoxPkey) &&
                  input$schedbox == 3) input$condList else input$simCont[[1]]
        grp = findIdx(globals$fvsRun$grps,sel)
        std = if (is.null(grp)) findIdx(globals$fvsRun$stands,sel) else NULL
        cmp = NULL
        if (is.null(grp) && is.null(std)) 
        {           
          for (grp in 1:length(globals$fvsRun$grps))
          {
            cmp = findIdx(globals$fvsRun$grps[[grp]]$cmps,sel)
            if (!is.null(cmp)) break
          }
          if (is.null(cmp)) grp = NULL
          if (is.null(grp)) for (std in 1:length(globals$fvsRun$stands))
          {
            cmp = findIdx(globals$fvsRun$stands[[std]]$cmps,sel)
            if (!is.null(cmp)) break
          }
        }
        if (length(globals$schedBoxPkey) && input$schedbox == 3) 
        {
          #tag the component as being linked to the condition.
          newcmp$atag = sel
          #adjust insert point.
          if (is.null(std)) for (i in (cmp+1):length(globals$fvsRun$grps[[grp]]$cmps))
          {             
            if (i > length(globals$fvsRun$grps[[grp]]$cmps)) break
            if (globals$fvsRun$grps[[grp]]$cmps[[i]]$atag == sel) cmp = i
          } else for (i in (cmp+1):length(globals$fvsRun$stands[[std]]$cmps))
          {
            if (i > length(globals$fvsRun$stands[[std]]$cmps)) break
            if (globals$fvsRun$stands[[std]]$cmps[[i]]$atag == sel) cmp = i
          }
        }
        # save schedBoxYrLastUsed
        if (length(globals$schedBoxPkey) && input$schedbox == 1 &&
            length(input[[globals$schedBoxPkey]])) globals$schedBoxYrLastUsed <- 
          input[[globals$schedBoxPkey]]
        # if there is a newcnd, then attach it first.
        if (!is.null(newcnd))
        {
          newcmp$atag = newcnd$uuid
          if (is.null(grp)) 
          { 
            globals$fvsRun$stands[[std]]$cmps <- if (is.null(cmp))  
              append(globals$fvsRun$stands[[std]]$cmps, newcnd) else
                append(globals$fvsRun$stands[[std]]$cmps, newcnd, after=cmp)
          } else { 
            globals$fvsRun$grps[[grp]]$cmps <- if (is.null(cmp))  
              append(globals$fvsRun$grps[[grp]]$cmps, newcnd) else
                append(globals$fvsRun$grps[[grp]]$cmps, newcnd, after=cmp)
          }
          if (!is.null(cmp)) cmp <- cmp+1
        } 
        # attach the new component
        if (is.null(grp)) 
        {
          globals$fvsRun$stands[[std]]$cmps <- if (is.null(cmp))  
            append(globals$fvsRun$stands[[std]]$cmps, newcmp) else
              append(globals$fvsRun$stands[[std]]$cmps, newcmp, after=cmp)
        } else {           
          globals$fvsRun$grps[[grp]]$cmps <- if (is.null(cmp))  
            append(globals$fvsRun$grps[[grp]]$cmps, newcmp) else
              append(globals$fvsRun$grps[[grp]]$cmps, newcmp, after=cmp)
        }
      } else {
        globals$currentEditCmp$kwds=ans$kwds
        globals$currentEditCmp$title=input$cmdTitle
        cat ("saving, kwds=",ans$kwds," title=",input$cmdTitle," reopn=",ans$reopn,"\n")       
        globals$currentEditCmp$reopn=if (is.null(ans$reopn)) character(0) else ans$reopn
        globals$currentEditCmp=globals$NULLfvsCmp
      }      
      mkSimCnts(globals$fvsRun,sels=input$simCont[[1]],justGrps=input$simContType=="Just groups")
      updateSelectInput(session=session, inputId="simCont", 
                        choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
      globals$changeind <- 1
      output$contChange <- renderText(HTML("<b>*Run*</b>"))
      closeCmp()
      globals$schedBoxPkey <- character(0)
    })
  
})
