# The fvsOL user interface (FVSOnlineUI). This file holds the page header and
# the top-level tabset. Each top-level tab is built by a function in a tab*.R
# file:
#
#   tabSimulate.R        tabSimulate (with tabStands, tabTime, tabComponents,
#                        tabSelectOutputs, tabRun)
#   tabViewOutputs.R     tabViewOutputs (with tabGraphs)
#   tabVisualize.R       tabVisualize, tabMaps
#   tabManageProjects.R  tabManageProjects (with tabManageProject,
#                        tabImportInputData, tabImportRuns, tabDownloads)
#
# FVSOnlineUI is built when the package loads, and R loads the files in R/ in
# alphabetical (C locale) order. Every function called here must therefore be
# defined in a file that sorts before "ui.R". That is why the tab files are
# named tab*.R rather than ui*.R.
FVSOnlineUI <- fixedPage(
    tags$script(HTML("
    Shiny.addCustomMessageHandler('resetFileInput', function(elementId) {
      $('#' + elementId).val('');
      $('#' + elementId + '_progress').attr('style', 'width: 0%;');
      $('#' + elementId).next().val('No file selected');
      Shiny.onInputChange(elementId, null);
    });
  ")),
  tags$title(id="mainTitle", "Forest Vegetation Simulator"),
  tags$script(HTML('Shiny.addCustomMessageHandler("changeTitle", function(x) {document.title=x});')),
  tags$head(tags$style(HTML(
    ".shiny-notification {height: 80px;width: 500px;position:fixed;top: calc(50% - 40px);;left: calc(50% - 250px);;}")
    ),tags$script(HTML('
document.addEventListener("copy", (event) => {
  const anchorNode = document.getSelection().anchorNode;
  if (anchorNode instanceof HTMLElement &&
    anchorNode.classList.contains("selectize-input")) {
    const items = Array.from(anchorNode.getElementsByClassName("item active"));
    const string = items.map(i => i.innerText).join(", ");
    event.clipboardData.setData("text/plain", string);
    event.preventDefault();
  }
})
'))),
  tags$style(type="text/css", ".progress-bar {color: transparent!important}"),
  singleton(tags$head(tags$script(src = "message-handler.js"),
  tags$link(rel = "stylesheet", type= "text/css", href="FVS_styles.css")
          )),
  tags$style(HTML(paste0(
    ".nav>li>a {padding:3px;}",
    ".btn {padding:2px 2px;color:darkred; background-color:#eef8ff;}",
    ".form-control {padding:2px 4px; height:auto;}",
    ".form-group {margin-bottom:4px}",
    ".leaflet-popup-content-wrapper,.leaflet-popup-tip {background: rgb(255, 255, 255, .7); box-shadow: 0 3px 14px rgba(0,0,0,0.4);"
    ))),
  tags$script('
    Shiny.addCustomMessageHandler("resetFileInputHandler", function(x) {   
        var el = $("#" + x);
        el.replaceWith(el = el.clone(true));
        var id = "#" + x + "_progress";     
        $(id).css("visibility", "hidden");});'
    ),
  tags$head(tags$script(HTML(
      'Shiny.addCustomMessageHandler("jsCode",function(message) {eval(message.code);});'))),
  tags$style(type="text/css", paste0(".shiny-progress .progress-text {", 
             "background-color: #eef8ff; color: black; ",
             "position: absolute; left: 30px;",
             "opacity: .8; height: 35px; width: 50%;}")),
  fixedRow(column(width=4,offset=0,
      HTML(paste0('<div class="FVS_logo"><img src="FVSlogo.png" 
                   alt="Logo for the Forest Vegetation Simulator"</img>',
                  '&nbsp;Forest Vegetation Simulator</div><br>',
                  '<img class="USDA_logo" src="USDAFS.png" 
                  alt="USDA and the US Forest Service 
                  Caring for the land and serving people"</img>'))),
    column(width = 4, offset = .5,
      uiOutput("projectTitle"),
      uiOutput("contCnts")),
    column(width = 4, tags$div(id = "Metadata",
      uiOutput("serverDate"),
      uiOutput("sayDataSource"),
      actionButton("uploadData", "Upload inventory database")
      )
  )), #End of Header
  fixedRow(column(width=12,offset=0,
    tags$html(lang = "en"),
    uiOutput("appLocked"),
    # Each top-level tab is built by a function in a tab*.R file.
    tabsetPanel(id = "topPan",
      tabSimulate(),       # tabSimulate.R
      tabViewOutputs(),    # tabViewOutputs.R
      tabVisualize(),      # tabVisualize.R
      tabMaps(),           # tabVisualize.R
      tabManageProjects(), # tabManageProjects.R
      tabPanel("Help",
       fixedRow(column(width=12,offset=0,
          div(style = 'padding-top:1.5em;overflow-y:scroll;height:550px;',uiOutput("uiHelpText"))))  
      ) #END help tab  
   ) #END of topPan
   ) ) #END of second big row and End of Column
  ) #end fixedPage
