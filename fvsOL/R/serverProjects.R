# Project management: run scripts, project selection/new/open, change working directory, saveRun, group requests.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvProjects <- quote({
  ## customRunOps
  customRunOps <- function ()                                             
  {
    isolate({
      if (length(input$runScript) == 0)
      {  
cat ("in customRunOps runScript is empty\n")
        return()
      }  
cat ("in customRunOps runScript: ",input$runScript,"\n")
      globals$fvsRun$runScript = input$runScript
      output$uiCustomRunOps = renderUI(NULL)    
      if (input$runScript != "fvsRun")
      {
        fn=paste0("customRun_",globals$fvsRun$runScript,".R")
        if (!file.exists(fn)) fn=system.file("extdata", fn, package="fvsOL")
        if (!file.exists(fn)) return()        
        rtn = try(source(fn,local=TRUE))
        if (inherits(rtn,"try-error")) return()
        uiF = try(eval(parse(text=paste0(sub("fvsRun","ui",globals$fvsRun$runScript)))))
        if (class(uiF) != "function") return()
        output$uiCustomRunOps = renderUI(uiF(globals$fvsRun))
      } else {
        globals$fvsRun$uiCustomRunOps = list()
      }
if (length(globals$fvsRun$uiCustomRunOps)) lapply(names(globals$fvsRun$uiCustomRunOps), function (x,y)
cat ("globals$fvsRun$uiCustomRunOps$",x,"=",y[[x]],"\n",sep=""),globals$fvsRun$uiCustomRunOps) else
cat ("globals$fvsRun$uiCustomRunOps is empty\n")
    })
  }
  ## updateProjectSelections   
  updateProjectSelections <- function ()
  {
    selChoices = getProjectList() 
    checkmatch = basename(getwd())
    nsel = if(checkmatch %in% selChoices) charmatch(checkmatch,selChoices) else NULL
    if(length(globals$lastNewPrj)) nsel = charmatch(globals$lastNewPrj,selChoices)
    sel = if (is.null(nsel)) NULL else selChoices[[nsel]]
    updateSelectInput(session=session, inputId="PrjSelect",
        choices=selChoices,selected=sel)
    ### Block the ability to delete Project_1 on windows
    if(.Platform$OS.type == "windows")
    {
      prj1 = charmatch("Project_1",selChoices)
      if (!is.na(prj1)) selChoices=selChoices[-prj1]
      actprj <- grep(basename(getwd()),selChoices)
      if (length(actprj)) selChoices <- selChoices[-actprj]
    }
    updateSelectInput(session=session, inputId="PrjDelSelect",choices=selChoices,
                      selected=0)
    backups <- lapply(dir(pattern = ".zip"), function(f){
      if("projectId.txt" %in% utils::unzip(f, list = TRUE)$Name && "FVS_Data.db" %in% utils::unzip(f, list = TRUE)$Name) return(f)
    })
    backups <- unlist(backups[!sapply(backups, is.null)])
    if (length(backups)) 
    {
      backups = sort(backups,decreasing=TRUE)
      names(backups) = backups 
    } else backups=list()
    updateSelectInput(session=session, inputId="pickBackup",
      choices = backups, selected=NULL)
  }

   ## Projects hit
  observe({    
    if (input$topPan == "Manage Projects" && input$toolsPan == "Manage project") 
    {
cat ("Manage project hit\n")
      updateProjectSelections()
    }
    
  })
 
  ## Make New Project (PrjNew)
  observe({
    if (length(input$PrjNew)==0 || input$PrjNew == 0) return()
    isolate({                                                  
cat ("Make new project, input$PrjNewTitle=",input$PrjNewTitle,"\n")
      if (nchar(input$PrjNewTitle)==0) return()
      prjid = if (file.exists("projectId.txt")) scan("projectId.txt",
         what="character",sep="\n",quiet=TRUE) else NUL
      fbin = Sys.readlink(fvsBin) #will be na if file does not exist, "" if not symbolic link.
      if (is.na(fbin)) return()
      curdir = getwd()
      setwd("../")
      newTitle = input$PrjNewTitle
      newTitle=mkNameUnique(newTitle,setOfNames=names(getProjectList(includeLocked=TRUE)))
      ntit=paste0("title= ",newTitle)
      fn = if (isLocal()) 
      {       
        basedir = basename(curdir)
        newTitle <- mkFileNameUnique(newTitle)
        newTitle
      } else uuidgen()
      dir.create(fn)
      setwd(fn)
      newdir=getwd()
      if (dirname(fvsBin) == ".")  #fvsBin points to an entry in the current dir.
      {
        if (nchar(fbin) && .Platform$OS.type=="unix") file.symlink(fbin, "FVSbin") else 
          file.copy(paste0(normalizePath(curdir),"/FVSbin"), getwd(), recursive = TRUE,
            copy.mode = TRUE, copy.date = TRUE)
      }
      idrow = grep("title=",prjid)
      if (length(idrow)==0) prjid=c(prjid,ntit) else prjid[idrow]=ntit
cat ("new project dir=",getwd()," prjid=",prjid,"\n") 
      write(file="projectId.txt",prjid)
      updateTextInput(session=session, inputId="PrjNewTitle",value="")
      setwd(curdir)
      file.copy(from="app.R",to=paste0(normalizePath(newdir),"/app.R"))
      globals$lastNewPrj=newTitle
      updateProjectSelections()
    })
  }) 
  ## PrjOpen
  observe(if (length(input$PrjOpen) && input$PrjOpen > 0) 
  {
    isolate({
      newPrj=paste0("../",input$PrjSelect)
      plk = file.exists(paste0(newPrj,"/projectIsLocked.txt"))
cat("PrjOpen to=",newPrj," dir.exists(newPrj)=",dir.exists(newPrj),
" locked=",plk,"\n")
      if (plk) {updateProjectSelections();return()}
      if (dir.exists(newPrj))
      { 
        if (isLocal()) 
        {
        file.remove('./ProjectIsLocked.txt')
        setwd(newPrj)
        globals$reloadAppIsSet=1
        session$reload()    

        } else {                                           
          url = paste0(session$clientData$url_protocol,"//",
                       session$clientData$url_hostname,"/FVSwork/",input$PrjSelect)

        }
      }          
    })
  })

      observe({    
      if (input$topPan == "Simulate" && input$rightPan == "Stands") 
      {
        session$sendCustomMessage("changeTitle", "FVS: Simulate -> Stands")
      }

      else if (input$topPan == "Simulate" && input$rightPan == "Time") 
      {
        session$sendCustomMessage("changeTitle", "FVS: Simulate -> Time")
      }

      else if (input$topPan == "Simulate" && input$rightPan == "Components") 
      {
        if (input$compTabSet == "Management") {
          session$sendCustomMessage("changeTitle", "FVS: Simulate -> Components -> Management")
        }
        else if (input$compTabSet == "Modifiers") {
          session$sendCustomMessage("changeTitle", "FVS: Simulate -> Components -> Modifiers")
        }
        else if (input$compTabSet == "Event Monitor") {
          session$sendCustomMessage("changeTitle", "FVS: Simulate -> Components -> Event Monitor")
        }
        else if (input$compTabSet == "Economic") {
          session$sendCustomMessage("changeTitle", "FVS: Simulate -> Components -> Economic")
        }
        else if (input$compTabSet == "Keywords") {
          session$sendCustomMessage("changeTitle", "FVS: Simulate -> Components -> Keywords")
        }
        else if (input$compTabSet == "Editor") {
          session$sendCustomMessage("changeTitle", "FVS: Simulate -> Components -> Editor")
        }
      }

      else if (input$topPan == "Simulate" && input$rightPan == "Select Outputs") 
      {
        session$sendCustomMessage("changeTitle", "FVS: Simulate -> Select Outputs")
      }      
      
      else if (input$topPan == "View Outputs" && input$leftPan == "Load") 
      {
        session$sendCustomMessage("changeTitle", "FVS: View Outputs -> Load")
      }

      else if (input$topPan == "View Outputs" && input$leftPan == "Explore") 
      {
        session$sendCustomMessage("changeTitle", "FVS: View Outputs -> Explore")
      }

      else if (input$topPan == "Visualize") 
      {
        session$sendCustomMessage("changeTitle", "FVS: Visualize")
      }

      else if (input$topPan == "View On Maps") 
      {
        session$sendCustomMessage("changeTitle", "FVS: View On Maps")
      }

      else if (input$topPan == "Manage Projects") 
      {
        if (input$toolsPan == "Manage project") {
          session$sendCustomMessage("changeTitle", "FVS: Manage Project")
        }
        else if (input$toolsPan == "Import input data") 
        {

          setDisabled(session, c("installTrainDB","installEmptyDB"), FALSE)

        # Implement logic to control use of the training database and blank database installation based on existing runs
        FIA_Runs_Found = FALSE
        Existing_Runs_Found = FALSE
        FIATables <- c("FVS_STANDINIT_PLOT","FVS_PLOTINIT_PLOT","FVS_STANDINIT_COND")
        # Check for unsaved run contents
        if (is.null(input$inTabs)) {
          showModal(shiny::modalDialog(
            title = "Stand list updating",
            "Please return to the 'Simulate' tab and allow stands list to update before returning to the 'Manage Projects' tab.",
            easyClose = TRUE
          ))

        } else {
          if (length(input$simCont) && toupper(input$inTabs) %in% FIATables) {
          FIA_Runs_Found = TRUE
          }

          if (length(input$simCont)) {
            Existing_Runs_Found = TRUE
          }
          
          # If flags are still FALSE, check for existing runs in the project database
          if (!FIA_Runs_Found || !Existing_Runs_Found) {
            for (r in seq_along(globals$FVS_Runs)) {
              checkRun = loadFVSRun(dbGlb$prjDB,globals$FVS_Runs[[r]])
              if (length(checkRun$selsim)) {
                Existing_Runs_Found = TRUE
                if ((toupper(checkRun$refreshDB) %in% FIATables)) {
                  FIA_Runs_Found = TRUE
                }
              }
            }
          }

          if (FIA_Runs_Found) {
            output$TrainingDBMsg <- renderUI({
              HTML(paste0("<b>A run containing FIA data was found.  
                Please delete any runs containing FIA data before installing the training database.  
                This option has been disabled.</b>"))
            })
            setDisabled(session, "installTrainDB", TRUE)

          } 
          if (Existing_Runs_Found) {
              output$EmptyDBMsg <- renderUI({
              HTML(paste0("<b>Runs containing data were found.  
                Installation of the blank database has been disabled.</b>"))
            })
              setDisabled(session, "installEmptyDB", TRUE)
          }
        }

          if (input$inputDBPan == "Upload inventory database") {
            session$sendCustomMessage("changeTitle", "FVS: Upload Inventory Database")
          }
          else if (input$inputDBPan == "View and edit existing tables") {
            session$sendCustomMessage("changeTitle", "FVS: View / Edit Existing Tables")
          }
          else if (input$inputDBPan == "Upload Map data") {
            session$sendCustomMessage("changeTitle", "FVS: Upload Spatial Data")
          }
          else if (input$inputDBPan == "Append .csv data to existing tables") {
            session$sendCustomMessage("changeTitle", "FVS: Append data to database")
          }
          else if (input$inputDBPan == "Upload Climate-FVS data") {
            session$sendCustomMessage("changeTitle", "FVS: Upload Climate Data")
          }
        }
        else if (input$toolsPan == "Import runs and other items") {
          session$sendCustomMessage("changeTitle", "FVS: Import Project Elements")
        }
        else if (input$toolsPan == "Downloads") {
          session$sendCustomMessage("changeTitle", "FVS: Download Project Elements")
        }
      }
      else if (input$topPan == "Help") {
        session$sendCustomMessage("changeTitle", "FVS: Help")
      }
    })

  ############################################################################################################
  #
  # Event Handler for input$Change_wd
  #
  ############################################################################################################
  
  if (isLocal()) {
      observeEvent(input$Change_wd, {
        # ObserverEvent triggers multiple times, so need to check length to ensure input was created in dialog
        if(length(input$Change_wd) > 1)
        {
          result <- tryCatch({
            dirPath<- parseDirPath(volumes, input$Change_wd)
            cat(paste0("User selected: ", dirPath))

            # Verify user has write permission to path
            if(!(file.access(dirPath, 2) == 0)){
              cat("User write permissions denied")
              showModal(shiny::modalDialog(
                title = "Write Permission Denied",
                "Sorry, you do not have permissions to write to this folder, please select another location.",
                easyClose = F))
              return()
            }

            file.remove('./ProjectIsLocked.txt')
            setwd(dirPath)
            globals$reloadAppIsSet=1
            session$reload()
            }, warning = function(e) {
              message("Warning in Change Directory")
              print(e)
              return(NULL)
            }, error = function(e) {
            message("Error occured in Change Directory")
            print(e)
            return(NULL)
          })
        }
    }) # End Event Handler for input$Change_wd
  }

    
  ## Full run/Just groups
  observe({
    refreshSimCont(session, globals, justGrps=input$simContType=="Just groups")
  })

  ## saveRun
  saveRun <- function(input,session) 
  {
    isolate({
      runName <- gsub("[^a-zA-Z0-9 ]", "", input$title)
      if (nchar(input$title) == 0) runName <- nextRunName(names(globals$FVS_Runs))
      me=match(globals$fvsRun$uuid,globals$FVS_Runs)
cat ("saveRun, length(me)=",length(me)," uuid=",globals$fvsRun$uuid," class(globals$fvsRun)=",class(globals$fvsRun),"\n")
      if (length(me)==0 || is.na(me)) return() else runNames=names(globals$FVS_Runs)[-me]
      runName=mkNameUnique(runName,runNames)
      if (runName != input$title) updateTextInput(session=session, inputId="title",
         value=runName)         
      globals$fvsRun$title = runName
cat ("in saveRun, globals$fvsRun$defMgmtID=",globals$fvsRun$defMgmtID," input$defMgmtID=",input$defMgmtID,"\n")
      globals$fvsRun$defMgmtID = input$defMgmtID
      globals$fvsRun$runScript = if (length(input$runScript)) input$runScript else "fvsRun"
      if (globals$fvsRun$runScript == "fvsRun") globals$fvsRun$uiCustomRunOps = list() else
      {
        for (item in names(globals$fvsRun$uiCustomRunOps))                                
          globals$fvsRun$uiCustomRunOps[[item]] = input[[item]]
      }
cat ("saveRun class(globals$fvsRun)=",class(globals$fvsRun),"\n")
      # sometimes the class fvsRun is assigned to package ".GlobalEnv" and it
      # should be the for this package.
      if (attr(class(globals$fvsRun),"package")==".GlobalEnv") 
          attr(class(globals$fvsRun),"package") = "fvsOL"
      storeFVSRun(dbGlb$prjDB,globals$fvsRun)
      globals$FVS_Runs=getFVSRuns(dbGlb$prjDB)
cat ("saveRun, input$inVars=",input$inVars,"\n") 
      globals$lastRunVar = globals$activeVariants[1]   
cat ("leaving saveRun, globals$lastRunVar=",globals$lastRunVar,"\n") 
    }) 
  }

  processGroupRequest <- function() {
    updateTable <- input$inTabs
    variant <- input$inVars
    sid <- modGroupGlb$sid
    screenedStandsList <- modGroupGlb$stands

    if(input$GroupCreateDelete == "Create new group"){    
      tryCatch(
        expr = {
          newUsrGroupName = gsub(" ","_",trimws(input$NewGroupName))
          
          if(newUsrGroupName == ""){
            showModal(shiny::modalDialog(title = "Missing Group Name", 
              "'New Group Name' missing.  Please include a new group name 
              to perform this operation "))
            return()
          }

          dropStands = list()
          query <- sprintf("SELECT INSTR([GROUPS], ?) FROM %s WHERE %s IN (?) AND INSTR(LOWER(VARIANT), LOWER(?)) > 0", updateTable, sid)      
          for(s in screenedStandsList){
            res = dbGetQuery(dbGlb$dbIcon, query, params = c(list(newUsrGroupName), s, list(variant)))
            if(res > 0) {
              dropStands <- c(dropStands,s)
            }
          }

          # Filter out stands with pre-existing group name match
          screenedStandsList <- screenedStandsList[! screenedStandsList %in% dropStands]
          if (length(screenedStandsList) == 0 && length(dropStands) > 0) {
            showModal(shiny::modalDialog(title = "Duplicate Group Name Found", 
              "Group name '", newUsrGroupName, "' already found in all requested stand(s).  No updates will occur."))
              return()
          }
          
          query <- sprintf("UPDATE %s SET [GROUPS] = [GROUPS] || ' ' || ? 
          WHERE %s IN (%s) AND INSTR(LOWER(VARIANT), LOWER(?)) > 0;",
          updateTable, sid, paste(rep("?",length(screenedStandsList)),collapse=","))
          res = dbExecute(dbGlb$dbIcon, query, params = c(list(newUsrGroupName),screenedStandsList,list(variant)))
          cat("Rows Affected: ", res)
          if (length(dropStands) > 0) {
            showModal(shiny::modalDialog(title = "Duplicate Group Name Found", 
              "Group name '", newUsrGroupName, "' already found in stand(s): ", paste0(dropStands, collapse = ", "), 
              ". Updates made only to: ", paste0(screenedStandsList, collapse = ", ")))
          }
          else if(res == length(screenedStandsList)){
            showModal(shiny::modalDialog(title = "Operation Successful", 
            paste0("Group '", newUsrGroupName, "' has been successfully added to requested stands.")))
          }
          else if(res == 0){
            showModal(shiny::modalDialog(title = "Operation Unsuccessful", 
            paste0("Requested action returned 0 (zero) rows.",
            "Please check that supplied stand / plot ids exist in ", updateTable, " table.")))
          }
          else {
            showModal(shiny::modalDialog(title="Operation Successful",
            paste0("Requested action updated ", res, " stands of ", length(screenedStandsList), 
            " requested stands / plots.  Please double check input to ensure stands / plots ",
            "exist in ", updateTable, " table.")))
          }
          reloadStandSelection(session, input)
        },

        error = function(e){ 
          cat(paste(e))
        }
      )
    }

    else if (input$GroupCreateDelete == "Add stands to existing group(s)"){
      tryCatch(
        expr = {
          selGrp = input$ExtGroups
          if(length(selGrp) == 0){
            showModal(shiny::modalDialog(title = "Missing Group(s)", 
                  "Please select at least one existing group name 
                  to perform this operation "))
          }

          for(g in selGrp){
            dropStands = list()
            stdsCpy <- screenedStandsList
            query <- sprintf("SELECT INSTR([GROUPS], ?) FROM %s WHERE %s IN (?) AND INSTR(LOWER(VARIANT), LOWER(?)) > 0", updateTable, sid)  
            for(s in stdsCpy) {
              res <- dbGetQuery(dbGlb$dbIcon, query, params = c(list(g), s, list(variant)))
              if(res > 0) {
                dropStands <- c(dropStands,s)
              }
            }

            # Filter out stands with pre-existing group name match
            stdsCpy <- stdsCpy[! stdsCpy %in% dropStands]
            if (length(stdsCpy) == 0 && length(dropStands) > 0) {
              showModal(shiny::modalDialog(title = "Duplicate Group Name Found", 
                "Group name '", g, "' already found in all requested stand(s).  No updates will occur for this group."))
            }

            if(length(stdsCpy) > 0){
              query <-sprintf("UPDATE %s SET [GROUPS] = [GROUPS]  || ' ' || ? WHERE %s IN (%s) AND INSTR(LOWER(VARIANT), LOWER(?)) > 0;",
              updateTable, sid, paste(rep("?",length(stdsCpy)),collapse=","))
              res = dbExecute(dbGlb$dbIcon, query, params = c(as.list(g), stdsCpy, as.list(variant)))
              cat("Rows Affected: ", res)

              if (length(dropStands) > 0) {
                showModal(shiny::modalDialog(title = "Duplicate Group Name Found", 
                  "Group name '", g, "' already found in stand(s): ", paste0(dropStands, collapse = ", "), 
                  ". Updates will only be made to: ", paste0(stdsCpy, collapse = ", ")))
              }

              else if(res == length(stdsCpy)){
                showModal(shiny::modalDialog(title = "Operation Successful", 
                paste0("Group(s) '", paste0(g, collapse ="', '"), "' has been successfully added to requested stands.")))
              }
              else if(res == 0){
                showModal(shiny::modalDialog(title = "Operation Unsuccessful", 
                paste0("Requested action returned 0 (zero) rows.",
                "Please check that supplied stand / plot ids exist in ", updateTable, " table.")))
              }
              else {
                showModal(shiny::modalDialog(title="Operation Successful",
                paste0("Requested action updated ", res, " stands of ", length(stdsCpy), 
                " requested stands / plots.  Please double check input to ensure stands / plots ",
                "exist in ", updateTable, " table.")))
              }
              reloadStandSelection(session, input)
            }
          }
        },
        error = function(e){ 
          cat(paste(e))
        }
      )
    }

    else { # Remove Stands From Existing Group(s)
      tryCatch(
        expr = {
          rmGrp = input$ExtGroups
          for(rmGrpX in rmGrp){
            query <-sprintf("UPDATE %s SET [GROUPS] = 
              CASE
                WHEN INSTR([GROUPS], ?) = 1 THEN REPLACE ([GROUPS], ? || ' ', '') 
                WHEN LENGTH([GROUPS]) - LENGTH(?) > INSTR([GROUPS], ?) THEN REPLACE ([GROUPS], ' ' || ? || ' ', ' ')
                ELSE REPLACE ([GROUPS], ' ' || ?, '') 
                END 
            WHERE %s IN (%s) AND INSTR(LOWER(VARIANT), LOWER(?)) > 0;",updateTable,sid,paste(rep("?",length(screenedStandsList)),collapse=","))
            res = dbExecute(dbGlb$dbIcon, query, 
              params = c(as.list(rmGrpX),as.list(rmGrpX),as.list(rmGrpX),as.list(rmGrpX),as.list(rmGrpX),as.list(rmGrpX),screenedStandsList, as.list(variant)))
            cat("Rows Affected: ", res)
            if(res == length(screenedStandsList)) {
              showModal(shiny::modalDialog(title = "Operation Successful", 
              paste0("Group '", rmGrpX, "' has been successfully removed from requested stands.")))
            }
            else if(res == 0) {
              showModal(shiny::modalDialog(title = "Operation Unsuccessful", 
              paste0("Requested action returned 0 (zero) rows for group, '",rmGrpX,"'. ",
              "Please check that supplied stand / plot ids exist in ", updateTable, " table.")))
            }
            else {
              showModal(shiny::modalDialog(title="Operation Successful",
              paste0("Requested action for group '", rmGrpX,"' updated ", res, " stands of ", length(screenedStandsList), 
              " requested stands / plots.  Please double check input to ensure stands / plots ",
              "exist in ", updateTable, " table.")))
            }
          }
          reloadStandSelection(session, input)
        },
        error = function(e){ 
          cat(paste(e))
        }
      )
    }
  }
})
