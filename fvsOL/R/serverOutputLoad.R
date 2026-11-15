# View Outputs > Load: run selection, output queries, stand/stock table build, table and variable selection.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvOutputLoad <- quote({
  ## runs output run selection
  observeEvent((input$leftPan == "Load" && !is.null(input$runs)), {
    if (input$leftPan != "Load") return()
cat ("runs, run selection (load) input$runs=",input$runs,"\n")
    if (!is.null(input$runs) && !length(globals$tbsFinal) && !globals$exploring) # will be a list of run keywordfile names (uuid's)
    {
      tbs <- myListTables(dbGlb$dbOcon)
cat ("tbs related to the run",tbs,"\n")
      if (length(tbs) == 0) 
      {
        updateSelectInput(session, "selectdbtables", choices=list())
        return()
      }
      withProgress(session, {  
        i = 1
        setProgress(message = "Please wait: Performing output query", 
                    detail  = "Selecting tables", value = i); i = i+1
        # set an exclusive lock on the database
        dbExecute(dbGlb$dbOcon,"PRAGMA locking_mode = EXCLUSIVE")
        trycnt=0
        while (TRUE)
        {
          trycnt=trycnt+1
          setProgress(message = "Please wait: Getting exclusive lock",
                      detail  = paste0("Number of attempts=",trycnt," of 1000"))
          if (trycnt > 1000)
          {
            dbExecute(dbGlb$dbOcon,"PRAGMA locking_mode = NORMAL")
            myListTables(dbGlb$dbOcon) #any query will cause the locking mode to become active
            setProgress(value = NULL)
            return()
          }
cat ("try to get exclusive lock, trycnt=",trycnt,"\n");
          rtn <- try(dbExecute(dbGlb$dbOcon,"create table dummy (dummy int)"))
          if (class(rtn) != "try-error") break;
          Sys.sleep (10)
        }
cat ("have exclusive lock\n")
        dbExecute(dbGlb$dbOcon,"drop table if exists dummy")
        # create a tmp_cases table that is a list of CaseIDs 
        # associated with the selected runs. These two items are used to 
        # filter records selected from selected tables.   
        qry = paste0("create temp table tmp_cases as select _RowID_,CaseID,Variant ",
                     "from FVS_Cases where FVS_Cases.KeywordFile in ",
                     paste0("('",paste(input$runs,collapse="','"),"')"))
cat("qry=",qry,"\n")
        dbExecute(dbGlb$dbOcon,"drop table if exists tmp_cases")
        rtn = dbExecute(dbGlb$dbOcon,qry) 
cat("rtn from create tmp_cases=",rtn,"\n")
        ncases = try(dbGetQuery(dbGlb$dbOcon, "select count(*) from tmp_cases;"))
        ncases = if (inherits(ncases, "try-error") || is.null(ncases) || nrow(ncases) == 0) 0 else ncases[1,1]
cat ("ncases=",ncases,"\n")
        bagit=ncases==0
        isMetric=FALSE
        if (!bagit)
        {
          variantsRun =  try(dbGetQuery(dbGlb$dbOcon,
             "select distinct Variant from tmp_cases;"))
          variantsRun = if (inherits(variantsRun, "try-error") || is.null(variantsRun)) character(0) else tolower(variantsRun[,1])
          metricVars = c("bc","on")
          isMetric = length(intersect(variantsRun,metricVars)) > 0
          # can not have metric and non-metric variants
          bagit = isMetric && length(setdiff(variantsRun,metricVars))
        }
        if (bagit)
        {
            updateSelectInput(session, "runs", choices = fvsOutData$runs, selected=0)
            dbExecute(dbGlb$dbOcon,"PRAGMA locking_mode = NORMAL")
            myListTables(dbGlb$dbOcon) #any query will cause the locking mode to become active
            setProgress(value = NULL)
            return()
        }          
        for (tb in tbs) 
        {
          cat(tbs)
cat ("tb=",tb,"\n")                             
          cnt = 0
          if (tb == "FVS_Cases") next
          if (tb %in% c("CmpSummary","CmpSummary_East", "CmpSummary2",
              "CmpSummary2_East","CmpSummary2_Metric", "StdStk","CmpStdStk",
              "StdStk_East","CmpStdStk_East","StdStk_Metric","CmpStdStk_Metric",
              "CmpMetaData","CmpCompute", "CmpCalibStats"))
          {
cat ("drop tb=",tb,"\n")
             dbExecute(dbGlb$dbOcon,paste0("drop table if exists ",tb))
          } else {
            qry = paste0("select count(*) from ",
                   "(select CaseID from ",tb," where ",tb,".CaseID in ",
                   "(select CaseID from tmp_cases))")
cat("qry=",qry,"\n")
            cnt = if ("CaseID" %in% dbListFields(dbGlb$dbOcon,tb))  
              dbGetQuery(dbGlb$dbOcon,qry) else -1
            cnt = if (class(cnt)=="data.frame") cnt[1,1] else -1
cat ("tb=",tb," cnt=",cnt,"\n")
          }
          if (cnt == 0) tbs = setdiff(tbs,tb)
        }
        source(system.file("extdata", if (isMetric) "sqlQueries_Metric.R" else "sqlQueries.R",
              package="fvsOL"))
        if (!exqury(dbGlb$dbOcon,Create_CmpMetaData)) 
        {
          updateSelectInput(session, "runs", choices = fvsOutData$runs, selected=0)
          dbExecute(dbGlb$dbOcon,"PRAGMA locking_mode = NORMAL")
          myListTables(dbGlb$dbOcon) #any query will cause the locking mode to become active
          setProgress(value = NULL)
          return()
        }
        tbs = c(tbs,"CmpMetaData")
        dbhclassexp <- mkdbhCase(input$sdskwdbh,input$sdskldbh)
        if (!isMetric)
        {
          if ("FVS_Summary" %in% tbs && ncases > 1)
          {
            setProgress(message = "Please wait: performing output query", 
              detail  = "Building CmpSummary", value = i); i = i+1
            tblPRAG <- dbGetQuery(dbGlb$dbOcon, "PRAGMA table_xinfo(FVS_Summary)")
            chkSCuFt <- any(tblPRAG$name=="SCuFt")
            if(!chkSCuFt)
            {
              exqury(dbGlb$dbOcon,Create_CmpSummary)
            }
            else exqury(dbGlb$dbOcon,Create_CmpSummary_V2)
            
            tbs = c(tbs,"CmpSummary")
cat ("tbs1=",tbs,"\n")                             
          }
          if ("FVS_Summary_East" %in% tbs && ncases > 1)
          {
            setProgress(message = "Please wait: performing output query", 
              detail  = "Building CmpSummary_East", value = i); i = i+1
            exqury(dbGlb$dbOcon,Create_CmpSummary_East)
            tbs = c(tbs,"CmpSummary_East")
cat ("tbs2=",tbs,"\n")
          }
          if ("FVS_Summary2" %in% tbs && ncases > 1)
          {
            setProgress(message = "Please wait: performing output query", 
              detail  = "Building CmpSummary2", value = i); i = i+1
            tblPRAG <- dbGetQuery(dbGlb$dbOcon, "PRAGMA table_xinfo(FVS_Summary2)")
            chkGMD <- any(tblPRAG$name=="GMD")
            chkSCuFt <- any(tblPRAG$name=="SCuFt")
            if(chkGMD){
              exqury(dbGlb$dbOcon,Create_CmpSummary2_V3)
            }
            else if(chkSCuFt){
              exqury(dbGlb$dbOcon,Create_CmpSummary2_V2)
            }
            else exqury(dbGlb$dbOcon,Create_CmpSummary2)
            tbs = c(tbs,"CmpSummary2")
cat ("tbs3=",tbs,"\n")
          }
          if ("FVS_Summary2_East" %in% tbs && ncases > 1)
          {
            setProgress(message = "Please wait: performing output query", 
              detail  = "Building CmpSummary2_East", value = i); i = i+1
            exqury(dbGlb$dbOcon,Create_CmpSummary2_East)
            tbs = c(tbs,"CmpSummary2_East")
cat ("tbs4=",tbs,"\n")
          } 
        } else {
          if ("FVS_Summary2_Metric" %in% tbs && exists("Create_CmpSummary2"))
          {
            setProgress(message = "Please wait: performing output query", 
              detail  = "Building CmpSummary2_Metric", value = i); i = i+1
            exqury(dbGlb$dbOcon,Create_CmpSummary2)
            tbs = c(tbs,"CmpSummary2_Metric")
cat ("tbs5=",tbs,"\n") 
          }
        }
        if ("FVS_Compute" %in% tbs && ncases > 1)
        {
          setProgress(message = "Please wait: performing output query", 
            detail  = "Building CmpCompute", value = i); i = i+1
          cmp = dbGetQuery(dbGlb$dbOcon,
            "select * from FVS_Compute limit 0")
          sumExpressions = paste0(
            lapply(setdiff(colnames(cmp),c("CaseID","StandID","Year")),
              function (var) paste0("round(sum(",var,
                "*SamplingWT)/sum(SamplingWt),2) as Cmp",var)),collapse=",")
          exqury(dbGlb$dbOcon,Create_CmpCompute,subExpression=sumExpressions)
          cmp = dbGetQuery(dbGlb$dbOcon,"Select * from CmpCompute;")
          keep = apply(cmp,2,function (x) !(all(is.na(x))))
          if (!all(keep)) 
          {
            cmp = cmp[,keep]
            dbWriteTable(dbGlb$dbOcon,"CmpCompute",cmp,overwrite=TRUE)
          }
          tbs = c(tbs,"CmpCompute")    
cat ("tbs6=",tbs,"\n")
        }
        if ("FVS_CalibStats" %in% tbs && ncases > 1)
        {
          setProgress(message = "Please wait: performing output query", 
            detail  = "Building CmpCalibStats", value = i); i = i+1
          exqury(dbGlb$dbOcon,Create_CmpCalibStats,asSpecies=paste0("Species",input$spCodes))
          cmp = dbGetQuery(dbGlb$dbOcon,"Select * from CmpCalibStats;")
          keep = apply(cmp,2,function (x) !(all(is.na(x))))
          if (!all(keep)) 
          {
            cmp = cmp[,keep]
            dbWriteTable(dbGlb$dbOcon,"CmpCalibStats",cmp,overwrite=TRUE)
          }
          tbs = c(tbs,"CmpCalibStats")    
cat ("tbs6=",tbs,"\n")
        }
        tlprocs = c("tlwest"="FVS_TreeList" %in% tbs, "tleast"="FVS_TreeList_East" %in% tbs)
        if (!isMetric && any(tlprocs)) 
        {
          tlprocs = names(tlprocs)[tlprocs]
          chtoEast = function(cmd)
          {
            cmd = gsub("BdFt", "SBdFt",cmd,fixed=TRUE)
            cmd = gsub("TCuFt","SCuFt",cmd,fixed=TRUE)
            cmd = gsub("FVS_TreeList","FVS_TreeList_East",cmd,fixed=TRUE)
            gsub("FVS_CutList","FVS_CutList_East",cmd,fixed=TRUE)
          }
          for (tlp in tlprocs)          
          {
            tblPRAG <- dbGetQuery(dbGlb$dbOcon, "PRAGMA table_xinfo(FVS_Treelist)")
            chkSCuFt <- any(tblPRAG$name=="SCuFt")
            if (tlp == "tlwest")
            {
              if (!chkSCuFt) {
                C_StdStkDBHSp  = Create_StdStkDBHSp
                C_HrvStdStk    = Create_HrvStdStk
                C_StdStk1Hrv   = Create_StdStk1Hrv
                C_StdStk1NoHrv = Create_StdStk1NoHrv
                C_StdStkFinal  = Create_StdStkFinal
                C_CmpStdStk    = Create_CmpStdStk

              }
              else {
                C_StdStkDBHSp  = Create_StdStkDBHSp_V2
                C_HrvStdStk    = Create_HrvStdStk_V2
                C_StdStk1Hrv   = Create_StdStk1Hrv_V2
                C_StdStk1NoHrv = Create_StdStk1NoHrv_V2
                C_StdStkFinal  = Create_StdStkFinal_V2
                C_CmpStdStk    = Create_CmpStdStk_V2
              }
              detail = "Building StdStk from tree lists"
              stdstk = "StdStk"
              clname = "FVS_CutList"
            } else {
              C_StdStkDBHSp  = chtoEast(Create_StdStkDBHSp )
              C_HrvStdStk    = chtoEast(Create_HrvStdStk   )
              C_StdStk1Hrv   = chtoEast(Create_StdStk1Hrv  )
              C_StdStk1NoHrv = chtoEast(Create_StdStk1NoHrv)
              C_StdStkFinal  = chtoEast(Create_StdStkFinal )
              C_StdStkFinal  = gsub(" StdStk"," StdStk_East",C_StdStkFinal)
              C_CmpStdStk    = chtoEast(Create_CmpStdStk   )
              C_CmpStdStk    = gsub(" CmpStdStk"," CmpStdStk_East",C_CmpStdStk)
              C_CmpStdStk    = gsub(" StdStk "," StdStk_East ",C_CmpStdStk)
              detail = "Building StdStk_East from tree lists"
              stdstk = "StdStk_East"
              clname = "FVS_CutList_East"
            }
            setProgress(message = "Please wait: performing output query", 
              detail  = detail, value = i); i = i+1
            exqury(dbGlb$dbOcon,C_StdStkDBHSp,subExpression=dbhclassexp,
                   asSpecies=paste0("Species",input$spCodes))
            if (clname %in% tbs)
            {
              setProgress(message = "Please wait: performing output query", 
                detail  = detail, value = i); i = i+1
              exqury(dbGlb$dbOcon,C_HrvStdStk,subExpression=dbhclassexp,
                   asSpecies=paste0("Species",input$spCodes))
              setProgress(message = "Please wait: performing output query", 
                detail  = "Joining tables", value = i); i = i+1
              exqury(dbGlb$dbOcon,C_StdStk1Hrv,subExpression=dbhclassexp,
                   asSpecies=paste0("Species",input$spCodes))
            } else {
              setProgress(message = "Please wait: performing output query", 
                detail  = "Joining tables", value = i); i = i+2
              exqury(dbGlb$dbOcon,C_StdStk1NoHrv,subExpression=dbhclassexp,
                   asSpecies=paste0("Species",input$spCodes))
            }
            exqury(dbGlb$dbOcon,C_StdStkFinal)
            tbs = c(tbs,stdstk) 
            if (ncases > 1) 
            {                                               
              exqury(dbGlb$dbOcon,C_CmpStdStk)
              tbs = c(tbs,paste0("Cmp",stdstk))
            }                                      
          }          
        }                                                      
        if ("FVS_TreeList_Metric" %in% tbs)
        { 
          asSpecies=paste0("Species",input$spCodes)
          setProgress(message = "Please wait: performing output query", detail  = "Building StdStk", value = i); i = i+1
          if ("FVS_CutList_Metric" %in% tbs) exqury(dbGlb$dbOcon,Create_HrvStdStk, 
            subExpression=dbhclassexp, asSpecies=asSpecies)
          exqury(dbGlb$dbOcon,Create_StdStkDBHSp,subExpression=dbhclassexp,asSpecies=asSpecies)
          exqury(dbGlb$dbOcon,Create_StdStk1NoHrv,subExpression=dbhclassexp,asSpecies=asSpecies)
          exqury(dbGlb$dbOcon,Create_StdStkFinal)
          tbs = c(tbs,"StdStk_Metric")
          if (ncases > 1) 
          {                                               
            exqury(dbGlb$dbOcon,Create_CmpStdStk)
            tbs = c(tbs,"CmpStdStk_Metric")
          }                                      
        }
        if (all(Create_View_DWN_Required %in% tbs))             
        {
          exqury(dbGlb$dbOcon,Create_View_DWN)
          tbs = c(tbs,"View_DWN")
        }
        dbExecute(dbGlb$dbOcon,"PRAGMA locking_mode = NORMAL")
cat ("tbs7=",tbs,"\n")       
        setProgress(message = "Please wait: performing output query", 
            detail  = "Committing changes", value = i); i = i+1
        dbd = lapply(tbs,function(tb,con) dbListFields(con,tb), dbGlb$dbOcon)
        names(dbd) = tbs
        if (!is.null(dbd[["FVS_Summary"]])) {
          if("SCuFt" %in% dbd[["FVS_Summary"]]) dbd$FVS_Summary = c(dbd$FVS_Summary,
            c("TPrdTpa","TPrdTCuFt","TPrdMCuFt","TPrdSCuFt","TPrdBdFt"))
            else dbd$FVS_Summary = c(dbd$FVS_Summary,
            c("TPrdTpa","TPrdTCuFt","TPrdMCuFt","TPrdBdFt"))
        }
        if (!is.null(dbd[["FVS_Summary_East"]])) dbd$FVS_Summary_East = 
            c(dbd$FVS_Summary_East,c("TPrdTpa","TPrdMCuFt","TPrdSCuFt","TPrdSBdFt"))
        if (!is.null(dbd[["CmpSummary"]])) {
          if("CmpSCuFt" %in% dbd[["CmpSummary"]]) dbd$CmpSummary = c(dbd$CmpSummary,
            c("CmpTPrdTpa","CmpTPrdTCuFt","CmpTPrdMCuFt","CmpTPrdSCuFt","CmpTPrdBdFt"))
            else dbd$CmpSummary = c(dbd$CmpSummary,
            c("CmpTPrdTpa","CmpTPrdTCuFt","CmpTPrdMCuFt","CmpTPrdBdFt"))
        }
        if (!is.null(dbd[["CmpSummary_East"]])) dbd$CmpSummary = c(dbd$CmpSummary_East,
            c("CmpTPrdTpa","CmpTPrdTCuFt","CmpTPrdMCuFt","CmpTPrdBdFt"))
        if (length(dbd)) fvsOutData$dbLoadData <- dbd
        sel = intersect(tbs, c("FVS_Summary2","FVS_Summary2_East")) #not both!
        if (length(sel)==0) sel = intersect(tbs, c("FVS_Summary","FVS_Summary_East")) #not both!
        if (length(sel)>1) sel = sel[1]
        # rearrange the table list so be organized by levels (i.e., tree level, stand level)
        globals$simLvl <- list("CmpCompute","CmpCalibStats","CmpStdStk","CmpStdStk_East","CmpStdStk_Metric",
          "CmpSummary","CmpSummary_East","CmpSummary_Metric",
          "CmpSummary2","CmpSummary2_East","CmpSummary2_Metric","CmpMetaData")
        globals$stdLvl <- list("FVS_Climate","FVS_Compute","FVS_EconSummary","FVS_BurnReport","FVS_Carbon",
            "FVS_Down_Wood_Cov","FVS_Down_Wood_Vol","FVS_Consumption","FVS_Hrv_Carbon",
            "FVS_PotFire","FVS_PotFire_Cond","FVS_PotFire_East","FVS_SnagSum","FVS_Fuels",
            "FVS_DM_Stnd_Sum","FVS_Regen_Sprouts","FVS_Regen_SitePrep","FVS_Regen_HabType",
            "FVS_Regen_Tally","FVS_Regen_Ingrow","FVS_RD_Sum","FVS_RD_Det","FVS_RD_Beetle",
            "FVS_Stats_Stand","FVS_StrClass","FVS_Summary2","FVS_Summary2_East","FVS_Summary2_Metric",
            "FVS_Summary","FVS_Summary_East","View_DWN","FVS_DM_Stnd_Sum_Metric","FVS_FIAVBC_Summary")
        globals$specLvl <- list("FVS_CalibStats","FVS_EconHarvestValue","FVS_Stats_Species",
              "FVS_DM_Spp_Sum","FVS_DM_Spp_Sum_Metric","FVS_InvReference")
        globals$dClsLvl <- list("StdStk","StdStk_East","StdStk_Metric","FVS_Mortality","FVS_DM_Sz_Sum",
                                "FVS_DM_Sz_Sum_Metric")
        globals$htClsLvl <- list("FVS_CanProfile")
        globals$treeLvl <- list("FVS_ATRTList","FVS_CutList","FVS_SnagDet","FVS_TreeList",
                                "FVS_TreeList_East","FVS_CutList_East","FVS_ATRTList_East",
                                "FVS_TreeList_Metric","FVS_CutList_Metric","FVS_ATRTList_Metric",
                                "FVS_DM_Treelist","FVS_DM_Treelist_Metric","FVS_FIAVBC_TreeList",
                                "FVS_FIAVBC_CutList","FVS_FIAVBC_ATRTList")
        globals$tbsFinal <- list("FVS_Cases")
        tbsFinal <- globals$tbsFinal
        if (any(tbs %in% globals$simLvl)) {
          tbsFinal <- c(tbsFinal,"-----Composite tables-----")
          simLvlIdx <- subset(match(globals$simLvl,tbs),match(globals$simLvl,tbs) != "NA")
          tbsFinal <- c(tbsFinal,sort(tbs[simLvlIdx]))
        }
        if (any(tbs %in% globals$stdLvl)) {
          tbsFinal = c(tbsFinal,"-----Stand-level tables-----")
          stdLvlIdx <- subset(match(globals$stdLvl,tbs),match(globals$stdLvl,tbs) != "NA")
          tbsFinal <- c(tbsFinal,sort(tbs[stdLvlIdx]))
        }
        if (any(tbs %in% globals$specLvl)) {
          tbsFinal = c(tbsFinal,"-----Species-level tables-----")
          specLvlIdx <- subset(match(globals$specLvl,tbs),match(globals$specLvl,tbs) != "NA")
          tbsFinal <- c(tbsFinal,sort(tbs[specLvlIdx]))
        }
        if (any(tbs %in% globals$dClsLvl)) {
          tbsFinal = c(tbsFinal,"-----Diameter-class tables-----")
          dClsLvlIdx <- subset(match(globals$dClsLvl,tbs),match(globals$dClsLvl,tbs) != "NA")
          tbsFinal <- c(tbsFinal,sort(tbs[dClsLvlIdx]))
        }
        if (any(tbs %in% globals$htClsLvl)) {
          tbsFinal = c(tbsFinal,"-----Height-class tables-----")
          htClsLvlIdx <- subset(match(globals$htClsLvl,tbs),match(globals$htClsLvl,tbs) != "NA")
          tbsFinal <- c(tbsFinal,sort(tbs[htClsLvlIdx]))
        }
        if (any(tbs %in% globals$treeLvl)) {
          tbsFinal = c(tbsFinal,"-----Tree-level tables-----")
          treeLvlIdx <- subset(match(globals$treeLvl,tbs),match(globals$treeLvl,tbs) != "NA")
          tbsFinal <- c(tbsFinal,sort(tbs[treeLvlIdx]))
        }
        othTbs = setdiff(tbs,tbsFinal)
        if (length(othTbs)) {
          tbsFinal = c(tbsFinal,"-----Other tables-----")
          tbsFinal <- c(tbsFinal,othTbs)
        }
        globals$tbsFinal <- tbsFinal
        if(is.null(input$selectdbtables)){
          updateSelectInput(session, "selectdbtables", choices=as.list(tbsFinal),
                          selected="FVS_Cases")
        } else if(globals$tableMessage) {
          updateSelectInput(session, "selectdbtables", choices=as.list(tbsFinal),
                          selected=input$selectdbtables[1])
          globals$tableMessage=FALSE
        } else {
          updateSelectInput(session, "selectdbtables", choices=as.list(tbsFinal),
                          selected=input$selectdbtables)
        }
        globals$tbsFinal <- list()
        setProgress(value = NULL)
      }, min=1, max=6)
    } else
    {
      updateSelectInput(session, "selectdbtables", choices=list())
      globals$exploring <- FALSE
    }
  })
  
  ## bldstdsk
  observeEvent(input$bldstdsk,{
      tbs <- myListTables(dbGlb$dbOcon)
cat ("tbs related to the run",tbs,"\n")
      if (length(tbs) == 0) 
      {
        updateSelectInput(session, "selectdbtables", choices=list())
        return()
      }
      dbhclassexp <- mkdbhCase(input$sdskwdbh,input$sdskldbh)
      tlprocs = c("tlwest"="FVS_TreeList" %in% tbs, "tleast"="FVS_TreeList_East" %in% tbs)
      if (any(tlprocs)) 
      {
        tlprocs = names(tlprocs)[tlprocs]
        chtoEast = function(cmd)
        {
          cmd = gsub("BdFt", "SBdFt",cmd,fixed=TRUE)
          cmd = gsub("TCuFt","SCuFt",cmd,fixed=TRUE)
          cmd = gsub("FVS_TreeList","FVS_TreeList_East",cmd,fixed=TRUE)
          gsub("FVS_CutList","FVS_CutList_East",cmd,fixed=TRUE)
        }
        for (tlp in tlprocs)          
        {
          if (tlp == "tlwest")
          {
            C_StdStkDBHSp  = Create_StdStkDBHSp
            C_HrvStdStk    = Create_HrvStdStk
            C_StdStk1Hrv   = Create_StdStk1Hrv
            C_StdStk1NoHrv = Create_StdStk1NoHrv
            C_StdStkFinal  = Create_StdStkFinal
            C_CmpStdStk    = Create_CmpStdStk
            detail = "Building StdStk from tree lists"
            stdstk = "StdStk"
            clname = "FVS_CutList"
          } else {
            C_StdStkDBHSp  = chtoEast(Create_StdStkDBHSp )
            C_HrvStdStk    = chtoEast(Create_HrvStdStk   )
            C_StdStk1Hrv   = chtoEast(Create_StdStk1Hrv  )
            C_StdStk1NoHrv = chtoEast(Create_StdStk1NoHrv)
            C_StdStkFinal  = chtoEast(Create_StdStkFinal )
            C_StdStkFinal  = gsub(" StdStk"," StdStk_East",C_StdStkFinal)
            C_CmpStdStk    = chtoEast(Create_CmpStdStk   )
            C_CmpStdStk    = gsub(" CmpStdStk"," CmpStdStk_East",C_CmpStdStk)
            C_CmpStdStk    = gsub(" StdStk "," StdStk_East ",C_CmpStdStk)
            detail = "Building StdStk_East from tree lists"
            stdstk = "StdStk_East"
            clname = "FVS_CutList_East"
          }
          exqury(dbGlb$dbOcon,C_StdStkDBHSp,subExpression=dbhclassexp,
                 asSpecies=paste0("Species",input$spCodes))
          if (clname %in% tbs)
          {
            exqury(dbGlb$dbOcon,C_HrvStdStk,subExpression=dbhclassexp,
                 asSpecies=paste0("Species",input$spCodes))
            exqury(dbGlb$dbOcon,C_StdStk1Hrv,subExpression=dbhclassexp,
                 asSpecies=paste0("Species",input$spCodes))
          } else {
            exqury(dbGlb$dbOcon,C_StdStk1NoHrv,subExpression=dbhclassexp,
                 asSpecies=paste0("Species",input$spCodes))
          }
          exqury(dbGlb$dbOcon,C_StdStkFinal)
          ncases = dbGetQuery(dbGlb$dbOcon, "select count(*) from tmp_cases;")[1,1]
          if (ncases > 1) exqury(dbGlb$dbOcon,C_CmpStdStk)
        }          
      }                                  
  })
  
  ## selectdbtables
  observe({
cat("selectdbtables\n")    
    if (is.null(input$selectdbtables) ||(length(input$selectdbtables)==1 
                          && length(grep("-----",input$selectdbtables))))
    {
      updateSelectInput(session, "selectdbvars", choices=list())               
    } else  {
      tables = input$selectdbtables 
      if(length(grep("-----",tables))) tables <- setdiff(tables,tables[grep("-----",tables)])
      # Logic to restrict combining tables from different levels (e.g., tree with stand-level).
      # Throw up warning, then have first table selection in level that threw error remain selected
      while(length(tables)>1)
      {
       # if(length(tables)==2 && "FVS_Cases" %in% tables) break
        if(length(tables)==2 && (tables[1] == "CmpCompute" && tables[2] == "CmpSummary")) break
        if(length(tables)==2 && (tables[1] == "CmpCompute" && tables[2] == "CmpSummary_East")) break
        if(length(tables)==2 && (tables[1] == "CmpCompute" && tables[2] == "CmpSummary_Metric")) break
        if(length(tables)==2 && (tables[1] == "CmpCompute" && tables[2] == "CmpSummary2")) break
        if(length(tables)==2 && (tables[1] == "CmpCompute" && tables[2] == "CmpSummary2_East")) break
        if(length(tables)==2 && (tables[1] == "CmpCompute" && tables[2] == "CmpSummary2_Metric")) break
        '%notin%' = Negate('%in%')
        if (any(tables %in% globals$simLvl) || (any(tables %in% globals$simLvl) && "FVS_Cases" %in% tables)) {
          session$sendCustomMessage(type = "infomessage",
              message = paste0("This composite table combination in not allowed"))
          tables <- tables[1]
          updateSelectInput(session, "selectdbtables", selected = tables)
          
        }
        selection = tables
        if ("FVS_Cases" %in% tables) selection = tables[-which(tables == "FVS_Cases")]
        if (any(tables %in% globals$stdLvl) && any(selection %notin% globals$stdLvl)) {
          session$sendCustomMessage(type = "infomessage",
              message = paste0("Stand-level tables can only be combined with other stand-level tables"))
          tables <- tables[1]
          updateSelectInput(session, "selectdbtables", selected = tables)
        }
        if (length(selection) > 1 && any(tables %in% globals$specLvl)) {
          session$sendCustomMessage(type = "infomessage",
               message = paste0("Species-level tables cannot be combined with any other tables"))
          tables <- tables[1]
          updateSelectInput(session, "selectdbtables", selected = tables)
        }
        # DBH-class tables cannot be combined with any other table
        if (length(selection) > 1 && any(selection %in% globals$dClsLvl)) {
          session$sendCustomMessage(type = "infomessage",
              message = paste0("DBH-class tables cannot be combined with any other tables"))
          tables <- tables[1]
          globals$tableMessage=TRUE
          updateSelectInput(session, "selectdbtables", selected = tables)
        }
        # HT-class tables cannot be combined with any other table
        if (length(selection) > 1 && any(selection %in% globals$htClsLvl)) {
          session$sendCustomMessage(type = "infomessage",
              message = paste0("HT-class tables cannot be combined with any other tables"))
          tables <- tables[1]
          globals$tableMessage=TRUE
          updateSelectInput(session, "selectdbtables", selected = tables)
        }
        # tree-level tables cannot be combined with any other table
        if (length(selection) > 1 && any(selection %in% globals$treeLvl)) {
          session$sendCustomMessage(type = "infomessage",
              message = paste0("Tree-level tables cannot be combined with any other tables"))
          tables <- tables[1]
          globals$tableMessage=TRUE
          updateSelectInput(session, "selectdbtables", selected = tables)
        }
        break
      }
      vars = lapply(tables,function (tb,dbd) paste0(tb,".",dbd[[tb]]),fvsOutData$dbLoadData)
      vars = unlist(vars)
      if (length(vars) == 0) return()
      fvsOutData$dbVars    <- vars
      fvsOutData$dbSelVars <- vars     
      updateSelectInput(session=session, "selectdbvars",choices=as.list(vars), 
                        selected=vars)
      output$tbSel <-renderUI({
        HTML(tables)
      })
    }
  })

  ## selectdbvars
  observe({
cat("selectdbvars\n")    
    if (!is.null(input$selectdbvars)) 
    {
      # if CaseID is part of the variable set, make sure it is selected at least once
      selidxCaseID=grep("CaseID",input$selectdbvars)
      if (!length(selidxCaseID)) 
      {
        idxCaseID=grep("CaseID",fvsOutData$dbVars)
        if (length(idxCaseID)) 
        {
          selvars=union(fvsOutData$dbVars[idxCaseID[1]],input$selectdbvars)
          updateSelectInput(session=session, "selectdbvars",choices=as.list(fvsOutData$dbVars), 
                            selected=selvars)
        }
      }
      fvsOutData$dbSelVars <- input$selectdbvars
cat ("input$selectdbvars=",input$selectdbvars,"\n") 
    }
  })
    
})
