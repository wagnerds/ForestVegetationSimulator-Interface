# Simulate > Runs: save, new, duplicate, reload runs; run contents; add stands/groups; find stand.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvRuns <- quote({
  ## Save saveRun  
  observe({
    if (input$saveRun > 0)
    {
cat ("saveRun\n")
      saveRun(input,session)
      updateSelectInput(session=session, inputId="runSel", 
                        choices=globals$FVS_Runs,selected=globals$FVS_Runs[[1]])
    } 
  })

  ## New run    
  observe({
    if (input$newRun > 0)
    {
      saveRun(input,session)
      resetfvsRun(globals$fvsRun,globals$FVS_Runs)
      globals$fvsRun$title <- nextRunName(names(globals$FVS_Runs))
      storeFVSRun(dbGlb$prjDB,globals$fvsRun)
      globals$FVS_Runs = getFVSRuns(dbGlb$prjDB)
cat("New run, calling resetGlobals\n")
      resetGlobals(globals,TRUE)
      if (length(globals$GenGrp)) globals$GenGrp <- list()
      if (length(globals$GrpNum)) globals$GrpNum <- numeric(0)
      updateTextInput(session=session, inputId="title", value=globals$fvsRun$title)
cat ("in new run, globals$fvsRun$defMgmtID=",globals$fvsRun$defMgmtID,"\n")
      updateTextInput(session=session, inputId="defMgmtID",
                      value=globals$fvsRun$defMgmtID)
      updateSelectInput(session=session, inputId="simCont",choices=list())
      output$contCnts <- renderUI(HTML(paste0("Run contents: ",
        length(globals$fvsRun$stands)," stand(s), ",
        length(globals$fvsRun$grps)," group(s)")))
      updateSelectInput(session=session, inputId="addMgmtCats",choices=list())
      updateSelectInput(session=session, inputId="addMgmtCmps",choices=list())
      updateTextInput(session=session, inputId="startyr", 
                      value=globals$fvsRun$startyr)
      updateTextInput(session=session, inputId="endyr", 
                      value=globals$fvsRun$endyr)
      updateTextInput(session=session, inputId="cyclelen", 
                      value=globals$fvsRun$cyclelen)
      updateTextInput(session=session, inputId="cycleat", 
                      value=globals$fvsRun$cycleat)
      updateTextInput(session=session, inputId="inReps",value="1") 
      updateTextInput(session=session, inputId="inRwts",value="1") 
      output$runProgress <- renderUI(NULL)
      updateSelectInput(session=session, inputId="rightPan", 
                        selected="Stands")     
      updateSelectInput(session=session, inputId="compTabSet", 
                        selected="Management")
      updateSelectInput(session=session, inputId="runScript", 
                        selected="fvsRun")
      updateCheckboxGroupInput(session=session, "autoSVS", choices=list("Stand visualization:"="autoSVS"))
      updateRadioButtons(session=session,inputId="svsPlotShape",selected="Round")
      updateNumericInput(session=session,inputId="svsNFire",value=4)
      updateCheckboxGroupInput(session=session, "autoOut", choices=list(
                        "Tree lists (FVS_Treelist, FVS_CutList (StdStk-stand and stock))"="autoTreelists",
                        "FIA Volume, Biomass, and Carbon (VBC) (FVS_FIAVBC_Summary, FVS_FIAVBC_TreeList, FVS_FIAVBC_CutList, FVS_FIAVBC_AtrtList)" = "autoFIAVBC",
                        "Carbon and fuels (FVS_Carbon, FVS_Consumption, FVS_Hrv_Carbon, FVS_Fuels)"="autoCarbon",
                        "Fire and mortality (FVS_Potfire, FVS_BurnReport, FVS_Mortality)"="autoFire",
                        "Snags and down wood (FVS_SnagSum, FVS_Down_Wood_Cov, FVS_Down_Wood_Vol)"="autoDead",
                        "FFE canopy profile (FVS_CanProfile)"="autoCanProfile",          
                        "FFE detailed snag (FVS_SnagDet)"="autoSnagDet",  
                        "Stand structure (FVS_StrClass)"="autoStrClass",
                        "Calibration statistics (FVS_CalibStats)"="autoCalibStats",  
                        "Climate-FVS (FVS_Climate)"="autoClimate",                                    
                        "Economics (FVS_EconSummary, FVS_EconHarvestValue)"="autoEcon",
                        "Mistletoe detail by tree size (FVS_DM_Sz_Sum)"="autoDM_Sz_Sum",  
                        "Western Root Disease summary (FVS_RD_Sum)"="autoRD_Sum",  
                        "Western Root Disease details (FVS_RD_Det)"="autoRD_Det",  
                        "Western Root Disease bark beetles (FVS_RD_Beetle)"="autoRD_Beetle",
                        "Inventory statistics (FVS_Stats_Species, FVS_Stats_Stand)"="autoInvStats",
                        "Regeneration (All Variants: FVS_Regen_Sprouts, FVS_Regen_SitePrep, FVS_Regen_Tally. 
                         AK, EM, KT, IE, and CI variants also get: FVS_Regen_HabType, FVS_Regen_Ingrowth)"="autoRegen",
                        "Produce all standard FVS text outputs (otherwise some are suppressed)"="autoDelOTab"  
                        ), selected=list())                       
      isolate ({
        loadStandTableData(globals, dbGlb$dbIcon)
        updateSelectInput(session=session, inputId="inTabs", choices=globals$selStandTableList,
          selected=if (length(globals$selStandTableList)) globals$selStandTableList[[1]] else NULL)          
        updateSelectInput(session=session, inputId="inGrps", NULL, NULL)
        updateSelectInput(session=session, inputId="inStds", NULL, NULL)
        updateTabsetPanel(session=session, inputId="rightPan",selected="Stands")
        loadVarData(globals,input,dbGlb$dbIcon)
        updateVarSelection(globals,session,input)
      })
      updateSelectInput(session=session, inputId="runSel", 
                        choices=globals$FVS_Runs,selected=globals$fvsRun$uuid)
      globals$changeind <- 0
      output$contChange <- renderUI("Run")
    }
  })    
      

  ## Duplicate run
  observe({
    if (input$dupRun > 0)
    {
      if (length(globals$FVS_Runs) == 0) return()
      isolate(if (is.null(input$runSel)) return())
      saveRun(input,session)
      globals$fvsRun$title <- mkNameUnique(globals$fvsRun$title,names(globals$FVS_Runs))
      globals$fvsRun$uuid  <- uuidgen()
      globals$fvsRun$defMgmtID <- nextMgmtID(length(globals$FVS_Runs))
      storeFVSRun(dbGlb$prjDB,globals$fvsRun)
      globals$FVS_Runs=getFVSRuns(dbGlb$prjDB)
      updateTextInput(session=session, inputId="title", label="Run title", 
                      value=globals$fvsRun$title) 
      updateTextInput(session=session, inputId="defMgmtID",
                      value=globals$fvsRun$defMgmtID)
      updateSelectInput(session=session, inputId="compTabSet", 
                        selected="Management") 
      updateSelectInput(session=session, inputId="runSel", 
                        choices=globals$FVS_Runs,selected=globals$fvsRun$uuid)
      globals$changeind <- 0
      output$contChange <- renderUI("Run")
    }
  })    

  ## updateAutoOut
  updateAutoOut <- function(session,autoOut)
  {
cat ("updateAutoOut called\n")
     if (!is.null(autoOut) && is.null(names(autoOut))) # block is for backward compatibility, after 2021 it can be deleted.
     { 
       updateCheckboxGroupInput(session=session, inputId="autoOut",
          selected=autoOut)
       if ("autoSVS" %in% unlist(autoOut)) updateCheckboxGroupInput(session=session, 
          inputId="autoSVS",selected="autoSVS")
     } else {
       if (is.null(autoOut)) return()
       updateCheckboxGroupInput(session=session, inputId="autoOut",
          selected=autoOut[["autoOut"]])
       updateCheckboxGroupInput(session=session,inputId="autoSVS",selected=autoOut[["svsOut"]][["svs"]])
       updateRadioButtons(session=session,inputId="svsPlotShape",selected=autoOut[["svsOut"]][["shape"]])
       updateNumericInput(session=session,inputId="svsNFire",value=as.numeric(autoOut[["svsOut"]][["nfire"]])) 
     }
  }
 
  ## Reload or Run Selection   
  observe({
    if (input$reload > 0 || !is.null(input$runSel))
    isolate({
      if (length(globals$fvsRun$uuid) && input$runSel != globals$fvsRun$uuid) saveRun(input,session)
cat ("reload or run selection, runSel=",input$runSel," lensim=",
length(globals$fvsRun$simcnts)," globals$currentQuickPlot=",globals$currentQuickPlot,"\n")      
      if (length(globals$currentQuickPlot) &&
          globals$currentQuickPlot != input$runSel)
      {
cat("setting uiRunPlot to NULL\n")        
        output$uiRunPlot <- output$uiErrorScan <- renderUI(NULL)
        globals$currentQuickPlot = character(0)        
      }
      output$titleBuild <-output$condBuild <- output$cmdBuild <- output$cmdBuildDesc <- output$fvsFuncRender <- renderUI (NULL)
      progress <- shiny::Progress$new(session,min=1,max=5)
      progress$set(message = "Loading selected run",value = 1)
      resetGlobals(globals,FALSE)
      sel = match (input$runSel,globals$FVS_Runs) 
      if (is.na(sel)) sel = 1 
      saveFvsRun = loadFVSRun(dbGlb$prjDB,globals$FVS_Runs[sel])
      # make sure the saved object has the correct class. This will fix load errors from old projects
      if (! identical(attributes(class(saveFvsRun)),attributes(class(globals$fvsRun))))
        attributes(class(saveFvsRun)) = attributes(class(globals$fvsRun))
      globals$fvsRun = saveFvsRun
      if (length(globals$GenGrp)) globals$GenGrp <- list()
      if (length(globals$GrpNum)) globals$GrpNum <- numeric(0)
      if (length(globals$fvsRun$stands)) for (i in 1:length(globals$fvsRun$stands))
      {
        if (length(globals$fvsRun$stands[[i]]$grps) > 0) 
          for (j in 1:length(globals$fvsRun$stands[[i]]$grps))
          { 
            if (length(globals$fvsRun$stands[[i]]$grps[[j]]$cmps) > 0) 
              for (k in 1:length(globals$fvsRun$stands[[i]]$grps[[j]]$cmps))
              {
                test <- globals$fvsRun$stands[[i]]$grps[[j]]$cmps[[k]]$kwds
                spgtest <- grep("^SpGroup",test)
                cntr <- 0                                                                                   
                spgname <- list()
                if (length(spgtest))
                {
                  cntr<-cntr+1
                  spgname[cntr] <- trim(unlist(strsplit(strsplit(test, split = "\n")[[1]][1],
                  split=" "))[length(unlist(strsplit(strsplit(test, split = "\n")[[1]][1],split=" ")))])
                  if(!length(globals$GrpNum)) globals$GrpNum[1] <- 1 else
                  globals$GrpNum[(length(globals$GrpNum)+1)] <- length(globals$GrpNum)+1
                  
                  spgname[1] <- gsub(" ","", spgname[1])
                  tmpk <- match(spgname[1], globals$GenGrp)
                  if (!is.na(tmpk)) 
                  {
                    globals$GrpNum <- globals$GrpNum[-length(globals$GrpNum)]
                  } else globals$GenGrp[length(globals$GrpNum)]<-spgname
                }
              }
          } 
      }
      resetGlobals(globals,TRUE)
      tmp = unlist(globals$activeFVS[globals$fvsRun$FVSpgm])
      globals$lastRunVar = if (length(tmp) && !is.null(tmp)) tmp[1] else 
        if (length(globals$fvsRun$FVSpgm) && nchar(globals$fvsRun$FVSpgm)>4) 
          substring(globals$fvsRun$FVSpgm,4) else globals$lastRunVar
      mkSimCnts(globals$fvsRun,sels=globals$fvsRun$selsim,
        justGrps=isolate(input$simContType)=="Just groups")
      initializeUserGroups(globals)
      output$uiCustomRunOps = renderUI(NULL)    
cat ("reloaded globals$fvsRun$title=",globals$fvsRun$title," uuid=",globals$fvsRun$uuid,"\n")      
cat ("reloaded globals$fvsRun$runScript=",globals$fvsRun$runScript,"\n")
      if (length(globals$fvsRun$uiCustomRunOps)) lapply(names(globals$fvsRun$uiCustomRunOps), function (x,y)
cat ("globals$fvsRun$uiCustomRunOps$",x,"=",y[[x]],"\n",sep=""),globals$fvsRun$uiCustomRunOps) else
cat ("globals$fvsRun$uiCustomRunOps is empty\n")
      if ((globals$changeind==0 && !length(globals$currentQuickPlot)) && length(globals$fvsRun$simcnts)>0)
      {
        if (input$rightPan != "Components" && length(globals$fvsRun$simcnts)>0)
        {
          updateTabsetPanel(session=session, inputId="rightPan", 
             selected="Components")
        }
        if (input$rightPan != "Stands" && length(globals$fvsRun$simcnts)==0)
        {
          updateTabsetPanel(session=session, inputId="rightPan", 
             selected="Stands")
        }
      }
      progress$set(message = paste0("Setting values for run ", globals$fvsRun$title),
            value = 2)
      updateAutoOut(session, globals$fvsRun$autoOut)
      updateTextInput(session=session, inputId="title", value=globals$fvsRun$title)
cat ("in Reload, globals$fvsRun$defMgmtID=",globals$fvsRun$defMgmtID,"\n")
      updateTextInput(session=session, inputId="defMgmtID",
                      value=globals$fvsRun$defMgmtID)
      for (id in c("addMgmtCats","addMgmtCmps","addModCats","addModCmps",
                   "addEvCmps","addKeyExt","addKeyWds"))
         updateSelectInput(session=session, inputId=id,selected=0)
      updateTextInput(session=session, inputId="startyr",  
                      value=globals$fvsRun$startyr)
      updateTextInput(session=session, inputId="endyr",    
                      value=globals$fvsRun$endyr)
      updateTextInput(session=session, inputId="cyclelen", 
                      value=globals$fvsRun$cyclelen)
      updateTextInput(session=session, inputId="cycleat",  
                      value=globals$fvsRun$cycleat)
      updateVarSelection(globals,session,input)
      progress$set(message = paste0("Setting simulation contents for run ", 
        globals$fvsRun$title),value = 3)
      updateSelectInput(session=session, inputId="simCont", 
        choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
      loadVarData(globals,input,dbGlb$dbIcon)
      updateVarSelection(globals,session,input)
      output$contCnts <- renderUI(HTML(paste0("Run contents: ",
        length(globals$fvsRun$stands)," stand(s), ",
        length(globals$fvsRun$grps)," group(s)")))
      updateStandTableSelection(session,input,globals)
      loadVarData(globals,input,dbGlb$dbIcon)                                              
      updateVarSelection(globals,session,input)
      # if the update causes a change in the runscript selection, then
      # customRunOps will get called automatically. If it is the same
      # script then it needs to be called here to update/set the settings.
      progress$set(message = "Setting custom run options ",value = 4)
      callCustom = length(globals$fvsRun$runScript) && 
                   globals$fvsRun$runScript == input$runScript
      updateSelectInput(session=session, inputId="runScript", 
          selected=globals$fvsRun$runScript)
      if (!is.na(callCustom) && callCustom) customRunOps()
      progress$close()
    })
  })
  
  ## autoOut
  observe({
    input$autoOut
    input$autoSVS
    {
cat ("autoOut changed, input$autoSVS=",input$autoSVS,"\n")
      out<-list(svsOut=list(svs=input$autoSVS,shape=input$svsPlotShape,nfire=input$svsNFire),
                autoOut=as.list(input$autoOut))
      if (identical(out,globals$fvsRun$autoOut)) return()
      globals$fvsRun$autoOut <- out
      updateAutoOut(session, globals$fvsRun$autoOut)
      globals$changeind <- 1
      output$contChange <- renderText(HTML("<b>*Run*</b>"))
    }
  })

  ## inAdd: Add Selected Stands
  observeEvent(input$inAdd, {
    cat("In inAdd\n")
    cat("input$inAdd=", input$inAdd, "\n")
    cat("number of stands to add=", length(input$inStds), "\n")
    if(length(input$inStds))
    {
      addStandsToRun(session,input,output,selType="inAdd",globals,dbGlb)
      updateVarSelection(globals,session,input)
    }
    else
    {
      cat("No stands selected")
    }
  })
  
  
  ## inAddGrp: Add all stands in selected groups
  observeEvent(input$inAddGrp, {
    cat("In inAddGrp\n")
    cat("input$inAddGrp=", input$inAdd, "\n")
    cat("number of groups to add=", length(input$inStds), "\n")
    
    if(length(input$inGrps))
    {
      addStandsToRun(session,input,output,selType="inAddGrp",globals,dbGlb)
      updateVarSelection(globals,session,input)
    }
    else
    {
      cat("No groups selected")
    }
  })
  
  ## inStdFindBut: Find and select stands in the stand list that match the search string
  observe({
    if (input$inStdFindBut > 0) 
    {
cat ("input$inStdFindBut=",input$inStdFindBut,"\n")
    }
  })  
  
  ## run element selection
  observe({
    if (length(input$simCont) == 0) return()
cat ("run element selection\n")
    if (all(input$simCont == globals$fvsRun$selsim)) return()
    mkSimCnts(globals$fvsRun,sels=input$simCont[[1]],justGrps=isolate(input$simContType=="Just groups"))
    updateSelectInput(session=session, inputId="simCont", 
         choices=globals$fvsRun$simcnts, selected=globals$fvsRun$selsim)
  })
  
  ## findStand (set run element to item if found)
  observe({
    if (input$searchNext== 0) return()      
    isolate ({
cat ("searchNext: string=",input$searchString,"\n")
      if (nchar(input$searchString) == 0) return()
    elt = findStand(globals,search=input$searchString)
cat ("elt=",elt,"\n")
    if (is.null(elt)) return()
    if (input$simContType=="Just groups") updateRadioButtons(session=session, 
       inputId="simContType", selected="Full run")
    mkSimCnts(globals$fvsRun,sels=elt,justGrps=input$simContType=="Just groups")
    updateSelectInput(session=session, inputId="simCont", 
         choices=globals$fvsRun$simcnts, selected=elt)
  })})

})
