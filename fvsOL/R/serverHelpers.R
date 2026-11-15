# Small helpers shared by the FVSOnlineServer sections (server*.R).
# They are ordinary package functions: pass session/output explicitly.

# Run a snippet of JavaScript in the browser. Uses the "jsCode" message
# handler registered in ui.R.
runJS <- function(session, code)
  session$sendCustomMessage(type = "jsCode", list(code = code))

# Enable or disable one or more inputs (buttons, text inputs, ...) by id.
setDisabled <- function(session, ids, disabled = TRUE)
  runJS(session, paste0("$('#", ids, "').prop('disabled',",
                        if (disabled) "true" else "false", ")", collapse = ";"))

# Show or hide one or more elements by id.
setVisible <- function(session, ids, visible = TRUE)
  runJS(session, paste0("$('#", ids, "').", if (visible) "show" else "hide",
                        "()", collapse = ";"))

# Set the title of the Simulate "Run" tab (the contChange output): "*Run*"
# in bold when the run has unsaved changes, plain "Run" when it is saved.
markRunDirty <- function(output, dirty = TRUE)
  output$contChange <- if (dirty) renderText(HTML("<b>*Run*</b>")) else renderUI("Run")

# Clear the component-building panel on the Components tab (title, condition,
# command and description outputs). funcRender=TRUE also clears the
# event-monitor function builder (fvsFuncRender).
clearBuildPanel <- function(output, funcRender = FALSE)
{
  ids <- c("titleBuild", "condBuild", "cmdBuild", "cmdBuildDesc",
           if (funcRender) "fvsFuncRender")
  for (id in ids) output[[id]] <- renderUI(NULL)
}

# Rebuild the run's contents list (mkSimCnts) and show it in the simCont
# select input. sels and justGrps are passed straight to mkSimCnts.
refreshSimCont <- function(session, globals, justGrps = FALSE, sels = NULL)
{
  mkSimCnts(globals$fvsRun, sels = sels, justGrps = justGrps)
  updateSelectInput(session = session, inputId = "simCont",
                    choices = globals$fvsRun$simcnts, selected = globals$fvsRun$selsim)
}

# Project backup zip files in the current directory, sorted newest name
# first and named by file name (an empty list if there are none).
# byContent=FALSE: files whose name contains "ProjectBackup".
# byContent=TRUE:  any .zip that contains projectId.txt and FVS_Data.db.
listProjectBackups <- function(byContent = FALSE)
{
  backups <- if (byContent)
  {
    b <- lapply(dir(pattern = ".zip"), function(f){
      if("projectId.txt" %in% utils::unzip(f, list = TRUE)$Name && "FVS_Data.db" %in% utils::unzip(f, list = TRUE)$Name) return(f)
    })
    unlist(b[!sapply(b, is.null)])
  } else dir(pattern="ProjectBackup")
  if (length(backups))
  {
    backups = sort(backups,decreasing=TRUE)
    names(backups) = backups
  } else backups=list()
  backups
}

# Refill the pickBackup select with listProjectBackups(byContent).
# selected may be a function of the backup list.
updateBackupList <- function(session, byContent = FALSE, selected = NULL)
{
  backups <- listProjectBackups(byContent)
  if (is.function(selected)) selected <- selected(backups)
  updateSelectInput(session=session, inputId="pickBackup",
    choices = backups, selected=selected)
}
