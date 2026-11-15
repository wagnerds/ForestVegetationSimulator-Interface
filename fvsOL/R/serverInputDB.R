# Import input data: table descriptions, install training/empty DB, upload new DB, add/append data.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvInputDB <- quote({
  ## df2html
  df2html <- function(sdat=NULL)
  {
    if (is.null(sdat) || nrow(sdat)==0 || ncol(sdat)==0) return (NULL)
    sdat[sdat == " "]=NA
    html = paste0('<table border="1" style="text-align:right"><tr><th style="text-align:center">', 
           paste0(colnames(sdat),collapse='</th><th  style="text-align:center">'),"</th></tr>")
    for (i in 1:nrow(sdat))                   
    {
      tbrow=unlist(lapply(sdat[i,],function (x) if (is.character(x)) x else format(x,digits=3)))
      html = paste0(html,"<tr><td>",paste0(tbrow,collapse="</td><td>"),"</td></tr>")
    }
    paste0(html,"</table>")
  }
  
  ## xlsx2html
  xlsx2html <- function(tab=NULL,xlsxfile=NULL,cols=NULL,addLink=FALSE)
  {
    if (is.null(xlsxfile) || !file.exists(xlsxfile)) return(NULL)
    cleanlines=function(line) 
    {
      line=gsub(pattern="\n",replacement="",x=line,fixed=TRUE)
      gsub(pattern="\r",replacement="",x=line,fixed=TRUE)
    }
    if (!file.exists(xlsxfile) || is.null(tab)) return(NULL)
    if (tab %in% getSheetNames(xlsxfile))
    {
      sdat = try(read.xlsx(xlsxFile=xlsxfile,sheet=tab))
      if (inherits(sdat,"try-error")) return (NULL)
      if (nrow(sdat)==0 || ncol(sdat)==0) return (NULL)
      if (!is.null(cols) && max(cols)<=ncol(sdat)) sdat = sdat[,cols]
      sdat[sdat == " "]=NA
      if (nrow(sdat)==0 || ncol(sdat)==0) return (NULL)
      sdat = sdat[,!apply(sdat,2,function(x) all(is.na(x)))]
      if (nrow(sdat)==0 || ncol(sdat)==0) return (NULL)
      sdat = sdat[ !apply(sdat,1,function(x) all(is.na(x))),]
      if (nrow(sdat)==0 || ncol(sdat)==0) return (NULL)
      html = paste0("<b>",tab,"</b>")
      html = paste0(html,'<p><TABLE border="1"><TR><TH>', 
             paste0(cleanlines(colnames(sdat)),collapse="</TH><TH>"),"</TH></TR>")
      for (i in 1:nrow(sdat))                   
      {
        tbrow=cleanlines(as.character(sdat[i,]))
        if (addLink) tbrow[1] = paste0('<a href="#',tbrow[1],'">',tbrow[1],'</a>')
        html = paste0(html,"<TR><TD>",paste0(tbrow,collapse="</TD><TD>"),"</TD></TR>")
      }
      html = paste0(html,"</TABLE><br>")
      return (html)
    } else return (NULL)
  } 
  
  ## mkTableDescription
  mkTableDescription <- function (tab)
  {
    html = NULL
    xlsxfile=system.file("extdata", "databaseDescription.xlsx", package="fvsOL")
    if (!is.null(tab) && nchar(tab)>0 && !is.null(xlsxfile) && file.exists(xlsxfile))
    {
      sheets = sort(getSheetNames(xlsxfile), decreasing=FALSE)
      if ("OutputTableDescriptions" %in% sheets)
      {
        tabs = read.xlsx(xlsxFile=xlsxfile,sheet="OutputTableDescriptions")
        row = charmatch(toupper(tab),toupper(tabs[,1]))
        html = paste0("<b>",tab,"</b> ",tabs[row,2])
        mhtml = xlsx2html(tab,xlsxfile=xlsxfile,cols=c(1,4))
        if (!is.null(mhtml)) html = paste0(html,mhtml)
      }
      if ("GuideLinks" %in% sheets)
      { 
        tabs = read.xlsx(xlsxFile=xlsxfile,sheet="GuideLinks")
        row = charmatch(toupper(tab),toupper(tabs[,1]))
        if(!is.null(html))html = paste0(html,"<p><a href=",tabs[row,2],' target="_blank"',
           ">Link to reference document for table <b>",tabs[row,1],"</b></a></p>")
      }
    }
    HTML(html)
  }

  ## tabDescSel
  observe({
    tab = input$tabDescSel
cat ("tabDescSel, tab=",tab,"\n")
    output$tabDesc <- renderUI(mkTableDescription(tab))
  })

  ## tabDescSel2
  observe({
    tab = input$tabDescSel2
cat ("tabDescSel2, tab=",tab,"\n")
    output$tabDesc2 <- renderUI(mkTableDescription(tab))
  })
  
  ## uploadData button
  observe({
    if (input$uploadData > 0)
    {
      updateTabsetPanel(session=session, inputId="topPan",
        selected="Manage Projects")
      updateTabsetPanel(session=session, inputId="toolsPan",
        selected="Import input data")
      updateTabsetPanel(session=session, inputId="inputDBPan", 
        selected="Upload inventory database")
    }
  })
  
  ## data upload code  
  observe({
    if(input$toolsPan == "Import input data")
    {
      updateTabsetPanel(session=session, inputId="inputDBPan", 
        selected="Upload inventory database")
      output$step1ActionMsg <- NULL
      output$step2ActionMsg <- NULL
    }
  })

  observe({
    if(input$inputDBPan == "Upload inventory database") 
    {
      cat ("Upload inventory data\n")
      output$step1ActionMsg <- NULL
      output$step2ActionMsg <- NULL
      setDisabled(session, c("installNewDB","addNewDB"), TRUE)
    }
  })
  
  ## initNewInputDB
  initNewInputDB <- function (session,output,dbGlb)
  {
    updateSelectInput(session=session, inputId="editSelDBtabs", choices=list()) 
    updateSelectInput(session=session, inputId="editSelDBvars", choices=list()) 
    updateSelectInput(session=session, inputId="inVars", choices=list()) 
    updateSelectInput(session=session, inputId="Groups", choices=list()) 
    updateSelectInput(session=session, inputId="Stands", choices=list()) 
    output$tbl <- renderRHandsontable(NULL)
    output$stdSel <- output$navRows <- renderUI(NULL)
    dbGlb$rows <- NULL
    dbGlb$rowSelOn <- dbGlb$navsOn <- FALSE
    resetActiveFVS(globals)
  }
  
  ## installDefaultData
  installDefaultData <- function(empty=FALSE)
  {
    dbDisconnect(dbGlb$dbIcon)
    if (empty)
    {
      frm=system.file("extdata", "FVS_Data.db.empty", package="fvsOL")
      file.copy(frm,"FVS_Data.db",overwrite=TRUE)
      unlink("SpatialData.RData")
    } else {
      frm=system.file("extdata", "FVS_Data.db.default", package="fvsOL")
      file.copy(frm,"FVS_Data.db",overwrite=TRUE)
      frm=system.file("extdata", "SpatialData.RData.default",ppackage="fvsOL")
      file.copy(frm,"SpatialData.RData",overwrite=TRUE)
    }
    dbGlb$dbIcon <- dbConnect(dbDrv,"FVS_Data.db") 
    initNewInputDB(session,output,dbGlb)
    loadStandTableData(globals, dbGlb$dbIcon)
    updateStandTableSelection(session,input,globals)
    loadVarData(globals,input,dbGlb$dbIcon)                                              
    updateVarSelection(globals,session,input)
  }

  ## installTrainDB
  observe({  
    if (input$installTrainDB == 0) return()
    installDefaultData()
    output$step1ActionMsg <- NULL
    output$step2ActionMsg <- output$mapActionMsg <- renderText(HTML(paste0("<b>Training database installed",
         " (the inventory data and the related spatial data).</b>")))
  })

  ## installTrainDB2
  observe({  
    if (input$installTrainDB2 == 0) return()
    installDefaultData()
    output$mapActionMsg <- renderText(HTML(paste0("<b>Training database installed",
         " (the inventory data and the related spatial data).</b>")))
  })

  ## installEmptyDB
  observe({
    if (input$installEmptyDB == 0) return()
    installDefaultData(empty=TRUE)
    output$step1ActionMsg <- NULL
    output$step2ActionMsg <- renderText(HTML("<b>Empty database installed and spatial data deleted.</b>"))
    dbGlb$dbIcon <- dbConnect(dbDrv,"FVS_Data.db")
  })

  ## Upload new database
  observeEvent(input$uploadNewDB, {
    req(input$uploadNewDB)
    validdb = FALSE
    output$step1ActionMsg <- NULL
    output$step2ActionMsg <- NULL
    fext = tools::file_ext(basename(input$uploadNewDB$name))
    cat ("fext=",fext,"\n")
    if (! (fext %in% c("accdb","mdb","db","sqlite","xlsx","zip"))) {
      output$step1ActionMsg  = renderText("Uploaded file is not suitable database types described in Step 1.")
      unlink(input$uploadNewDB$datapath)
      setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)
      return()
    }
    fdir = dirname(input$uploadNewDB$datapath)
    progress <- shiny::Progress$new(session,min=1,max=20)
    if (fext == "zip") 
    {
      progress$set(message = "Unzip data", value = 1)
      utils::unzip(input$uploadNewDB$datapath, junkpaths = TRUE, exdir = fdir)
      unlink(input$uploadNewDB$datapath)
      fname = dir(dirname(input$uploadNewDB$datapath))
      if (length(fname)>1) 
      {
        output$step1ActionMsg = renderText(".zip contains more than one file.")
        lapply (dir(dirname(input$uploadNewDB$datapath),full.names=TRUE),unlink)
        progress$close()
        setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)
        return()
      } else if (length(fname) == 0) {
        output$actionMsg = renderText(".zip was empty.")
        progress$close()
        setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)
        return()
      } 
      fext = tolower(tools::file_ext(fname))
      if (! (fext %in% c("accdb","mdb","db","sqlite","xlsx"))) 
      {
        output$step1ActionMsg = renderText(".zip did not contain one of the suitable file types described in Step 1.")
        lapply (dir(dirname(input$uploadNewDB$datapath),full.names=TRUE),unlink)
        progress$close()
        setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)
        return()
      }
    } else fname = basename(input$uploadNewDB$datapath)
cat ("fext=",fext," fname=",fname," fdir=",fdir,"\n")
    curDir=getwd()
    setwd(fdir)

     if (fext %in% c("accdb","mdb")) {
       library(mdbr)

       progress$set(message = "Process schema", value = 2)
       cat("curDir=",curDir," input dir=",getwd(),"\n")

       sqlite_pgm <- if (exists("sqlite3exe", inherits = TRUE)) {
         sqlite3exe
       } else {
         "sqlite3"
       }

       tbls <- mdbr::mdb_tables(fname)

        invalid <- !grepl("^[A-Za-z_][A-Za-z0-9_]*$", tbls)
        if (any(invalid)) {
          stop(sprintf(
            "Invalid table names found: %s",
            paste(tbls[invalid], collapse = ", ")
          ), call. = FALSE)
        }

        if (anyDuplicated(tolower(tbls))) {
          stop("Duplicate table names are not supported.", call. = FALSE)
        }

        # Check for required input tables in the uploaded database
        if(!length(grep("\\b(FVS_StandInit|FVS_PlotInit|FVS_StandInit_Plot|
                        FVS_PlotInit_Plot|FVS_StandInit_Cond)\\b",
                        tbls, ignore.case = TRUE))) {
          setwd(curDir) 
          progress$close()     
          output$step1ActionMsg = renderText("<h4>Required input table(s) is missing from your input data.<br>  
                                           Please review input database requirements in 
                                           <a href='https://www.fs.usda.gov/fmsc/ftp/fvs/docs/gtr/DBSUserGuide.pdf' 
                                           target='_blank' rel='noopener noreferrer'>
                                           Chapter 3 of the Database Users Guide</a></h4>")
          session$sendCustomMessage(type = "resetFileInputHandler","uploadNewDB")
          setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)
          return()
        }
      
        progress$set(message = "Extract data", value = 3)  

        temp_db <- tempfile(fileext = ".db")
        on.exit(unlink(temp_db), add = TRUE)

        sqlite <- DBI::dbConnect(RSQLite::SQLite(), temp_db)
        on.exit(DBI::dbDisconnect(sqlite), add = TRUE)

        for (tab in tbls) {
          progress$set(message = paste0("Export table ",tab), value = 3)
          read_seconds <- system.time({
            data <- mdbr::read_mdb(fname, tab)
          })[["elapsed"]]

          write_seconds <- system.time({
            DBI::dbWriteTable(
              sqlite,
              name = tab,
              value = data,
              overwrite = TRUE
            )
          })[["elapsed"]]
      }

      dbo = dbConnect(dbDrv,"FVS_Data.db")
      copy_time <- system.time({
        sqliteCopyDatabase(sqlite, dbo)
      })[["elapsed"]]
      DBI::dbDisconnect(sqlite)

      message(sprintf(
        "Time to read tables: %.2f seconds\nTime to write tables: %.2f seconds\nTime to copy database: %.2f seconds",
        read_seconds, write_seconds, copy_time
      ))

      ## End of MDB/ACCDB processing

      ## Begin of Excel processing
    } else if (fext == "xlsx") 
    {
      progress$set(message = "Get data sheets", value = 3)
      sheets = getSheetNames(fname)
      if(!length(grep("\\b(FVS_StandInit|FVS_PlotInit|FVS_StandInit_Plot|
                       FVS_PlotInit_Plot|FVS_StandInit_Cond)\\b"
                       ,sheets, ignore.case = TRUE)))
      {
        setwd(curDir) 
        progress$close()     
        output$step1ActionMsg = renderText("<h4>Required input table(s) is missing from your input data.<br>  
                                           Please review input database requirements in 
                                           <a href='https://www.fs.usda.gov/fmsc/ftp/fvs/docs/gtr/DBSUserGuide.pdf' 
                                           target='_blank' rel='noopener noreferrer'>
                                           Chapter 3 of the Database Users Guide</a></h4>")
        session$sendCustomMessage(type = "resetFileInputHandler","uploadNewDB")
        setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)
        return()
      }
      normNames = c("FVS_GroupAddFilesAndKeywords","FVS_PlotInit",                
                    "FVS_StandInit","FVS_TreeInit")
      dbo = dbConnect(dbDrv,"FVS_Data.db")
      dbdis=system.file("extdata","databaseDescription.xlsx",package="fvsOL")
      standNT = try(read.xlsx(xlsxFile=dbdis,sheet="FVS_StandInit"))
      standNT = if (inherits(standNT,"try-error")) NULL else apply(standNT[,c(1,3)],2,toupper)
      treeNT = try(read.xlsx(xlsxFile=dbdis,sheet="FVS_TreeInit"))
      treeNT = if (inherits(treeNT,"try-error")) NULL else apply(treeNT[,c(1,3)],2,toupper)
      plotNT = try(read.xlsx(xlsxFile=dbdis,sheet="FVS_PlotInit"))
      plotNT = if (inherits(plotNT,"try-error")) NULL else apply(plotNT[,c(1,3)],2,toupper)
      # Screen Input tables for duplicate column names
      dupTables = list()
      dupColumns = list()
      duplicateFound = FALSE

      for (sheet in sheets)
      {
        sheetdat = read.xlsx(xlsxFile=fname,sheet=sheet)
        if(anyDuplicated(toupper(names(sheetdat)))){
          duplicateFound = TRUE
          dupl_list = duplicated(toupper(names(sheetdat)))
          inx = 1
          for (d in dupl_list){
            if (d) {
              dupTables <-append(dupTables, sheet)
              dupColumns <-append(dupColumns, toupper(names(sheetdat))[[inx]])
            }
            inx = inx + 1
          }
        }
      }
      if (duplicateFound){
        setwd(curDir) 
          progress$close()     
          outputMessage = "<h4>"
          inx = 1
          for (d in dupTables){
            outputMessage = append(outputMessage, paste0("Input table '",dupTables[[inx]],"' contains duplicate column '",
                                    dupColumns[[inx]],"' <br>"))
            inx = inx +1
          }
          outputMessage <- paste(outputMessage, collapse= ' ')
          output$step1ActionMsg = renderText(paste0(outputMessage, 
                                           "Please review input database requirements in 
                                           <a href='https://www.fs.usda.gov/fmsc/ftp/fvs/docs/gtr/DBSUserGuide.pdf' 
                                           target='_blank' rel='noopener noreferrer'>
                                           Chapter 3 of the Database Users Guide</a></h4>"))
          session$sendCustomMessage(type = "resetFileInputHandler","uploadNewDB")
          setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)
          return()
      }

      # Once input tables are screened, process into copied database.
      i = 3
      for (sheet in sheets)
      {
        i = i+1
        cat ("sheet = ",sheet," i=",i,"\n")
        progress$set(message = paste0("Processing sheet ",i," name=",sheet), value=i)
        sdat = read.xlsx(xlsxFile=fname,sheet=sheet)
        sdat[[3]] <- gsub("_x000D_", "", sdat[[3]])
        im = grep(sheet,normNames,ignore.case=TRUE)
        if (length(im)) sheet = normNames[im]
        NT = switch(sheet,"FVS_StandInit"=standNT,"FVS_TreeInit"=treeNT,
                          "FVS_PlotInit"=plotNT,NULL) 
        if (!is.null(NT))
        {
          std = pmatch(toupper(names(sdat)),NT[,1])        
          for (icol in 1:length(sdat))
          {
            if (!is.na(std[icol])) sdat[,icol] = 
              switch(NT[std[icol],2],
              "TEXT"    = as.character(sdat[,icol]),
              "REAL"    = as.numeric  (sdat[,icol]),
              "INTEGER" = as.integer  (sdat[,icol]))
          }
        }
        dbWriteTable(conn=dbo,name=sheet,value=sdat)
      }
    } else {
      i = 0
      file.rename(from=fname,to="FVS_Data.db")
      dbo = dbConnect(dbDrv,"FVS_Data.db")
      tabs = myListTables(dbo)
      if(!length(grep("\\b(FVS_StandInit|FVS_PlotInit|
                       FVS_StandInit_Plot|FVS_PlotInit_Plot|FVS_StandInit_Cond)\\b"
                       ,tabs, ignore.case = TRUE)))
      {
        setwd(curDir) 
        progress$close()     
        output$step1ActionMsg = renderText("<h4>Required input table(s) is missing from your input data.<br>  
                                           Please review input database requirements in 
                                           <a href='https://www.fs.usda.gov/fmsc/ftp/fvs/docs/gtr/DBSUserGuide.pdf' 
                                           target='_blank' rel='noopener noreferrer'>
                                           Chapter 3 of the Database Users Guide</a></h4>")
        session$sendCustomMessage(type = "resetFileInputHandler","uploadNewDB")
        setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)
        return()
      }
    }
    tabs = myListTables(dbo)
    # Check existing runs in simulation to see if tables used in simulation contents
    #   are compatible with the requested upload database.
    tableCompatibility = NULL
    if (length(input$simCont) && !(input$inTabs %in% tabs)) {
      tableCompatibility = FALSE
    } else if (length(input$simCont) && input$inTabs %in% tabs) {
      tableCompatibility = TRUE
    }

    for (r in seq_along(globals$FVS_Runs)) {
      checkRun = loadFVSRun(dbGlb$prjDB,globals$FVS_Runs[[r]])
      if (length(checkRun$selsim)) {
        if (!(checkRun$refreshDB %in% tabs)) {
          tableCompatibility = FALSE
        }
        if (checkRun$refreshDB %in% tabs && is.null(tableCompatibility)) {
          tableCompatibility = TRUE
        }
      }
    }

    # Insert Modal logic
    # If tableCompatibility is not NULL then there are existing runs in the simulation
    #  that contain simulation contents.  Notify the user of the potential issues and 
    # set flags for allowable installation actions accordingly.
    allowInstall = TRUE
    if (!is.null(tableCompatibility)) {
      if (tableCompatibility) {
        showModal(shiny::modalDialog(
          title = "Warning: Project contains runs with existing simulation contents",
          HTML("<h4>Please use caution.  Installing the uploaded database will overwrite the exisng input database, 
                while the option to append data is available if you need to append additional data to the existing database.</h4>"),
          easyClose = F,
          footer = modalButton("OK")
        ))
      } else {
        showModal(shiny::modalDialog(
          title = "Warning: Project contains runs with existing simulation contents",
          HTML("<h4>Selected database is not compatible with existing simulation contents of one or more runs.  
                Only the option to append data will be available.
                If this is not the desired behavior, please create a new project before uploading.</h4>"),
          easyClose = F,
          footer = modalButton("OK")
        ))
        # Set flags to prevent installation of the selected database, only allow database append
        allowInstall = FALSE
      }
    }

    fiaData = "FVS_STANDINIT_COND" %in% toupper(tabs) && 
              "FVS_STANDINIT_PLOT" %in% toupper(tabs)
    if (fiaData) 
    {
      fiaMsg=NULL
      progress$set(message = "FIA data detected, most checks skipped", value = 1) 
      # Ensure that the DSNIn keywords address FVS_Data.db in the FVS_GroupAddFilesAndKeywords table
      grpAdd = try(dbGetQuery(dbo,'select * from "fvs_groupaddfilesandkeywords"'))
      if (class(grpAdd) != "try.error") 
      {
        kwi = match("FVSKEYWORDS",toupper(names(grpAdd)))[1]
        if (!is.na(kwi)) 
        {
          ch = gsub("\nDSNIn\n.{1,}\nStandSQL","\nDSNIn\nFVS_Data.db\nStandSQL",grpAdd[,kwi])
          if (any(ch!=grpAdd[,kwi])) 
          {
            grpAdd[,kwi] = ch
            fiaMsg = "FVS_GroupAddFilesAndKeywords FVSKeywords field was modified"
            dbWriteTable(dbo,"FVS_GroupAddFilesAndKeywords",grpAdd,overwrite=TRUE)
          }
        }
      }
      validdb = TRUE
    } else {
      # get rid of "NRIS_" part of names if any
      for (tab in tabs)
      {
        cat("loaded table=",tab,"\n")      
        nn = sub("NRIS_","",tab)
        if (nchar(nn) && nn != tab) dbExecute(dbo,paste0("alter table ",tab," rename to ",nn))
      }
      tabs = myListTables(dbo)
      ltabs = tolower(tabs)
      fixTabs=c(grep ("standinit",ltabs,fixed=TRUE),grep ("plotinit",ltabs))
      # if there is a FVS_GroupAddFilesAndKeywords table, grab the unique group codes
      grpmsg=NULL
      progress$set(message = "Checking FVS_GroupAddFilesAndKeywords", value = 4)
      if ("fvs_groupaddfilesandkeywords" %in% ltabs)
      {
        addgrps=try(dbGetQuery(dbo,'select distinct groups from "fvs_groupaddfilesandkeywords"'))
        if (class(addgrps)!="try-error")
        {
          addgrps=unique(unlist(lapply(addgrps[,1],function (x) scan(text=x,what="character",quiet=TRUE))))
          cat ("addgrps=",paste0(addgrps,collapse=" "),"\n")
          for (idx in fixTabs)
          {
            tab2fix=tabs[idx]
            grps=try(dbGetQuery(dbo,paste0("select distinct groups from '",tab2fix,"'")))
            if (inherits(grps,"try-error")) next
            if (is.na(grps[1,1])) next
            grps=unique(unlist(lapply(grps[,1],function (x) scan(text=x,what="character",quiet=TRUE))))
            if (any(is.na(match(addgrps,grps))) && !length(match(grps,addgrps)))  
            {
              Tb=try(dbReadTable(dbo,tab2fix))
              if (inherits(Tb,"try-error")) next
              idx=match("groups",tolower(names(Tb)))
              if (!is.na(idx) && nrow(Tb)) 
              {
                idf = if (length(grep("plot",tab2fix,ignore.case=TRUE))) grep("Plots",addgrps) else grep("Stands",addgrps)
                ridxs <- grep(grps[grep("NA",as.list(match(addgrps,grps)))],Tb[,idx])
                Tb[ridxs,idx]=paste0(addgrps[idf]," ",Tb[ridxs,idx])
                if (class(try(dbWriteTable(dbo,tab2fix,Tb,overwrite=TRUE)))!="try-error") 
                    grpmsg=c(grpmsg,tab2fix)
              }
            }
          }
        }
      }
      # checking for required group codes and blank Stand_CN
      if ("fvs_standinit" %in% ltabs)
      {
        qry="update FVS_StandInit set Groups = 'All_Stands '|| Groups where Groups is not null
              and Groups not LIKE '%All_Stands%';"
        rtn=try(dbExecute(dbo,qry))
cat ("qry=",qry,"\nrtn=",rtn,"\n")
        qry="update FVS_StandInit set Groups = 'All_Stands' where Groups is null;"
        rtn=try(dbExecute(dbo,qry))
cat ("qry=",qry,"\nrtn=",rtn,"\n")
        qry="update FVS_StandInit set Stand_CN = (select Stand_ID from FVS_StandInit) where Stand_CN is null;"
        rtn=try(dbExecute(dbo,qry))
cat ("qry=",qry,"\nrtn=",rtn,"\n")
      }
      if ("fvs_plotinit" %in% ltabs)
      {
        qry="update FVS_PlotInit set Groups = 'All_Plots '|| Groups where Groups is not null
              and Groups not LIKE '%All_Plots%';"
        rtn=try(dbExecute(dbo,qry))
cat ("qry=",qry,"\nrtn=",rtn,"\n")
        qry="update FVS_PlotInit set Groups = 'All_Plots' where Groups is null;"
        rtn=try(dbExecute(dbo,qry))
cat ("qry=",qry,"\nrtn=",rtn,"\n")
        qry="update FVS_PlotInit set Stand_CN = (select Stand_ID from FVS_PlotInit) where Stand_CN is null;"
        rtn=try(dbExecute(dbo,qry))
cat ("qry=",qry,"\nrtn=",rtn,"\n")
      }     
      if ("fvs_treeinit" %in% ltabs)
      {
        qry="update FVS_TreeInit set Stand_CN = (select Stand_ID from FVS_TreeInit) where Stand_CN is null;"
        rtn=try(dbExecute(dbo,qry))
cat ("qry=",qry,"\nrtn=",rtn,"\n")
      } 
cat ("checking duplicate stand or standplot ids\n")
      progress$set(message = "Checking for duplicate StandID values", value = 5)
      # loop over tables and omit duplicate stand or standplot id's from being uploaded
      sidmsg=NULL
      newID=NULL  
      for (idx in fixTabs)
      {
cat ("checking tabs[idx]=",tabs[idx],"\n")
        if (tolower(tabs[idx]) %in% c("fvs_standinit_plot","fvs_standinit_cond",
           "fvs_treeinit_plot","fvs_treeinit_cond","fvs_plotinit_plot")) next
        tab2fix=tabs[idx]
        idf = if (length(grep("plot",tab2fix,ignore.case=TRUE))) "standplot_id" else "stand_id"
        qry = paste0("select ",idf," from '",tab2fix,"'") 
cat ("qry=",qry,"\n") 
        sidTb=try(dbGetQuery(dbo,qry))
        if (inherits(sidTb,"try-error")) next
        dups = duplicated(sidTb[,1])
        if (all(!dups)) next
        keep <- list()
        cntr <- 1
        for (i in 1:length(dups)){
          if (dups[i]==FALSE){
            keep[cntr] <- i
            cntr <- cntr +1
          }
        }
        sidTb=try(dbReadTable(dbo,tab2fix))
        if (inherits(sidTb,"try-error")) next
        sidTb=sidTb[as.numeric(keep),]
        dbWriteTable(dbo,tab2fix,sidTb,overwrite=TRUE)
        sidmsg=c(sidmsg,tab2fix)
      }
      # remove any leading or trailing spaces in stand id's which blow up the SQL queries at run time
      fixTabs=c(grep ("standinit",ltabs,fixed=TRUE),grep ("plotinit",ltabs),grep ("treeinit",ltabs))
      for (idx in fixTabs)
      {
cat ("checking tabs[idx]=",tabs[idx],"\n")
        if (tolower(tabs[idx]) %in% c("fvs_standinit_plot","fvs_standinit_cond",
           "fvs_treeinit_plot","fvs_treeinit_cond","fvs_plotinit_plot")) next
        tab2fix=tabs[idx]
        idf = if (length(grep("plot",tab2fix,ignore.case=TRUE))) "standplot_id" else "stand_id"
        qry = paste0("select ",idf," from '",tab2fix,"' NOT INDEXED")
cat ("qry=",qry,"\n") 
        sidTb=try(dbGetQuery(dbo,qry))
        if (inherits(sidTb,"try-error")) next
        if(length(sidTb[[1]])==0) next
        sidTb <- data.frame(trim(sidTb[[1]]))
        names(sidTb) <- toupper(idf)
        sidTbAll=try(dbReadTable(dbo,tab2fix))
        if (idf == "standplot_id") oldSID <- grep("StandPlot_ID",names(sidTbAll),ignore.case=TRUE) else
          oldSID <- grep("Stand_ID",names(sidTbAll),ignore.case=TRUE)
        sidTbAll <- sidTbAll[,-oldSID]
        sidTbAll <- append(sidTbAll,sidTb, after=0)
        if (inherits(sidTbAll,"try-error")) next
        dbWriteTable(dbo,tab2fix,data.frame(sidTbAll),overwrite=TRUE)
      }
cat ("sidmsg=",sidmsg,"\n")
    }
    progress$set(message = "Getting row counts", value = 6)
    rowCnts = unlist(lapply(tabs,function (x) dbGetQuery(dbo,
      paste0("select count(*) as '",x,"' from '",x,"';"))))
    msg = lapply(names(rowCnts),function(x) paste0(x," (",rowCnts[x]," rows)"))
    msg = paste0("<b>Uploaded data:</b><br>",paste0(msg,collapse="<br>"))
    if (!fiaData)
    {
      if (!is.null(grpmsg)) msg=paste0(msg,"<br>Groups values were modified in table(s): ",
          paste0(grpmsg,collapse=", "))
      if (!is.null(sidmsg)) msg=paste0(msg,"<br>Duplicate Stand_ID or StandPlot_ID values were found in table(s): ",
          paste0(sidmsg,collapse=", "),". <br>All duplicate values after the first value were not kept.")
cat ("calling fixFVSKeywords\n")
      progress$set(message = "Checking FVSKeywords", value = 7)      
      tt = try(fixFVSKeywords(dbo))
      canuse=class(tt) == "NULL"
      if (class(tt)=="character") msg = paste0(msg,
        "<br>Checking keywords: ",tt)
      progress$set(message = "Checking for minimum column definitions", value = 8)     
      tt = try(checkMinColumnDefs(dbo,progress,9))
      canuse=canuse && class(tt) == "NULL"
      if (class(tt)=="character") msg = paste0(msg,"<br>Checking columns: ",tt)
      if (!canuse) {msg = paste0(msg,
        "<h4>Data checks indicate there are unresolved problems in the input.<br>
        Please review input database requirements in 
            <a href='https://www.fs.usda.gov/fmsc/ftp/fvs/docs/gtr/DBSUserGuide.pdf' 
            target='_blank' rel='noopener noreferrer'>
            Chapter 3 of the Database Users Guide</a></h4>")
        cat ("msg=",msg,"\n")
      }
      else validdb = TRUE
    } else msg = paste0(msg,if (!is.null(fiaMsg)) paste0("<br>",fiaMsg) else "",
        "<h4>Data checks are skipped when FIA data is detected.</h4>")
    output$step1ActionMsg = renderUI(HTML(msg))
    dbGlb$newFVSData = tempfile()
    dbDisconnect(dbo)
    if (validdb) {
      file.copy(from="FVS_Data.db",to=dbGlb$newFVSData,overwrite=TRUE)
      session$sendCustomMessage(type = "resetFileInput","uploadNewDB")
      if (allowInstall) {
        setDisabled(session, "installNewDB", FALSE)
      } else {
        setDisabled(session, "installNewDB", TRUE)
      }
      setDisabled(session, "addNewDB", FALSE)
    }
    # session$sendCustomMessage(type="jsCode",
    #                           list(code= "$('#installTrainDB').prop('disabled',false)"))
    # session$sendCustomMessage(type="jsCode",
    #                           list(code= "$('#installEmptyDB').prop('disabled',false)"))
    setwd(curDir)
    progress$close()  
  })
  ## installNewDB
  observe({
    if (input$installNewDB == 0) return()
    if (is.null(dbGlb$newFVSData)) return()
    if (!file.exists(dbGlb$newFVSData) || file.size(dbGlb$newFVSData) == 0) return()
    dbDisconnect(dbGlb$dbIcon)
    file.copy(dbGlb$newFVSData,"FVS_Data.db",overwrite=TRUE) 
    unlink(dbGlb$newFVSData)
    dbGlb$newFVSData=NULL
    dbGlb$dbIcon <- dbConnect(dbDrv,"FVS_Data.db") 
    progress <- shiny::Progress$new(session,min=1,max=8)
    i = 1
    progress$set(message="Checking for FVS_GroupAddFilesAndKeywords",value=i) 
    # Add an FVS_GroupAddFilesAndKeywords table if needed.
    addkeys = getTableName(dbGlb$dbIcon,"FVS_GroupAddFilesAndKeywords")
    if (is.null(addkeys)) need = TRUE else
    {
      gtab = try(dbReadTable(dbGlb$dbIcon,addkeys))
      need = inherits(gtab,"try-error")
      if (!need) need = nrow(gtab) == 0
      names(gtab) = toupper(names(gtab))
      if (!need) need = all(is.na(gtab$FVSKEYWORDS))
      if (!need) need = all(gtab$FVSKEYWORDS == "")
    }
    if (need)
    { 
      treeInit = getTableName(dbGlb$dbIcon,"FVS_TreeInit")
      if (is.null(treeInit)) treeInit="FVS_TreeInit"
      dfinstand=NULL
      grps = list("FVS_StandInit"="All All_Stands",
                  "FVS_PlotInit"="All All_Plots",
                  "FVS_StandInit_Cond"="All All_Conds")
      for (std in names(grps))
      {
        stdInit = getTableName(dbGlb$dbIcon,std)
        if (is.null(stdInit)) next
        linkID = if(stdInit=="FVS_PlotInit") "StandPlot_ID" else "Stand_ID"
        dfinstand = rbind(dfinstand,
          data.frame(Groups = grps[[std]],Addfiles = "",
            FVSKeywords = paste0("Database\nDSNIn\nFVS_Data.db\nStandSQL\n",
              "SELECT * FROM ",stdInit,"\nWHERE ",linkID,"= '%StandID%'\n",
              "EndSQL\nTreeSQL\nSELECT * FROM ",treeInit,"\n", 
              "WHERE ",linkID,"= '%StandID%'\nEndSQL\nEND")))
      }
      dbWriteTable(dbGlb$dbIcon,"FVS_GroupAddFilesAndKeywords",value=dfinstand,overwrite=TRUE)
    }   
    tabs = myListTables(dbGlb$dbIcon)
    for (tb in tabs)
    {
      i = i+1
      progress$set(message = paste0("Setting up index for table ",tb), value=i)
      mkInputTableIndex(dbGlb$dbIcon, tb)
    }
    progress$set(message = "Load variant data", value = i+1)
    resetActiveFVS(globals)
    loadVarData(globals,input,dbGlb$dbIcon)
    output$step2ActionMsg = renderText(HTML(paste0("<br>Uploaded data installed.<br>",
      "<b>WARNING:</b> If existing runs in this project were created using input ",
      "data that are not present in the database just installed, ",
      "you will need to re-load those data to run them again.<br>",
      "Note that the output from the previous runs will remain in the output database.")))
    initNewInputDB(session,output,dbGlb)
    progress$close()
  })
  
  ## addNewDB
  observe({  
    if (input$addNewDB == 0) return()
    output$step2ActionMsg <- NULL
    if (is.null(dbGlb$newFVSData)) {output$step1ActionMsg<-NULL;return()}
    dbo = dbConnect(dbDrv,dbGlb$newFVSData)
    newtabs = myListTables(dbo)
    dbDisconnect(dbo)
    if (length(newtabs)==0) return()
    # set an exclusive lock on the database
    dbExecute(dbGlb$dbIcon,"PRAGMA locking_mode = EXCLUSIVE")
    progress <- shiny::Progress$new(session,min=1,max=length(newtabs)*2+3)
    i=2
    progress$set(message = "Getting exclusive database lock", value=1)
    trycnt=0
    while (TRUE)
    {
      trycnt=trycnt+1
      if (trycnt > 1000) 
      {
        dbExecute(dbGlb$dbIcon,"PRAGMA locking_mode = NORMAL")
        myListTables(dbGlb$dbIcon) # this forces the new locking mode to take effect
        output$step2ActionMsg <- renderText("Error: Exclusive lock was not obtained.")
        progress$close()
        return()
      }
cat ("try to get exclusive lock on input database, trycnt=",trycnt,"\n");
      rtn <- try(dbExecute(dbGlb$dbIcon,"create table dummy (dummy int)"))
      if (class(rtn) != "try-error") break;
      Sys.sleep (1)
    } 
    dbExecute(dbGlb$dbIcon,"drop table if exists dummy")    
    oldInds = dbGetQuery(dbGlb$dbIcon,"select name from sqlite_master where type='index';")[,1]
    for (idx in oldInds) dbExecute(dbGlb$dbIcon,paste0("drop index if exists ",idx,";"))
    oldtabs = myListTables(dbGlb$dbIcon)
    progress$set(message = "Attaching new database.", value=2)
    attach = try(dbExecute(dbGlb$dbIcon,paste0("attach '",dbGlb$newFVSData,"' as addnew;")))
    if (inherits(attach,"try-error"))
    {
      output$step2ActionMsg <- renderText("New data could not be added")
      unlink(dbGlb$newFVSData)
      progress$close()
      dbGlb$newFVSData=NULL
    }
    justNew = setdiff(newtabs,oldtabs)
    for (tab in justNew) 
    {
      i=i+1
      progress$set(message = paste0("Loading ",tab), value = i)
      qry=paste0("create table ",tab," as select * from addnew.",tab)
cat("qry=",qry,"\n")
      rtn = try(dbExecute(dbGlb$dbIcon,qry))
      if (inherits(rtn,"try-error")) cat ("qry failed:",qry,"\n")
    }
    newtabs = setdiff(newtabs,justNew)
    for (tab in newtabs)
    {
      i=i+1
      progress$set(message = paste0("Loading ",tab), value = i)
      rows=try(dbGetQuery(dbGlb$dbIcon,paste0("select count(*) from ",tab)))
      if (inherits(rows,"try-error")) next
      if (class(rows)=="data.frame" && rows[1,1]==0) 
      {
        cat ("no rows in ",tab,"\n")
        next
      }
      newTdef = dbGetQuery(dbGlb$dbIcon,paste0("pragma addnew.table_info(",tab,")"))
      trgTdef = dbGetQuery(dbGlb$dbIcon,paste0("pragma        table_info(",tab,")"))
      sid1 = toupper(newTdef$name)
      sid2 = toupper(trgTdef$name)
      if ("STAND_ID" %in% sid1 && "STAND_ID" %in% sid2)
      {
        qry = paste0("delete from ",tab," where Stand_ID in ",
                     "(select Stand_ID from addnew.",tab,")")
        rtn = try(dbExecute(dbGlb$dbIcon,qry))
        if (inherits(rtn,"try-error")) cat ("removing duplicated Stand_IDs failed.")
      }          
      if (tolower(tab) == "fvs_groupaddfilesandkeywords") 
        dbExecute(dbGlb$dbIcon,paste0("delete from ",tab," where Groups in ",
                    " (select Groups from addnew.",tab,")"))
      # homogenize table structure and then do the insert from ...
      newTdef = dbGetQuery(dbGlb$dbIcon,paste0("pragma addnew.table_info(",tab,")"))
      trgTdef = dbGetQuery(dbGlb$dbIcon,paste0("pragma        table_info(",tab,")"))
      newTdef$lcname = tolower(newTdef$name)
      trgTdef$lcname = tolower(trgTdef$name)
      missingInTrg = setdiff(newTdef$lcname,trgTdef$lcname)
      missingIndx  = match(missingInTrg,newTdef$lcname)
      if (length(missingIndx) && !any(is.na(missingIndx)))
      {
        for (ii in missingIndx)
        {
          qry = paste0("alter table '",tab,"' add column ",newTdef$name[ii],
                " ",newTdef$type[ii],";")
cat ("alter table qry=",qry,"\n")
          rtn = try(dbExecute(dbGlb$dbIcon,qry))
          if (inherits(rtn,"try-error")) cat ("qry failed\n")
        }
      }
      alln = paste0(newTdef$name,collapse=",")
      qry = paste0("insert into ",tab," (",alln,") select ",alln,
                   " from addnew.",tab,";") 
cat ("insert qry=",qry,"\n")
      rtn = try(dbExecute(dbGlb$dbIcon,qry))
      if (inherits(rtn,"try-error")) cat ("qry failed\n")
    }
    dbExecute(dbGlb$dbIcon,paste0("detach addnew;"))
    unlink(dbGlb$newFVSData)
    dbGlb$newFVSData=NULL
    # fix up the DBH/DIAMETER mess. If DIAMETER is in the data table, then it needs to take on the values 
    # of DBH if they are also in the table.
    cols=tolower(dbGetQuery(dbGlb$dbIcon,"PRAGMA table_info('FVS_TreeInit')")[,"name"])
    if ("dbh" %in% cols && "diameter" %in% cols)
    {
      qry=paste0("update FVS_TreeInit set DIAMETER = (select DBH where DIAMETER is null ",
                 "and DBH is not null) where DIAMETER is null and DBH is not null;")
      rtn=try(dbExecute(dbGlb$dbIcon,qry))
cat ("qry=",qry,"\nrtn=",rtn,"\n")
    }
    tabs = dbGetQuery(dbGlb$dbIcon,"select * from sqlite_master where type='table'")[,"tbl_name"]
    i = i+1
    progress$set(message = "Setting up indices", value=i)
    for (tb in tabs)
    {
      i = i+1
      progress$set(message = paste0("Setting up index for table ",tb), value=i)
      if (tolower(tb) == "fvs_climttr") 
      {
        dbExecute(dbGlb$dbIcon,"drop index if exists StdScnIndex")
        dbExecute(dbGlb$dbIcon,"create index StdScnIndex on FVS_ClimAttrs (Stand_ID, Scenario);")
      } else if ("Stand_ID" %in% dbListFields(dbGlb$dbIcon,tb))
      {   
        tbinx = paste0("idx",tb)
        try(dbExecute(dbGlb$dbIcon,paste0("drop index if exists ",tbinx)))
        try(dbExecute(dbGlb$dbIcon,paste0("create index ",tbinx," on ",tb," (Stand_ID);")))
      }
    }
    dbExecute(dbGlb$dbIcon,"PRAGMA locking_mode = NORMAL")
    rowCnts = unlist(lapply(tabs,function (x) dbGetQuery(dbGlb$dbIcon,
      paste0("select count(*) as ",x," from ",x,";"))))
    msg = lapply(names(rowCnts),function(x) paste0(x," (",rowCnts[x]," rows)"))
    msg = paste0("<b>Combined (newly installed) database:</b><br>",paste0(msg,collapse="<br>"))
    output$step2ActionMsg <- renderText(msg)
    loadVarData(globals,input,dbGlb$dbIcon) 
    initNewInputDB(session,output,dbGlb)
    progress$close()
  }) 
  
  ## AppendCSV
  observe({
    if(input$inputDBPan == "Append .csv data to existing tables") 
    {
cat ("Upload new rows\n")
      tbs <- myListTables(dbGlb$dbIcon)
      dbGlb$tbsCTypes <- lapply(tbs,function(x,dbIcon) 
        {
          tb <- dbGetQuery(dbIcon,paste0("PRAGMA table_info('",x,"')"))
          tbtypes = toupper(tb[,"type"])
          res = vector("logical",length(tbtypes))
          res[grep ("INT",tbtypes)] = TRUE
          res[grep ("FLOAT",tbtypes)] = TRUE
          res[grep ("REAL",tbtypes)] = TRUE
          names(res) = tb[,"name"]                                               
          res[] = !res
        }, dbGlb$dbIcon)     
      names(dbGlb$tbsCTypes) = tbs 
      if (length(tbs))
      {
        idx <- grep ("FVS_ClimAttrs",tbs,ignore.case=TRUE)
        if (length(idx)) tbs = tbs[-idx]
        idx <- grep ("StandInit",tbs)
        if (length(idx) == 0) idx=1     
        updateSelectInput(session=session, inputId="uploadSelDBtabs", choices=tbs, 
          selected=tbs[idx])
      } else updateSelectInput(session=session, inputId="uploadSelDBtabs",  
               choices=list())
      output$step2ActionMsg <- renderText(if (length(tbs)) "" else 
        "No tables in existing database.")        
      initNewInputDB(session,output,dbGlb)
    }
  })
})
