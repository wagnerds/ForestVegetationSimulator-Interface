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
