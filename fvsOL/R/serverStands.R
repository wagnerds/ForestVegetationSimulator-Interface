# Simulate > Stands: stand selection, groups, group modification, stand list upload.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvStands <- quote({
  ## Stands tab 
  observe({    
    if (input$topPan == "Simulate" || input$rightPan == "Stands") 
    {
cat ("Stands\n")
      f1=system.file("extdata", "FVS_Data.db.default",package="fvsOL")
      output$sayDataSource <-renderUI((tags$b(paste0(
        if (areFilesIdentical(f1=f1,f2="FVS_Data.db")) "Training" else "User",
          " data installed"))))
      initNewInputDB(session,output,dbGlb)
      loadStandTableData(globals, dbGlb$dbIcon)
      updateStandTableSelection(session,input,globals)
      loadVarData(globals,input,dbGlb$dbIcon)                                              
      updateVarSelection(globals,session,input)
    }
  })
    
  ## inTabs has changed
  observe({
    if (is.null(input$inTabs)) return()
    reloadStandSelection(session,input)
cat ("inTabs\n")
  })
  
  ## inVars has changed
  observe({
    if (is.null(input$inVars)) return()
    globals$activeVariants = input$inVars
    globals$activeExtens = c("base",globals$activeFVS[[paste0("FVS",globals$activeVariants)]][-1])    
    reloadStandSelection(session,input)
cat ("inVars globals$activeVariants=",globals$activeVariants,
     " globals$activeExtens=",globals$activeExtens," \n")
  })

  ## reloadStandSelection
  reloadStandSelection <- function (session,input)
  isolate({
cat ("in reloadStandSelection\n")
    if (is.null(input$inTabs) || is.null(input$inVars)) return()
    sid = if (input$inTabs %in% c("FVS_PlotInit","FVS_PlotInit_Plot")) "StandPlot_ID" else "Stand_ID"      
    grps = try(dbGetQuery(dbGlb$dbIcon,paste0('select ',sid,",Groups, INV_YEAR from ",input$inTabs,
              ' where lower(variant) like "%',tolower(input$inVars),'%"')))
    grps <- subset(grps, !is.na(grps[grep("inv_year",tolower(names(grps)))]))
    grps <- subset(grps, grps[grep("inv_year",tolower(names(grps)))] !="")
    if (inherits(grps,"try-error") || is.null(grps) || nrow(grps) == 0)
    {
      dbExecute(dbGlb$dbIcon, "drop table if exists tmp_grps")
      dbWriteTable(dbGlb$dbIcon, "tmp_grps", data.frame(Stand_ID = "", Grp=""),
                   temporary = TRUE, overwrite = TRUE)
      updateSelectInput(session=session, inputId="inGrps",choices=list())
      updateSelectInput(session=session, inputId="ExtGroups",choices=list())
      updateSelectInput(session=session, inputId="inStds",list())
    } else {
      if(tolower(input$inVars)=="cr"){# check for 5 GENGYM submodel variant codes in the input data
        test <- try(dbGetQuery(dbGlb$dbIcon,paste0('select distinct variant from ',input$inTabs)))
        test=sort(unique(tolower(scan(text=gsub(","," ",test[,1]),what="character",
                                      strip.white=TRUE,sep=" ",quiet=TRUE))))
        CRsubModels <- c("sm","sp","bp","sf","lp")
        if(any(!is.na(match(test,CRsubModels)))){
          CRsubModels <- CRsubModels[na.omit(match(test,CRsubModels))]
          for(i in 1:length(CRsubModels)){
            subgrps <- try(dbGetQuery(dbGlb$dbIcon,paste0('select ',sid,",Groups from ",input$inTabs,
                                                          ' where lower(variant) like "%',tolower(CRsubModels[i]),'%"')))
            if(length(subgrps))grps <- rbind(grps,subgrps)
          }
        }
      }

      dd = apply(grps,1,function (x)
        { 
          gr=unlist(strsplit(x[2]," "))
          st=rep(x[1],length(gr))
          attributes(st) = NULL
          attributes(gr) = NULL
          list(st,gr)    
        })
      dd = lapply(dd,function(x) matrix(unlist(x),ncol=2))
      dd = do.call(rbind,dd)
      colnames(dd) = c(if (input$inTabs %in% c("FVS_PlotInit","FVS_PlotInit_Plot"))
                           "StandPlot_ID" else "Stand_ID","Grp")      
      dd = as.data.frame(dd)
      dbExecute(dbGlb$dbIcon, "drop table if exists tmp_grps")
      dbWriteTable(dbGlb$dbIcon,"tmp_grps",dd, temporary = TRUE, overwrite = TRUE)
      selGrp = dbGetQuery(dbGlb$dbIcon,
        'select distinct Grp from tmp_grps order by Grp')[,1]

      updateSelectInput(session=session, inputId="inGrps",    choices=as.list(selGrp))
      updateSelectInput(session=session, inputId="ExtGroups", choices = as.list(selGrp))
      updateSelectInput(session=session, inputId="inStds",    choices=list())
      updateSelectInput(session=session, inputId="GroupStands", choices=list())
      output$stdSelMsg <- renderUI(NULL)
    }
  })

  ## inGrps, inAnyAll, or inStdFindBut has changed
  observe({
    if (input$topPan == "Simulate" || input$rightPan == "Stands")
    {
cat ("inGrps inAnyAll inStdFindBut\n")
      # Ensure reactivity to inStdFindBut
      input$inStdFindBut
      output$uploadStdLst_ui <- renderUI({
        fileInput(inputId = "uploadStndLst",
        label = paste0("Upload Stand / Plot list (txt, xlsx)"),
        accept = c(".txt", ".xlsx"),
        width = "90%")
      })
      if (is.null(input$inGrps))          
      {
        output$stdSelMsg <- renderUI(NULL)
        updateSelectInput(session=session, inputId="inStds", choices=list())
      } else {  
         dbExecute(dbGlb$dbIcon, "drop table if exists tmp_sgrps")
         dbWriteTable(dbGlb$dbIcon, "tmp_sgrps", data.frame(SelGrps = input$inGrps),
                      temporary = TRUE, overwrite = TRUE)
         sid = if (input$inTabs %in% c("FVS_PlotInit","FVS_PlotInit_Plot"))
               "StandPlot_ID" else "Stand_ID"
         stds = try(dbGetQuery(dbGlb$dbIcon,paste0('select ',sid,' from tmp_grps ',
                      'where Grp in (select SelGrps from tmp_sgrps)')))
        if (inherits(stds,"try-error")) return()                                                             
cat ("inGrps, nrow(stds)=",nrow(stds),"\n")
        globals$selStds = stds[,1]
        globals$selStds = if (input$inAnyAll == "Any") unique(globals$selStds) else
        {
          stdCnts = table(globals$selStds) 
          names(stdCnts[stdCnts == length(input$inGrps)])                                                                                                                       
        }                                                                                                
        isolate({
cat ("input$inStdFind=",input$inStdFind,"\n")
          srchStr = input$inStdFind 
          if (length(globals$selStds) && nchar(srchStr)) globals$selStds = 
            globals$selStds[grep(srchStr,globals$selStds)]
        })          
        nstds = length(globals$selStds)
        msg = paste0(length(globals$selStds)," Stand(s) in ",length(input$inGrps)," Group(s)")
        if (nchar(srchStr)) msg = paste0(msg," and matching search string ",srchStr)
        msg = paste0(msg,"<br>")
        output$stdSelMsg <- renderUI(HTML(msg))
        stds = if (length(globals$selStds) <= 220)  globals$selStds else
          c(globals$selStds[1:200],paste0("<< Display 201 to ",
          min(400,length(globals$selStds ))," of ",length(globals$selStds )," >>"))
        updateSelectInput(session=session, inputId="inStds", 
             choices=as.list(stds))
      }
    }
  })

  observe({
    if (is.null(input$ExtGroups)){
      updateSelectInput(session=session, inputId = "GroupStands", choices = list())
    }
    else{
      dbExecute(dbGlb$dbIcon, "drop table if exists tmp_segrps")
      dbWriteTable(dbGlb$dbIcon, "tmp_segrps", data.frame(SelGrps = input$ExtGroups),
                   temporary = TRUE, overwrite = TRUE)
      sid = if (input$inTabs %in% c("FVS_PlotInit","FVS_PlotInit_Plot"))"StandPlot_ID" else "Stand_ID"
      stds = try(dbGetQuery(dbGlb$dbIcon,paste0('select distinct ',sid,' from tmp_grps ',
                      'where Grp in (select SelGrps from tmp_segrps)')))
      if (inherits(stds,"try-error")) return()   
      stds = stds[,1]
      updateSelectInput(session=session, inputId="GroupStands", choices=as.list(stds))
    }
  })

  ## inStds has changed
  observe({
cat ("inStds, length(input$inStds)=",length(input$inStds),"\n")
    if (length(input$inStds) != 1) return()
    prts = unlist(strsplit(input$inStds[1]," "))
    if (prts[1] != "<<") return()
    nprts = as.numeric(prts[c(3,5,7)])
cat ("inStds, nprts=",nprts,"\n")
    up = nprts[c(1,2)] - 200
    if (up[2]-up[1] < 200) up[2] = min(up[1]+200,length(globals$selStds))
    upM = if (up[1] > 0) paste0("<< Display ",up[1]," to ",
      min(up[2],length(globals$selStds))," of ",
      length(globals$selStds)," >>") else NULL
    dn = nprts[c(1,2)] + 200
    if (dn[2]-dn[1] < 200) dn[2] = min(dn[1]+200,length(globals$selStds))
    dn[2] = min(dn[2],length(globals$selStds))
    dnM = if (dn[1] <= length(globals$selStds)) paste0("<< Display ",dn[1]," to ",
      dn[2]," of ",length(globals$selStds)," >>") else NULL
    stds = c(upM,globals$selStds[nprts[1]:nprts[2]],dnM)
cat ("inStds upM=",upM," dnM=",dnM,"\n")    
    updateSelectInput(session=session, inputId="inStds", choices=as.list(stds))   
  })

  ## CommitGroupMod:
  observeEvent(input$CommitGroupMod, {
    updateTable = input$inTabs
    variant = input$inVars
    if (is.null(variant)){
      showModal(shiny::modalDialog(title = "No Variant Selected", 
                "Please select a Variant from the Variants dropdown menu"))
      return()
    }
    sid = if (updateTable %in% c("FVS_PlotInit","FVS_PlotInit_Plot"))
               "StandPlot_ID" else "Stand_ID"
    usrStds = as.list(strsplit(input$UserStandGroup, split = "\\+n|[^A-Za-z0-9_]"))
    selStds = as.list(input$GroupStands)
    standsToModify <- selStds
    i = length(standsToModify)
    for (x in usrStds[[1]]){
      i = i + 1
      standsToModify[i] <- x
    }

    if(length(standsToModify) == 0){
      showModal(shiny::modalDialog(title = "No Stands Identified", 
                "Please include a list of stands to modify "))
      return()
    }
    standsToModify <- unique(standsToModify)
    validStandList = TRUE
    standsNotFound <- list()
    query <- sprintf("SELECT %s FROM %s
                      WHERE %s IN (?) AND INSTR(LOWER(VARIANT), LOWER(?)) > 0",   
                      tolower(sid), tolower(updateTable), tolower(sid))
    for (stand in standsToModify) {
      res = dbGetQuery(dbGlb$dbIcon, query, params = c(stand, list(tolower(variant))))
      if(length(res[[1]]) == 0) {
        standsNotFound <- c(standsNotFound,stand)
      }
    }

    # Filter out stands not found in current variant
    standsToModify <- standsToModify[! standsToModify %in% standsNotFound]
    modGroupGlb$stands <- standsToModify
    modGroupGlb$sid <- sid
    if (length(standsToModify) == 0 && length(standsNotFound) > 0) {
        validStandList = FALSE
        showModal(shiny::modalDialog(title = "No Matching Stands Found", 
        "No stands (plots) matching input list were found in database for currently selected variant.  Please verify input list for accuracy."))
        return()
    }
    else if (length(standsNotFound) > 0) {
        validStandList = FALSE
        showModal(shiny::modalDialog(title = "Partial Matching List Found", 
        "Some stands (plots) matching input list were found in database for currently selected variant and will be processed for requested action.  
        Please verify input list for accuracy. ", footer = actionButton("StdLstConfirm", "Confirm")))
    }

    if (validStandList) {
      processGroupRequest()
    }
  })

    observeEvent(input$StdLstConfirm, {
      removeModal()
      processGroupRequest()
    })

  ## Upload Stand List for Group Modification
  observeEvent(input$uploadStndLst, {
    fext = tools::file_ext(basename(input$uploadStndLst$name))
    if( !(fext %in% c("txt","xlsx"))){
      showModal(shiny::modalDialog(title="Unsupported file type",
      "Please select a .txt or .xlsx file"))
      return()
    }
    masterDir = getwd()
    fname = basename(input$uploadStndLst$datapath)
    fdir = dirname(input$uploadStndLst$datapath)
    setwd(fdir)
    sid = if (input$inTabs %in% c("FVS_PlotInit","FVS_PlotInit_Plot")) "StandPlot_ID" 
          else "Stand_ID"

    if(fext == "xlsx"){
      # Read excelfile
      sheets = tolower(getSheetNames(fname))
      if(tolower(input$inTabs) %in% sheets) {
        shtIdx = match(tolower(input$inTabs), sheets)
      }
      else if (length(sheets) == 1){
        shtIdx = 1
      }
      else {
        # Error out gracefully
        showModal(shiny::modalDialog(title="Invalid File",
        paste0("When using a multipage excel file, please ensure the data you wish to load 
        is located in a tab with the same name as the current 'Inventory Data Table' (e.g. FVS_StandInit, FVS_PlotInit) type selected.")))
        output$uploadStdLst_ui <- renderUI({
          fileInput(inputId = "uploadStndLst",
          label = paste0("Upload Stand / Plot list (txt, xlsx)"),
          accept = c(".txt", ".xlsx"),
          width = "90%")
        })
        setwd(masterDir)
        return()
      }

      usrTable = try(read.xlsx(xlsxFile = fname, sheet = shtIdx))
      sidIdx = match(tolower(sid), tolower(colnames(usrTable)))
      if(ncol(usrTable) > 1 && is.null(usrTable[[sidIdx]])){
        showModal(shiny::modalDialog(title="Missing Column Name","Multiple columns found, table is missing column identifier '",
                                     sid, "'.  Please update input file."))
        setwd(masterDir)
        return()
      }
      if(ncol(usrTable) == 1) {
        updateTextAreaInput(session=session, inputId="UserStandGroup", value = usrTable[[1]])  
      }
      else {
        updateTextAreaInput(session=session, inputId="UserStandGroup", value = usrTable[[sidIdx]])
      }
    }
    if (fext == "txt"){
      usrData = try(read.table(fname, colClasses = "character"))
      if(tolower(usrData[[1]][1]) == tolower(sid)){
        updateTextAreaInput(session=session, inputId="UserStandGroup", value = usrData[[1]][-1])
      }
      else {
        updateTextAreaInput(session=session, inputId="UserStandGroup", value = usrData[[1]])
      }
    }
    setwd(masterDir)
  })
  
})
