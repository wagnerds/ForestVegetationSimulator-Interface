# Import input data: stand/tree upload, Climate-FVS upload, view and edit existing tables.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvInputEdit <- quote({
  ## uploadStdTree
  observe({  
    if (is.null(input$uploadStdTree)) return()
    isolate({ 
      indat = try(read.csv(file=input$uploadStdTree$datapath,as.is=TRUE,colClasses="character"))
      unlink(input$uploadStdTree$datapath)
      if (inherits(indat,"try-error") || is.null(indat) || nrow(indat)==0)
      {                       
        output$uploadActionMsg = renderText("Input empty, no data loaded.")
        Sys.sleep(1)
        session$sendCustomMessage(type = "resetFileInputHandler","uploadStdTree")
        return()
      }
      del = apply(indat,1,function (x) 
        {
          x = as.vector(x)
          x[is.na(x)] = ""
          all(x == "") 
        })
      indat = indat[!del,,drop=FALSE]
      if (nrow(indat)==0)
      {
        output$uploadActionMsg = renderText("All rows were empty,  no data loaded.")
        Sys.sleep(1)
        session$sendCustomMessage(type = "resetFileInputHandler","uploadStdTree")
        return()
      }
      cols = na.omit(charmatch(tolower(colnames(indat)),
             tolower(names(dbGlb$tbsCTypes[[input$uploadSelDBtabs]]))))
      if (length(cols) == 0) 
      {
        output$uploadActionMsg = renderText(paste0("No columns match what is defined for ",
               input$uploadSelDBtabs,", no data loaded."))
        Sys.sleep(1)
        session$sendCustomMessage(type = "resetFileInputHandler","uploadStdTree")
        return()
      }
      addCols = attr(cols,"na.action")
cat ("addCols=",addCols,"\n")
      if (length(addCols))
      {
        types = dbGlb$tbsCTypes[[input$uploadSelDBtabs]]
        for (icol in addCols)
        {
          newVar=names(indat)[icol]
          defType=charmatch(tolower(newVar),tolower(names(types)))
          dtyp = if (is.na(defType)) "character" else
                 if (types[defType]) "character" else "real"
          qry = paste0("alter table ",input$uploadSelDBtabs," add column ",
                newVar," ",dtyp,";")
cat ("add column qry=",qry,"\n")
          added = try(dbExecute(dbGlb$dbIcon,qry))
          if (class(added) != "try-error")
          {
            v = dtyp == "character"
            names(v) = newVar
            dbGlb$tbsCTypes[[input$uploadSelDBtabs]] = c(dbGlb$tbsCTypes[[input$uploadSelDBtabs]],v)
          }
        }
      }
      cols = na.omit(charmatch(tolower(colnames(indat)),
             tolower(names(dbGlb$tbsCTypes[[input$uploadSelDBtabs]]))))
      types = dbGlb$tbsCTypes[[input$uploadSelDBtabs]][cols]
      req = switch(tolower(input$uploadSelDBtabs),
         fvs_standinit = c("stand_id","variant","inv_year"),
         fvs_plotinit  = c("stand_id","variant","inv_year"),
         fvs_treeinit  = c("stand_id","species","dbh"),
         fvs_groupaddfilesandkeywords = c("groups"),
         NULL)
      if (!is.null(req) && !all(req %in% tolower(names(types))))
      {
        output$uploadActionMsg = renderText(paste0("Required columns were missing for ",
               input$uploadSelDBtabs,", no data loaded."))
        session$sendCustomMessage(type = "resetFileInputHandler","uploadStdTree")
        return()
      }
      nums = tolower(names(types[!types]))
      lnams = tolower(names(indat))
      for (nn in nums) 
      {
        indx=match(nn,lnams)
        indat[,indx] = as.numeric(indat[,indx])
      }

      sids=try(dbGetQuery(dbGlb$dbIcon,paste0("select distinct stand_id from ",
                          isolate(input$uploadSelDBtabs))))
      sids=if (inherits(sids,"try-error")) NA else sids[,1]
      isid=charmatch("stand_id",tolower(names(indat)))
      msg=NULL
      if (!(is.na(sids) || is.na(isid))) 
      {
        tokeep=is.na(match(indat[,isid],sids))
        ntokill=sum(!tokeep)
        if (ntokill==nrow(indat))
        {
          output$uploadActionMsg = renderUI(HTML("All uploaded data have Stand_ID(s) that are already loaded and are ignored."))  
          return()
        } else {
          msg = paste0(ntokill," lines of uploaded data have Stand_ID(s) that are already loaded and are ignored.")
          indat = indat[tokeep,,drop=FALSE]
        }
      }
      dbBegin(dbGlb$dbIcon)
      err = FALSE
      insertCount = 0
      for (i in 1:nrow(indat))
      {
        row = indat[i,,drop=FALSE]
        row = row[,!is.na(row),drop=FALSE]
        if (ncol(row) == 0) next
        row = row[,row != "'NA'",drop=FALSE]
        if (ncol(row) == 0) next
        vals=paste0(lapply(row[1,],function (x) if (class(x)=="character") paste0('"',x,'"') else x),collapse=",")
        qry = paste0("insert into ",input$uploadSelDBtabs," (",
                paste0(colnames(row),collapse=","),") values (",vals,");")
cat ("insert qry=",qry,"\n")
        res = try(dbExecute(dbGlb$dbIcon,qry))
        if (inherits(res,"try-error")) {err=TRUE; break} else insertCount = insertCount+1
      }
      if (err) 
      {
        dbRollback(dbGlb$dbIcon) 
        output$uploadActionMsg = renderUI(HTML(paste0("Error processing: ",qry)))
        session$sendCustomMessage(type = "resetFileInputHandler","uploadStdTree")
        return()
      } else {
cat ("insertCount=",insertCount,"\n")
        dbCommit(dbGlb$dbIcon)
        msg=paste0(msg,"<br>",insertCount," row(s) inserted into ",isolate(input$uploadSelDBtabs))
          output$uploadActionMsg = renderUI(HTML(msg))
        session$sendCustomMessage(type = "resetFileInputHandler","uploadStdTree")
        loadVarData(globals,input,dbGlb$dbIcon)                                              
      }
      Sys.sleep(1)
      session$sendCustomMessage(type = "resetFileInputHandler","uploadStdTree")
      # this section removes records that have missing values for standID or group
      keyCol = NULL
      if (length(grep("standinit",input$uploadSelDBtabs,ignore.case=TRUE)) ||
          length(grep("treeinit", input$uploadSelDBtabs,ignore.case=TRUE)) ||
          length(grep("plotinit", input$uploadSelDBtabs,ignore.case=TRUE)))
               keyCol = "Stand_ID"
      if (length(grep("GroupAddFilesAndKeywords",input$uploadSelDBtabs,
                 ignore.case=TRUE))) keyCol = "Groups"
      if (!is.null(keyCol))
      {
        # the key column must not be null, if it is delete the rows.
        try(dbExecute(dbGlb$dbIcon,paste0("delete from ",
            input$uploadSelDBtabs," where ",keyCol," is null")))
        # update the stand selector list if it exists and if we are not doing groups
        if (keyCol != "Groups")
        {
          dbGlb$sids = dbGetQuery(dbGlb$dbIcon,paste0("select distinct Stand_ID from ",
                                  input$uploadSelDBtabs))[,1]
          if (any(is.na(dbGlb$sids))) dbGlb$sids[is.na(dbGlb$sids)] = ""
          if (dbGlb$rowSelOn && length(dbGlb$sids)) 
            updateSelectInput(session=session, inputId="rowSelector",
              choices  = as.list(dbGlb$sids), selected=unique(indat[,"Stand_ID"])) else 
            output$stdSel <- mkStdSel(dbGlb)
          
          qry <- paste0("select _ROWID_,* from ",input$uploadSelDBtabs)
          qry <- if (length(input$rowSelector))
            paste0(qry," where Stand_ID in (",
                  paste0("'",input$rowSelector,"'",collapse=","),");") else
            paste0(qry,";") 
          dbGlb$tbl <- dbGetQuery(dbGlb$dbIcon,qry)
          rownames(dbGlb$tbl) = dbGlb$tbl$rowid
          for (col in 2:ncol(dbGlb$tbl)) dbGlb$tbl[[col]] = as.character(dbGlb$tbl[[col]])
          if (nrow(dbGlb$tbl) == 0) dbGlb$rows = NULL else 
          {
            dbGlb$tbl$Delete = FALSE
            dbGlb$rows <- c(dbGlb$rows[1], 
                            min(nrow(dbGlb$tbl),dbGlb$rows[2]))
            output$tbl <- renderRHandsontable(rhandsontable(
              dbGlb$tbl[dbGlb$rows[1]:dbGlb$rows[2],
              union(c("Delete"),input$selectdbvars),drop=FALSE],
              readOnly=FALSE,useTypes=TRUE,contextMenu=FALSE))
          }
        }
      }
      session$sendCustomMessage(type = "resetFileInputHandler","uploadStdTree")
      initNewInputDB(session,output,dbGlb)
    })
  })
  ## delCurClimData
  observe({
    if (input$delCurClimData)
    {
      dbExecute(dbGlb$dbIcon,'drop table if exists "FVS_ClimAttrs"')
      output$uploadClimActionMsg = renderText(HTML("<b>FVSClimAttrs table deleted if it existed.</b>"))
    }
  })
  ## ClimateMsgs
  observe({
    if (input$topPan == "Manage Projects" && input$inputDBPan == "Upload Climate-FVS data")
    {
      exTabs=dbListTables(dbGlb$dbIcon)
      if ("FVS_ClimAttrs" %in% exTabs)
      {
        nstds = dbGetQuery(dbGlb$dbIcon,"select distinct Stand_ID from 'FVS_ClimAttrs'")
        nsenc = dbGetQuery(dbGlb$dbIcon,"select distinct Scenario from 'FVS_ClimAttrs'")
        output$uploadClimActionMsg = renderText(HTML(paste0("<b>Existing FVSClimAttrs data contains ",
          nrow(nstds)," stands and ",nrow(nsenc)," scenarios</b>")))
      } else output$uploadClimActionMsg = renderText(HTML(paste0("<b>There is no existing FVSClimAttrs data.</b>")))
    }
  })
  ## climateFVSUpload
  observe({  
    if (is.null(input$climateFVSUpload)) return() 
    progress <- shiny::Progress$new(session,min=1,max=10)
    progress$set(message = "Loading data set",value = 2)
    climAtt="FVSClimAttrs.csv"
    curdir=getwd()
    setwd(dirname(input$climateFVSUpload$datapath))
    if (input$climateFVSUpload$type == "application/zip")
      try(unzip(input$climateFVSUpload$datapath, files = climAtt)) else 
      file.copy(input$climateFVSUpload$datapath,climAtt,
        overwrite = TRUE)
    if (!file.exists(climAtt)) 
    {
cat ("no FVSClimAttrs.csv file\n")
      output$uploadClimActionMsg = renderText("FVSClimAttrs.csv not found.")
      progress$set(message = "FVSClimAttrs.csv not found", value = 6)
      Sys.sleep (2)   
      session$sendCustomMessage(type = "resetFileInputHandler","climateFVSUpload")
      progress$close()
      setwd(curdir)
      unlink(input$climateFVSUpload$datapath)
      return()
    }
cat ("processing FVSClimAttrs.csv\n")
    progress$set(message = "Loading data set (big files take a while)",value = 2) 
    climd = read.csv(climAtt,nrows=1)
    climd = read.csv(climAtt,colClasses=c(rep("character",2),
        "integer",rep("numeric",ncol(climd)-3)),as.is=TRUE)
    unlink(climAtt)
    unlink(input$climateFVSUpload$datapath)
    setwd(curdir)
    if (names(climd)[2] != "Scenario")
    {
      output$uploadClimActionMsg = renderText(HTML("<b>FVSClimAttrs.csv does not contain expected column names.</b>"))
      progress$set(message = "FVSClimAttrs.csv not as expected", value = 6)
      Sys.sleep (2)
      session$sendCustomMessage(type = "resetFileInputHandler","climateFVSUpload")
      progress$close()
      rm(climd)
      return()
    }
    names(climd)[1]="Stand_ID"
    cdnames=colnames(climd)
    periods=grep(".",cdnames,fixed=TRUE)
    if (length(periods))
    {
      message = paste0("Illegal period(s) in column name(s): ",
                       paste0(cdnames[periods],collapse=","))
      progress$set(message,value = 4) 
      Sys.sleep (.5)
      progress$close()
      output$uploadClimActionMsg = renderText(HTML(paste0("<b>",message,". Data not loaded.</b>")))
      rm(climd)
      return()
    }      
    climTab <- myListTables(dbGlb$dbIcon)    
    if (!("FVS_ClimAttrs" %in% climTab))
    {
cat ("no current FVS_ClimAttrs\n")
      progress$set(message = "Building FVS_ClimAttrs table",value = 4) 
      dbWriteTable(dbGlb$dbIcon,"FVS_ClimAttrs",climd)
      rm (climd)
      progress$set(message = "Creating FVS_ClimAttrs index",value = 6)
      dbExecute(dbGlb$dbIcon,'drop index if exists StdScnIndex')
      dbExecute(dbGlb$dbIcon,"create index StdScnIndex on FVS_ClimAttrs (Stand_ID, Scenario);")
      nstds = dbGetQuery(dbGlb$dbIcon,"select distinct Stand_ID from 'FVS_ClimAttrs'")
      nsenc = dbGetQuery(dbGlb$dbIcon,"select distinct Scenario from 'FVS_ClimAttrs'")
      output$uploadClimActionMsg = renderText(HTML(paste0("<b>FVSClimAttrs data contains ",
          nrow(nstds)," stands and ",nrow(nsenc)," scenarios</b>")))
      progress$set(message = "Done", value = 9)
      Sys.sleep (.5)
      progress$close()
      return()      
    }
    progress$set(message = "Building temporary FVS_ClimAttrs table",value = 4) 
    dbWriteTable(dbGlb$dbIcon, "tmp_fvs_clim_attrs", climd, 
                 temporary = TRUE, overwrite = TRUE)
    rm (climd)  
    progress$set(message = "Query distinct stands and scenarios",value = 5)
    distinct = dbGetQuery(dbGlb$dbIcon,"select distinct Stand_ID,Scenario from 'tmp_fvs_clim_attrs'")
    progress$set(message = "Cleaning previous climate data as needed",value = 6)    
    dbBegin(dbGlb$dbIcon)
    results = apply(distinct,1,function (x,dbIcon)
    {
      dbExecute(dbIcon,paste0('delete from FVS_ClimAttrs where Stand_ID = "',
         x[1],'" and Scenario = "',x[2],'"'))
    }, dbGlb$dbIcon)
    dbCommit(dbGlb$dbIcon)
    dbExecute(dbGlb$dbIcon,'drop index if exists StdScnIndex')
    # get the table:
    progress$set(message = "Inserting new data",value = 8)    
    oldAttrs = dbGetQuery(dbGlb$dbIcon,"select * from FVS_ClimAttrs limit 1")
    if (nrow(oldAttrs) == 0) 
    {
cat ("simple copy from new, all rows were deleted\n")
      dbExecute(dbGlb$dbIcon,"drop table FVS_ClimAttrs")
      dbExecute(dbGlb$dbIcon,"create table 'FVS_ClimAttrs' as select * from 'tmp_fvs_clim_attrs'")
    } else {
      newAttrs = dbGetQuery(dbGlb$dbIcon,"select * from 'tmp_fvs_clim_attrs' limit 1")
      if (!identical(colnames(oldAttrs),colnames(newAttrs)))
      {
cat ("need to match columns, cols are not identical\n")
        oldAttrs=colnames(oldAttrs)[-(1:3)]
        newAttrs=colnames(newAttrs)
        ssid = newAttrs[1:3]
        newAttrs = newAttrs[-(1:3)]
        oldsp=unlist(lapply(oldAttrs,function (x) if (toupper(x) == x) x else NULL))
        newsp=unlist(lapply(newAttrs,function (x) if (toupper(x) == x) x else NULL))
        bothsp = union(oldsp,newsp)
        oldot=setdiff(oldAttrs,bothsp)
        newot=setdiff(newAttrs,bothsp)
        bothot = union(oldot,newot)
        newall = c(bothsp,bothot)
        oldmiss= setdiff(newall,oldAttrs)
        newmiss= setdiff(newall,newAttrs)
        newall = c(ssid,newall)
        selnew = paste0(newall,collapse=",")
cat ("length(newmiss)=",length(newmiss)," selnew=",selnew,"\n")
        if (length(newmiss) > 0)  
        {
          dbBegin(dbGlb$dbIcon)
          for (mis in newmiss) dbExecute(dbGlb$dbIcon,
            paste0('alter table "tmp_fvs_clim_attrs" add "',mis,'" real'))
          dbCommit(dbGlb$dbIcon)
        }
cat ("length(oldmiss)=",length(oldmiss),"\n")
        if (length(oldmiss) > 0)
        {
          dbBegin(dbGlb$dbIcon)
          for (mis in oldmiss) dbExecute(dbGlb$dbIcon,
            paste0('alter table FVS_ClimAttrs add "',mis,'" real'))
          dbCommit(dbGlb$dbIcon)
        }
      }
      attrs = colnames(dbGetQuery(dbGlb$dbIcon,"select * from 'FVS_ClimAttrs' limit 1"))
      sel = paste0(attrs,collapse=",")
      qry=paste0("insert into FVS_ClimAttrs (",sel,") select ",sel," from 'tmp_fvs_clim_attrs'")
cat("insert qry=",qry,"\n")
      dbExecute(dbGlb$dbIcon,qry)
    }
    dbExecute(dbGlb$dbIcon,'drop table "tmp_fvs_clim_attrs"')
    progress$set(message = "Recreating FVS_ClimAttrs index",value = 9)
    dbExecute(dbGlb$dbIcon,'drop index if exists StdScnIndex')
    dbExecute(dbGlb$dbIcon,"create index StdScnIndex on FVS_ClimAttrs (Stand_ID, Scenario);")
    nstds = dbGetQuery(dbGlb$dbIcon,"select distinct Stand_ID from 'FVS_ClimAttrs'")
    nsenc = dbGetQuery(dbGlb$dbIcon,"select distinct Scenario from 'FVS_ClimAttrs'")
    output$uploadClimActionMsg = renderText(HTML(paste0("<b>FVSClimAttrs data contains ",
        nrow(nstds)," stands and ",nrow(nsenc)," scenarios</b>")))
    progress$set(message = "Done", value = 10)
    Sys.sleep (2)
    session$sendCustomMessage(type = "resetFileInputHandler","climateFVSUpload")
    progress$close()   
  })  
  
  ## View and edit existing tables
  observe({
    if(input$inputDBPan == "View and edit existing tables" && input$topPan == "Manage Projects") 
    {
cat ("dataEditor View and edit existing tables\n")
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
      idx <- grep ("StandInit",tbs,ignore.case=TRUE)
      if (length(idx) == 0) idx=1     
      updateSelectInput(session=session, inputId="editSelDBtabs", choices=tbs, 
        selected=tbs[idx]) 
    }
  })                                                                                 

  ## editSelDBtabs
  observe({                      
cat ("editSelDBtabs, input$editSelDBtabs=",input$editSelDBtabs,
     " input$mode=",input$mode,"\n")
    if (length(input$editSelDBtabs)) 
    {         
      dbGlb$tblName <- input$editSelDBtabs
      fixEmptyTable(dbGlb)       
      msg=checkMinColumnDefs(dbGlb$dbIcon)
cat ("msg=",msg,"\n")
      dbGlb$tbl <- NULL                                           
      dbGlb$tblCols <- names(dbGlb$tbsCTypes[[dbGlb$tblName]])
      if (length(grep("Stand_ID",dbGlb$tblCols,ignore.case=TRUE))) 
      {
        rtn = try(dbGetQuery(dbGlb$dbIcon,
          paste0("select distinct Stand_ID from '",dbGlb$tblName,"'")))
        if (inherits(rtn,"try-error"))
        {
cat ("stand_ID query error.\n")
           return()
        } else dbGlb$sids = rtn[,1]
        if (any(is.na(dbGlb$sids))) dbGlb$sids[is.na(dbGlb$sids)] = ""
        if (length(dbGlb$sids) > 0)                                           
        {
          if (dbGlb$rowSelOn) updateSelectInput(session=session, 
            inputId="rowSelector",choices  = dbGlb$sids) else 
          output$stdSel <- mkStdSel(dbGlb)
        } 
      } else {
        dbGlb$sids <- NULL                                                  
        output$stdSel <- renderUI(NULL)                                         
        dbGlb$rowSelOn <- FALSE
      }   
      updateSelectInput(session=session, inputId="editSelDBvars", 
        choices=as.list(dbGlb$tblCols),selected=dbGlb$tblCols)
      html=NULL
      xlsxFile=system.file("extdata", "databaseDescription.xlsx", package="fvsOL")
      tabs = try(read.xlsx(xlsxFile=xlsxFile,sheet="InputTableDescriptions"))
      if (class(tabs) != "try-error")
      {
        row = charmatch(toupper(input$editSelDBtabs),toupper(tabs[,1]))
        if (!is.na(row))
        {
          tab = tabs[row,1]
          html = paste0("<b>",tab,"</b> ",tabs[row,2])
          mhtml = xlsx2html(tab,xlsxfile=xlsxFile)
          if (!is.null(mhtml)) html = paste0(html,mhtml)
        }
      }
      output$inputTabDesc <- renderUI(HTML(html))
    }
cat ("editSelDBtabs returns\n")
  })              
  
  ## editSelDBvars
  observe({              
    if (length(input$editSelDBvars)) 
    {
cat ("editSelDBvars, input$editSelDBvars=",input$editSelDBvars," mode=",input$mode,"\n")       
      ndr = suppressWarnings(as.numeric(input$disprows))
      if (is.na(ndr) || is.nan(ndr) || ndr < 1 || ndr > 500) ndr = 20 
      dbGlb$disprows <- ndr
      switch(input$mode,                    
        "New rows"= 
        {
          dbGlb$rows <- NULL
          tbl <- as.data.frame(matrix("",ncol=length(input$editSelDBvars),
                               nrow=dbGlb$disprows))
          colnames(tbl) <- input$editSelDBvars
          output$tbl <- renderRHandsontable(rhandsontable(tbl,
            readOnly=FALSE,useTypes=TRUE,contextMenu=FALSE,width="100%"))
          output$stdSel <- output$navRows <- renderUI(NULL)
          dbGlb$rowSelOn <- dbGlb$navsOn <- FALSE
        },
        Edit = 
        {
          qry <- paste0("select _ROWID_,* from '",dbGlb$tblName,"'")
          qry <- if (length(intersect("stand_id",tolower(dbGlb$tblCols))) && 
                     length(input$rowSelector))
            paste0(qry," where Stand_ID in (",
                  paste0("'",input$rowSelector,"'",collapse=","),");") else
            paste0(qry,";")                             
          dbGlb$tbl <- suppressWarnings(dbGetQuery(dbGlb$dbIcon,qry))
          lnames = tolower(colnames(dbGlb$tbl))
          stdSearch = trim(input$editStandSearch)
          if (nchar(stdSearch)>0) 
          {
            keep = try(grep (stdSearch,dbGlb$tbl[,charmatch("stand_id",lnames)]))
            if (class(keep) != "try-error" && length(keep)) dbGlb$tbl = dbGlb$tbl[keep,]
          }
          rownames(dbGlb$tbl) = dbGlb$tbl$rowid
          for (col in 2:ncol(dbGlb$tbl))
            if (! ("character" %in% class(dbGlb$tbl[[col]]))) 
               dbGlb$tbl[[col]] = as.character(dbGlb$tbl[[col]])
          if (nrow(dbGlb$tbl) == 0) dbGlb$rows = NULL else
          {
            dbGlb$tbl$Delete = FALSE
            dbGlb$rows <- c(1,min(nrow(dbGlb$tbl),dbGlb$disprows))
            output$tbl <- renderRHandsontable(
              rhandsontable(dbGlb$tbl[1:min(nrow(dbGlb$tbl),dbGlb$disprows),
                union(c("Delete"),input$editSelDBvars),drop=FALSE],
                 readOnly=FALSE,useTypes=TRUE,contextMenu=FALSE))
            if (!dbGlb$navsOn) 
            {
              dbGlb$navsOn <- TRUE
              output$navRows <- renderUI(list(
                actionButton("previousRows","<< previous rows"),
                actionButton("nextRows","next rows >>"),
                textOutput("rowRng",inline=TRUE)))
            }
            output$rowRng <- renderText(paste0(dbGlb$rows[1]," to ",
                  dbGlb$rows[2]," of ",nrow(dbGlb$tbl)))            
            if (!dbGlb$rowSelOn && length(dbGlb$sids))
              output$stdSel <- mkStdSel(dbGlb)
          }
        }
      )
    }
  })
  
  ## nextRows
  observe({
    if (length(input$nextRows) && input$nextRows > 0) 
    {
      if (is.null(dbGlb$tbl)) return()
      input$disprows
      newBot <- min(dbGlb$rows[2]+dbGlb$disprows,nrow(dbGlb$tbl))
      newTop <- max(newBot-dbGlb$disprows-1,1)
      dbGlb$rows <- c(newTop,newBot)
      output$tbl <- renderRHandsontable(rhandsontable(dbGlb$tbl[newTop:newBot,
        union(c("Delete"),isolate(input$editSelDBvars)),
          drop=FALSE],readOnly=FALSE,useTypes=TRUE,contextMenu=FALSE))
      output$rowRng <- renderText(paste0(newTop," to ",
          newBot," of ",nrow(dbGlb$tbl)))
    }
  })
  
  ## previousRows
  observe({
    if (length(input$previousRows) && input$previousRows > 0) 
    {
      if (is.null(dbGlb$tbl)) return()
      input$disprows
      newTop <- max(dbGlb$rows[1]-dbGlb$disprows,1)
      newBot <- min(newTop+dbGlb$disprows-1,nrow(dbGlb$tbl))
      dbGlb$rows <- c(newTop,newBot)
      output$tbl <- renderRHandsontable(rhandsontable(dbGlb$tbl[newTop:newBot,
        union(c("Delete"),isolate(input$editSelDBvars)),
          drop=FALSE],readOnly=FALSE,useTypes=TRUE,contextMenu=FALSE))
      output$rowRng <- renderText(paste0(newTop," to ",
          newBot," of ",nrow(dbGlb$tbl)))
    }
  })

  # commitChanges
  observe({
    if (input$commitChanges > 0) 
    {             
      isolate({
cat ("commitChanges, mode=",input$mode,"len tbl=",length(input$tbl),"\n")
        dd = lapply(input$tbl$params$data,function (jj) 
                    lapply(jj,function(x) if (is.null(x)) NA else x))
        inputTbl = matrix(unlist(dd),
                   ncol=length(input$tbl$params$columns),byrow=TRUE)
        inputTbl[inputTbl=="NA"] = NA
        colnames(inputTbl) = unlist(input$tbl$params$colHeaders)
        rownames(inputTbl) = unlist(input$tbl$params$rowHeaders)
        switch(input$mode,
          "New rows"= 
          {
            inserts <- mkInserts(inputTbl,dbGlb$tblName,
                                 dbGlb$tbsCTypes[[dbGlb$tblName]])                                                          
            if (length(inserts)) 
            {
              dbBegin(dbGlb$dbIcon)
              err = FALSE
              for (ins in inserts) 
              {
                res = try(dbExecute(dbGlb$dbIcon,ins))
                if (inherits(res,"try-error")) {err=TRUE; break}
              }
              if (err) 
              {
                dbRollback(dbGlb$dbIcon) 
                output$actionMsg = renderText(paste0("Error processing: ",ins))
                return()
              } else {
                dbCommit(dbGlb$dbIcon)
                output$actionMsg = renderText(paste0(length(inserts)," insert(s) processed."))
              }
              tbl <- as.data.frame(matrix("",
                     ncol=length(input$editSelDBvars),nrow=dbGlb$disprows))
              colnames(tbl) <- input$editSelDBvars
              output$tbl <- renderRHandsontable(rhandsontable(tbl,
                readOnly=FALSE,useTypes=TRUE,contextMenu=FALSE))
            }
          },
          Edit = 
          {
            err=FALSE
            nrows = nrow(inputTbl)
            nprocess = 0
            dbBegin(dbGlb$dbIcon)
            if (nrows) for (rn in 1:nrows)
            {
              row = inputTbl[rn,]
              id = rownames(inputTbl)[rn]
              if (row["Delete"] == "TRUE") 
              {
                qry = paste0("delete from ",dbGlb$tblName," where _ROWID_ = ",
                             id)
cat ("edit del, qry=",qry,"\n")                     
                res = try(dbExecute(dbGlb$dbIcon,qry))
                if (inherits(res,"try-error")) {err=TRUE; break}
                nprocess = nprocess+1
                if (!is.null(dbGlb$sids)) dbGlb$sids = NULL
              } else {              
                row = inputTbl[rn,]              
                if (length(row) < 2) next
                row = row[-1]
                row[is.na(row)] = ""
                row[row == "NA"] = ""
                org = subset(dbGlb$tbl,rowid == id)
                org = as.character(org[,names(row),drop=TRUE])
                org[is.na(org)] = ""
                org[org=="character(0)"] = ""
                org[org == "NA"] = ""
                names(org)=names(row)
                neq = vector("logical",length(row))
                for (i in 1:length(row)) neq[i]=!identical(row[i],org[i])              
                if (sum(neq) == 0) next
                update = row[neq]
                toquote = dbGlb$tbsCTypes[[dbGlb$tblName]][names(update)]
                if (!is.null(dbGlb$sids) && 
                    !is.na(toquote["Stand_ID"])) dbGlb$sids = NULL
                if (any(toquote))
                {
                  for (toq in names(toquote[toquote]))
                  {
                    update[toq] = if (update[toq]=="") "NULL" else
                      paste0("'",gsub("'","''",update[toq]),"'")
                  }
                }
                update[update==""] = "NULL"
                qry = paste0("update ",dbGlb$tblName," set ",
                  paste(paste0(names(update)," = ",update),collapse=", "),
                    " where _ROWID_ = ",id)
cat ("edit upd, qry=",qry,"\n")
                res = try(dbExecute(dbGlb$dbIcon,qry))              
                if (inherits(res,"try-error")) {err=TRUE; break}
                nprocess = nprocess+1
              }
            }
            if (err) 
            {
              dbRollback(dbGlb$dbIcon) 
              output$actionMsg = renderText(paste0("Error processing: ",qry))
              return()
            } else {
              dbCommit(dbGlb$dbIcon)
              output$actionMsg = renderText(paste0(nprocess," change(s) processed."))
            }
            fixEmptyTable(dbGlb)
cat ("after commit, is.null(dbGlb$sids)=",is.null(dbGlb$sids),
     " dbGlb$tblName=",dbGlb$tblName,
     " Stand_ID yes=",length(intersect("stand_id",tolower(dbGlb$tblCols))),"\n")
            if (is.null(dbGlb$sids) && 
                length(intersect("stand_id",tolower(dbGlb$tblCols))))
            {
              dbGlb$sids = dbGetQuery(dbGlb$dbIcon,paste0("select distinct Stand_ID from ",
                                dbGlb$tblName))[,1]
              if (any(is.na(dbGlb$sids))) dbGlb$sids[is.na(dbGlb$sids)] = ""
              if (dbGlb$rowSelOn && length(dbGlb$sids)) 
                updateSelectInput(session=session, inputId="rowSelector",
                  choices  = dbGlb$sids) else 
                output$stdSel <- mkStdSel(dbGlb)
            }  

            qry <- paste0("select _ROWID_,* from ",dbGlb$tblName)
            qry <- if (length(grep("stand_id",tolower(dbGlb$tblCols))) && 
                       length(input$rowSelector))
              paste0(qry," where Stand_ID in (",
                    paste0("'",input$rowSelector,"'",collapse=","),");") else
              paste0(qry,";") 
            dbGlb$tbl <- dbGetQuery(dbGlb$dbIcon,qry)
            rownames(dbGlb$tbl) = dbGlb$tbl$rowid
            for (col in 2:ncol(dbGlb$tbl))
              if (class(dbGlb$tbl[[col]])[1] != "character") 
                 dbGlb$tbl[[col]] = as.character(dbGlb$tbl[[col]])
            if (nrow(dbGlb$tbl) == 0) dbGlb$rows = NULL else 
            {
              dbGlb$tbl$Delete = FALSE
              dbGlb$rows <- c(dbGlb$rows[1],
                              min(nrow(dbGlb$tbl),dbGlb$rows[2]))
              output$tbl <- renderRHandsontable(rhandsontable(
                dbGlb$tbl[dbGlb$rows[1]:dbGlb$rows[2],
                union(c("Delete"),input$editSelDBvars),drop=FALSE],
                readOnly=FALSE,useTypes=TRUE,contextMenu=FALSE))
            }
          }
        )
      })
    }
    reloadStandSelection(session,input)
  })

  ## Remove all rows and commit
  observe({
    if(input$clearTable > 0)
    {
      session$sendCustomMessage(type = "dialogContentUpdate",
        message = list(id = "clearTableDlg",
                  message = "Are you sure you want to delete all rows from this database table?"))
    }
  })
  
  observe({
    if(input$clearTableDlgBtn == 0) return()
cat ("clearTable, tbl=",dbGlb$tblName,"\n")
    dbExecute(dbGlb$dbIcon,paste0("delete from ",dbGlb$tblName))
    dbGlb$navsOn <- FALSE            
    dbGlb$rowSelOn <- FALSE
    dbGlb$sids <- NULL
    output$stdSel <- renderUI(NULL)
    tmp = as.data.frame(lapply(dbGlb$tbsCTypes[[dbGlb$tblName]],
      function (x) vector(if (x) "character" else "numeric",1)),
      stringsAsFactors=FALSE)
    tmp[1,] = NA
    dbWriteTable(dbGlb$dbIcon,dbGlb$tblName,tmp,overwrite=TRUE)
    qry <- paste0("select _ROWID_,* from ",dbGlb$tblName)
    dbGlb$tbl <- dbGetQuery(dbGlb$dbIcon,qry)
    rownames(dbGlb$tbl) = dbGlb$tbl$rowid
    dbGlb$tbl$Delete = FALSE
    output$tbl <- renderRHandsontable(rhandsontable(
       dbGlb$tbl[,union(c("Delete"),input$selectdbvars),drop=FALSE],
                readOnly=FALSE,useTypes=TRUE,contextMenu=FALSE))
    output$rowRng <- renderText("1 to 1 of 1")
    isolate(if (input$mode=="New rows") updateRadioButtons(session=session, 
      inputId="mode",selected="Edit"))
  })

})
