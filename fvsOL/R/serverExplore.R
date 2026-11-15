# View Outputs > Explore: table filtering, renderTable, browse variables.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvExplore <- quote({
  ## Custom Query Functionality removed (DW 10/2026)

  ## Explore
  observe({
    if (input$leftPan == "Explore")
    {
      globals$exploring <- TRUE
cat ("Explore, length(fvsOutData$dbSelVars)=",length(fvsOutData$dbSelVars),"\n") 
      if (length(fvsOutData$dbSelVars) == 0) 
      {
       initTableGraphTools(globals,session,output,fvsOutData)
       output$table <- renderTable(NULL)
       return()
      }
      withProgress(session, 
      {  
        iprg = 1
        setProgress(message = "Processing variable names", detail="",
                    value = iprg)
        tbs = unique(unlist(lapply(strsplit(fvsOutData$dbSelVars,".",fixed=TRUE),
              function (x) x[1])))
        if (length(tbs) == 0) return()
        cols = unique(unlist(lapply(strsplit(fvsOutData$dbSelVars,".",fixed=TRUE),
              function (x) x[2])))
        if (length(cols) == 0) return()
        tbgroup=c("CmpMetaData"="0","CmpSummary"=1, "CmpSummary_East"=1, 
          "CmpSummary2"=1, "CmpSummary2_East"=1,"CmpSummary2_Metric"=1,
          "CmpCompute"=1, "CmpCalibStats"=1,"CmpStdStk"=1, "CmpStdStk_East"=1, "CmpStdStk_Metric"=1, 
          "StdStk"=3, "StdStk_East"=3, "StdStk_Metric"=3, "FVS_ATRTList"=8,
          "FVS_Cases"=2, "FVS_Climate"=4, "FVS_Compute"=2, "FVS_CutList"=8,
          "FVS_EconHarvestValue"=2, "FVS_EconSummary"=2, "FVS_BurnReport"=2,
          "FVS_CanProfile"=5, "FVS_Carbon"=2, "FVS_SnagDet"=6, "FVS_Down_Wood_Cov"=2,
          "FVS_Down_Wood_Vol"=2, "FVS_Consumption"=2, "FVS_Hrv_Carbon"=2,
          "FVS_Mortality"=2, "FVS_PotFire_East"=2, "FVS_PotFire"=2, "FVS_SnagSum"=2,
          "FVS_Fuels"=2, "FVS_DM_Spp_Sum"=7, "FVS_DM_Spp_Sum_Metric"=7, 
          "FVS_DM_Stnd_Sum"=2, "FVS_DM_Stnd_Sum_Metric"=2, "FVS_DM_Sz_Sum"=2, "FVS_DM_Sz_Sum_Metric"=2,
          "FVS_RD_Sum"=2, "FVS_RD_Det"=2, "FVS_RD_Beetle"=2, "FVS_StrClass"=2,
          "FVS_Summary_East"=2, "FVS_Summary"=2, "FVS_TreeList"=8,"FVS_ATRTList"=8,
          "FVS_CutList"=8,"FVS_TreeList_East"=8,"FVS_ATRTList_East"=8,"FVS_CutList_East"=8,
          "FVS_TreeList_Metric"=8,"FVS_ATRTList_Metric"=8,"FVS_CutList_Metric"=8,
          "FVS_DM_Treelist"=8,"FVS_DM_Treelist_Metric"=8,
          "FVS_FIAVBC_TreeList"=8, "FVS_FIAVBC_ATRTList"=8, "FVS_FIAVBC_CutList"=8) 
        tbg = tbgroup[tbs]
        arena = is.na(tbg)
        if (any(arena))
        {
          tbg[arena] = 3
          names(tbg)[arena] = tbs[arena]
        }
        if (max(tbg) > 1 && ! ("FVS_Cases" %in% tbs)) tbg = c("FVS_Cases"=2,tbg)
        dat=NULL
        for (tb in names(sort(tbg)))
        {
cat ("tb=",tb," len(dat)=",length(dat),"\n")
          iprg = iprg+1
          setProgress(message = "Processing tables", detail=tb,value = iprg)
          if (tb %in% c("CmpSummary","CmpSummary_East","CmpSummary2",
                        "CmpSummary2_East","CmpSummary2_Metric")) 
          {            
            dtab <- dbReadTable(dbGlb$dbOcon,tb)
            if (tb %in% c("CmpSummary","CmpSummary_East")) 
              dtab <- ddply(dtab,.(MgmtID),.fun=function (x) 
                      setupSummary(x,composite=TRUE)) else
              dtab$RmvCode <- as.factor(dtab$RmvCode)   
            dtab$Year <- as.factor(dtab$Year) 
            dtab$MgmtID <- as.factor(dtab$MgmtID) 
            dat[[tb]] <- dtab
          } else {
            dtab = if ("CaseID" %in% dbListFields(dbGlb$dbOcon,tb))
              dbGetQuery(dbGlb$dbOcon,paste0("select * from ",tb,
                   " where CaseID in (select CaseID from tmp_cases)")) else
              dbGetQuery(dbGlb$dbOcon,paste0("select * from ",tb))
            # fix the stand and stock table.
            if (tb == "StdStk") 
            {
              fix = grep ("Hrv",colnames(dtab))
              if (length(fix)) for (ifx in fix) dtab[[ifx]] = as.numeric(dtab[[ifx]])
            } else if (tb == "FVS_Summary" || tb == "FVS_Summary_East") 
            {
              dtab <- ddply(dtab,.(CaseID),.fun=setupSummary)
              dtab$ForTyp =as.factor(dtab$ForTyp)
              dtab$SizeCls=as.factor(dtab$SizeCls)
              dtab$StkCls =as.factor(dtab$StkCls)
            } else if (tb == "FVS_Summary2" || tb == "FVS_Summary2_East") 
            { 
              dtab$ForTyp =as.factor(dtab$ForTyp)
              dtab$SizeCls=as.factor(dtab$SizeCls)
              dtab$StkCls =as.factor(dtab$StkCls)
              dtab$RmvCode=as.factor(dtab$RmvCode) 
            } else if (tb == "FVS_FIAVBC_Summary") 
            { 
              dtab$RmvCode=as.factor(dtab$RmvCode) 
            } else if (tb == "FVS_Cases") dtab$RunTitle=trim(dtab$RunTitle) 
            cls = intersect(c(cols,"StandID","MgmtID","RunTitle","srtOrd"),colnames(dtab))
            if (length(cls) > 0) dtab = dtab[,cls,drop=FALSE]       
            for (col in colnames(dtab)) if (is.character(dtab[,col])) 
                dtab[,col] = as.factor(dtab[,col])
            if (!is.null(dtab$Year))    dtab$Year    =as.factor(dtab$Year)        
            if (!is.null(dtab$TreeVal)) dtab$TreeVal =as.factor(dtab$TreeVal)        
            if (!is.null(dtab$PtIndex)) dtab$PtIndex =as.factor(dtab$PtIndex)        
            if (!is.null(dtab$SSCD))    dtab$SSCD    =as.factor(dtab$SSCD) 
            rownames(dtab) = 1:nrow(dtab)
            # fix the species column.
            spcd=paste0("Species",input$spCodes) 
            if (spcd %in% names(dtab))
            {
              if (is.null(dtab$Species)) dtab$Species=dtab[,spcd] else 
              {
                na=is.na(dtab$Species)
                dtab$Species = as.character(dtab$Species)
                dtab$Species[na] = as.character(dtab[na,spcd])
                dtab$Species = as.factor(dtab$Species)
              }
            }
            dat[[tb]] = dtab
          }
        }
cat ("Explore, len(dat)=",length(dat),"\n") 
        if (length(dat) == 0)
        {
          initTableGraphTools(globals,session,output,fvsOutData)
          return()
        }
        iprg = iprg+1
        setProgress(message = "Merging selected tables", detail  = "", value = iprg)
        inch = 0
        mdat = NULL
        for (tb in names(dat))      
        {
cat ("tb=",tb," is.null(mdat)=",is.null(mdat),"\n") 
          if (is.null(mdat)) mdat = dat[[tb]] else
          {
             mrgVars = intersect(names(mdat),c("CaseID","Year","StandID","MgmtID","RmvCode"))
             mrgVars = intersect(mrgVars,names(dat[[tb]]))
             setProgress(message = "Merging selected tables", 
                         detail  = tb, value = iprg)
cat ("tb=",tb," mrgVars=",mrgVars,"\n")
             merged = merge(mdat,dat[[tb]], by=mrgVars)
             mdat = if (nrow(merged)) merged else
             {
               common = intersect(names(mdat),names(dat[[tb]]))
               unique = setdiff(names(dat[[tb]]),c(common,mrgVars))
               nd=matrix(data=NA,ncol=length(unique),nrow=nrow(mdat))
               colnames(nd)=unique
               mdat=cbind(mdat,nd)
               common = intersect(names(mdat),names(dat[[tb]]))
               unique = setdiff(names(mdat),c(common,mrgVars,"MgmtID","RunTitle"))
               nd=matrix(data=NA,ncol=length(unique),nrow=nrow(dat[[tb]]))
               colnames(nd)=unique
               nd = data.frame(nd)
               idr=match(as.character(dat[[tb]]$CaseID),as.character(dat$FVS_Cases$CaseID))            
               nd=cbind(dat$FVS_Cases[idr,c("MgmtID","RunTitle")],nd)
               dat[[tb]]=cbind(dat[[tb]],nd)
               rbind(mdat,dat[[tb]])
             }
          }
        }
        if (!is.null(mdat$CaseID))
        {
          mdat=merge(mdat,dbGetQuery(dbGlb$dbOcon,"select _RowID_,CaseID from tmp_cases"),by="CaseID")
          mdat=mdat[order(mdat$rowid,1:nrow(mdat)),]
          mdat$rowid=NULL
        }
        fvsOutData$dbData = mdat
        iprg = iprg+1
        # do rep assignments
        setProgress(message = "Setting stand reps", detail  = "", value = iprg)
        newSid = as.character(fvsOutData$dbData$StandID)
        icid = as.integer(fvsOutData$dbData$CaseID)
        imid = as.integer(fvsOutData$dbData$MgmtID)
        isid = as.integer(fvsOutData$dbData$StandID)+as.integer(imid*1000000)
        sidch = FALSE
        for (id in unique(isid))
        {
          nq = unique(icid[isid==id])
          if (length(nq)==1) next
          mq = unique(imid[isid==id])
          sidch = TRUE
          rep = 0
          for (iq in nq) 
          {
            rep = rep+1
            chng = icid==iq
            newSid[chng] = sprintf("%s r%03i",newSid[chng],rep)
          }
        }
        if (sidch) fvsOutData$dbData$StandID = as.factor(newSid)
        iprg = iprg+1                                      
        setProgress(message = "Processing variables", detail=tb,value = iprg)
        mdat = fvsOutData$dbData
        vars = colnames(mdat)
        sby = NULL
        for (v in c("MgmtID","StandID","Stand_CN","Year","RmvCode","PtIndex",
           "TreeIndex","Species","DBHClass")) if (v %in% vars) sby=c(sby,v)
        sby = if (length(sby)) 
        {
          cmd = paste0("order(",paste(paste0("mdat$",sby),collapse=","),
               if("srtOrd" %in% vars) ",mdat$srtOrd)" else ")")
cat ("cmd=",cmd,"\n")
          sby = try(eval(parse(text=cmd)))
          if (inherits(sby,"try-error")) NULL else sby
        } else NULL
        vars = intersect(c("MgmtID","Stand_CN","StandID","Year",
                           "Species","DBHClass"),colnames(mdat))
        vars = c(vars,setdiff(colnames(mdat),vars))
        endvars = intersect(c("SamplingWt","Variant","RunTitle",
                         "Groups","RunDateTime","KeywordFile","CaseID"),vars)
        vars = union(setdiff(vars,endvars),endvars)
        if (!is.null(sby)) mdat = mdat[sby,vars,drop=FALSE]
        mdat$srtOrd = NULL
        vars = colnames(mdat)     
        if (length(vars) == 0) 
        {
          setProgress(value = NULL)  
          return()
        }
        iprg = iprg+1
        setProgress(message = "Loading selection widgets", detail  = "", value = iprg)
        if (is.null(mdat$RunTitle)) 
          updateSelectInput(session, "stdtitle", choices  = list("None loaded"), 
            selected = NULL) else 
          updateSelectInput(session, "stdtitle", 
            choices=as.list(levels(mdat$RunTitle)), selected=levels(mdat$RunTitle))      
        iprg = iprg+1
        setProgress(message = "Loading selection widgets", detail  = "", value = iprg)
        if (is.null(mdat$StandID)) 
        {
          cho = "None loaded"
          updateSelectInput(session,"stdid",choices =list(cho),selected = NULL) 
        } else {
          cho = levels(mdat$StandID)
          sel = cho
          if (length(cho) > 5000) 
          {
            cho = paste0("None loaded (",length(cho)," stands)")
            sel = NULL
          }
          updateSelectInput(session,"stdid",choices=as.list(cho),selected=sel)
        }
        globals$exploreChoices$stdid = cho
        if (is.null(mdat$Groups)) 
        {
          cho = "None loaded"
          updateSelectInput(session,"stdgroups",choices=as.list(cho),selected = NULL) 
        } else {
          cho = sort(unique(unlist(lapply(levels(mdat$Groups), function (x)
                trim(scan(text=x,what="character",sep=",",quiet=TRUE))))))           
          updateSelectInput(session, "stdgroups",choices=as.list(cho),selected=cho)
        }
        globals$exploreChoices$stdgroups = cho
        if (is.null(mdat$MgmtID)) 
        {
          cho = "None loaded"         
          updateSelectInput(session,"mgmid",choices=as.list(cho),selected=0) 
        } else {
          cho = levels(mdat$MgmtID)
          updateSelectInput(session, "mgmid",choices=as.list(cho),selected=cho)
        }
        globals$exploreChoices$mgmid = cho
        if (length(intersect(c("FVS_TreeList","FVS_ATRTList","FVS_CutList",
                "FVS_TreeList_East","FVS_ATRTList_East","FVS_CutList_East",
                "FVS_TreeList_Metric","FVS_ATRTList_Metric","FVS_CutList_Metric",
                "FVS_FIAVBC_TreeList", "FVS_FIAVBC_ATRTList", "FVS_FIAVBC_CutList"
              ),names(dat))))
          updateSelectInput(session, "plotType",selected="scat") else 
          if (length(intersect(c("StdStk","CmpStdStk","StdStk_East",
             "CmpStdStk_East","StdStk_Metric","CmpStdStk_Metric"),names(dat)))) 
              updateSelectInput(session, "plotType",selected="bar") else
              updateSelectInput(session, "plotType",selected="line")
        iprg = iprg+1
        setProgress(message = "Loading selection widgets", detail  = "", value = iprg)
        if (is.null(mdat$Year)) 
        {
          cho = "None loaded"       
          updateSelectInput(session,"year",choices=as.list(cho),selected = NULL) 
        } else {
          cho  = levels(mdat$Year)
          isel = max(1,length(cho) %/% 2)
          sel =  if (length(intersect(c("FVS_TreeList","FVS_ATRTList","FVS_CutList",
              "FVS_TreeList_East","FVS_ATRTList_East","FVS_CutList_East",
              "FVS_FIAVBC_TreeList", "FVS_FIAVBC_ATRTList", "FVS_FIAVBC_CutList",
              "StdStk","StdStk_East","StdStk_Metric","CmpStdStk","CmpStdStk_East",
              "CmpStdStk_Metric"),names(dat)))) 
              cho[isel] else cho 
          updateSelectInput(session, "year", choices=as.list(cho), selected=cho[1])
        }        
        globals$exploreChoices$year = cho
        if (is.null(mdat$Species)) 
        {
          cho = "None loaded"       
          updateSelectInput(session, "species", choices  = list(cho), selected = NULL) 
        } else {
          cho = levels(mdat$Species)
          updateSelectInput(session, "species",
             choices=as.list(cho), selected=setdiff(cho,"All"))
        }
        globals$exploreChoices$species = cho        
        if (is.null(mdat$DBHClass)) 
        {
          cho = "None loaded"
          updateSelectInput(session,"dbhclass",choices=list(cho),selected = NULL) 
        } else {
          cho = levels(mdat$DBHClass)
          sel = if ("All" %in%  cho) "All" else cho
          updateSelectInput(session, "dbhclass", choices=as.list(cho), selected=sel)
        }           
        globals$exploreChoices$dbhclass = cho        
        iprg = iprg+1
        setProgress(message = "Finishing", detail  = "", value = iprg)
        fvsOutData$dbData <- mdat
        vars <- c("Select all",vars)
        fvsOutData$browseVars <- vars
        varsList <- as.list(vars)
        vars = setdiff(vars,c("Select all","Stand_CN","KeywordFile",
           "SamplingWt","Variant","Version", 
           "RV", "RunDateTime"))
        fvsOutData$browseSelVars <- vars
        updateCheckboxGroupInput(session, "browsevars", choices=varsList, 
                                 selected=vars,inline=TRUE)                               
        setProgress(value = NULL)          
      }, min=1, max=12)
    } 
  })
 
  ## renderTable
  renderTable <- function (dat)
  {
cat ("renderTable, is.null=",is.null(dat)," nrow(dat)=",nrow(dat),"\n")
    if (!is.null(dat) && ncol(dat)==0){
      renderRHandsontable(NULL)
      return() 
    }
    if (!is.null(dat) && nrow(dat) > 0)
    {                                 
      dat = lapply(dat,function (x) 
        if (is.factor(x)) levels(x)[as.numeric(x)] else x)
      dat = as.data.frame(dat)
      for (i in 1:ncol(dat)) 
        if (class(dat[[i]]) == "numeric") dat[[i]] = round(dat[[i]],3)
    }
    if(length(grep("X_",names(dat)))){
      idxs <- grep("X_",names(dat))
      for(i in 1:length(grep("X_",names(dat)))){
        names(dat)[idxs[i]] <- sub('.', '', names(dat)[idxs[i]])
      }
    }
    renderRHandsontable(if (is.null(dat) || nrow(dat)==0) NULL else 
              rhandsontable(dat,readOnly=TRUE,useTypes=FALSE,contextMenu=FALSE,
              width="100%",height=700))
  }
  
  ## browsevars       
  observe({
    if (is.null(input$browsevars)) return()
cat("filterRows and/or pivot\n")
    if(fvsOutData$browseVars[1]==input$browsevars[1]){
        fvsOutData$browseSelVars <- fvsOutData$browseVars[-1]
        updateCheckboxGroupInput(session, "browsevars", choices=as.list(fvsOutData$browseVars), 
                                 selected=fvsOutData$browseVars,inline=TRUE)
        globals$selAllVars = TRUE
      if(length(input$browsevars)==(length(fvsOutData$browseVars)-1) && globals$selAllVars){
        fvsOutData$browseSelVars <- input$browsevars[-1]
        updateCheckboxGroupInput(session, "browsevars", choices=as.list(fvsOutData$browseVars), 
                                 selected=fvsOutData$browseSelVars,inline=TRUE)
        globals$selAllVars = FALSE
      }
    }else if (fvsOutData$browseVars[1]!=input$browsevars[1] && globals$selAllVars){
      fvsOutData$browseSelVars <- character()
      updateCheckboxGroupInput(session, "browsevars", choices=as.list(fvsOutData$browseVars),
                                 selected=fvsOutData$browseSelVars,inline=TRUE)
      globals$selAllVars = FALSE
    }else fvsOutData$browseSelVars <- input$browsevars
    dat = if (length(input$stdtitle) || length(input$stdgroups) ||   
              length(input$stdid)    || length(input$mgmid)     || 
              length(input$year)     || length(input$species)   || 
              length(input$dbhclass))                       
      fvsOutData$dbData[filterRows(fvsOutData$dbData, input$stdtitle, input$stdgroups,
          input$stdid, input$mgmid, input$year, input$species, input$dbhclass)
          ,fvsOutData$browseSelVars,drop=FALSE] else 
      fvsOutData$dbData[,fvsOutData$browseSelVars,drop=FALSE]  
    if (!is.null(input$pivVar)  && input$pivVar  != "None" &&
        !is.null(input$dispVar) && input$dispVar != "None")  
          dat = pivot(dat,input$pivVar,input$dispVar)                                                        
    fvsOutData$render = dat
    tableDisplayLimit = 5000
    if (nrow(dat) > tableDisplayLimit) 
    {
      msg=paste0("Table display limit exceeded. ",
        tableDisplayLimit," of ",nrow(dat)," displayed. Use Download table",
        " to download all rows.")
      output$tableLimitMsg<-renderText(msg)
      dat = dat[1:tableDisplayLimit,,drop=FALSE] 
    } else output$tableLimitMsg<-NULL
    output$table <- renderTable(dat) 
  })               
          
})
