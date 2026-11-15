# Part of the fvsOL user interface. These functions build tab panels
# for FVSOnlineUI (see ui.R). This file must sort before ui.R
# alphabetically, because FVSOnlineUI is built when the package loads.

# Manage Projects tab with its Manage project/Import input data/Import runs/Downloads sub-tabs.
tabManageProjects <- function()
        tabPanel("Manage Projects",
        tabsetPanel(id="toolsPan",
          tabManageProject(),
          tabImportInputData(),
          tabImportRuns(),
          tabDownloads()
        )  #END  tabsetPanel for toolsPan
      )

# Manage Projects > Manage project sub-tab: open/new/backup/delete project, change directory.
tabManageProject <- function()
          tabPanel("Manage project",
            div(
              h4("Start another project"), 
              if (isLocal()){
                div(id="VDINoteDiv",
                  uiOutput("VDINote"),
                  shinyFiles::shinyDirButton("Change_wd", "Change Working Directory", "Select Project Folder"),
                  )},
              selectInput("PrjSelect", "Select project", multiple=FALSE,
                 choices = list(), selectize=FALSE),  
              p(actionButton("PrjOpen","Open selected project")),
              h4("Create a new project"),
              textInput("PrjNewTitle", "New project title", ""), 
              actionButton("PrjNew","Make new project"),
            ),

            hr(),
            div(id="MngPrjBkDiv",
            h4("Make new project backup file"),
            radioButtons("prjBckCnts","Backup Options: ",width="50%",choices=
               list("Project files only"="projOnly",
                    "Project files and FVS software"="projFVS"),
                    selected="projOnly"),
            actionButton("mkZipBackup","Make a project backup zip file"),                          
            h4("Manage current project backup files"),
            selectInput("pickBackup", "Select backup to process", multiple=FALSE,
               choices = list(), selectize=FALSE),
            actionButton("delZipBackup","Delete backup"),
            downloadButton("dlPrjBackup","Download backup"),
            tags$style(type="text/css","#restorePrjBackupDlg{color:darkred;font-size:150%;width:100%;}"),
            list(
              modalTriggerButton("restorePrjBackup", "#restorePrjBackupDlg", 
                "Restore from backup"),
              modalDialog(id="restorePrjBackupDlg", footer=list(
                modalTriggerButton("restorePrjBackupDlgBtnA", "#restorePrjBackupDlg", 
                  htmlOutput("btnA", inline=TRUE)),
                modalTriggerButton("restorePrjBackupDlgBtnB", "#restorePrjBackupDlg", 
                  htmlOutput("btnB", inline=TRUE)),
                modalTriggerButton("restorePrjBackupDlgBtnC", "#restorePrjBackupDlg", 
                  "Cancel"))) )
              ),

            if(isLocal()){div(id="bkuploadDiv",
              h4("Upload existing project backup file into current project"),
              fileInput("upZipBackup", "Upload project backup zip file" ,width = "30%"))
            },

            hr(),
            div(id = "delPrjDiv",
            uiOutput("delPrjActionMsg"),
            h4("Delete entire project"),
            selectInput("PrjDelSelect", "Select project to delete", multiple = FALSE,
                        choices = list(), selectize = FALSE),                                        
            list(modalTriggerButton("PrjDelete", "#PrjDeleteDlg", "Delete project"),
                 modalDialog(id = "PrjDeleteDlg", footer = list(
                 modalTriggerButton("PrjDeleteDlgBtn", "#PrjDeleteDlg", "Yes"),
                 tags$button(type = "button", class = "btn btn-primary",'data-dismiss' = "modal", "No")))),
            tags$style(type="text/css","#delPrjActionMsg{color:darkred;}"),
            h4("Delete outputs in current project"),
            list(
              modalTriggerButton("deleteAllOutputs", "#deleteAllOutputsDlg", "Delete ALL outputs in current project"),
              modalDialog(id="deleteAllOutputsDlg", footer=list(
                modalTriggerButton("deleteAllOutputsDlgBtn", "#deleteAllOutputsDlg", "Yes"),
                tags$button(type = "button", class = "btn btn-primary", 'data-dismiss' = "modal", "Cancel")))
            ),                      
            h4("Delete runs in current project"),
            list(
              modalTriggerButton("deleteAllRuns", "#deleteAllRunsDlg", "Delete ALL runs and related outputs in current project"),
              modalDialog(id="deleteAllRunsDlg", footer=list(modalTriggerButton("deleteAllRunsDlgBtn", "#deleteAllRunsDlg", "Yes"),
                                                             tags$button(type = "button", class = "btn btn-primary", 'data-dismiss' = "modal", "Cancel")))
             )
            )
          )

# Manage Projects > Import input data sub-tab: upload, view/edit, map, CSV and climate data.
tabImportInputData <- function()
        tabPanel("Import input data", 
        fixedRow(column(width=12,offset=0,
          tabsetPanel(id="inputDBPan", 

            tabPanel("Upload inventory database", 
              div(id="DatabaseFileSelectDiv", 
                h4("Upload User Database"),
                fileInput("uploadNewDB",paste0("Step 1: Upload FVS-Ready database ",
                          "(.accdb, .mdb, .db (SQLite3), .sqlite, .xlsx, or .zip that contains one of these)"),
                          width="90%"),
                tags$style(type="text/css","#step1ActionMsg{color:darkred;}"), 
                uiOutput("step1ActionMsg")
              ),
              div(
              strong("Step 2: Following upload, you must do one of the following"),br(),
              actionButton("installNewDB","Install uploaded database"),
              actionButton("addNewDB","Add new database to existing database"),
              tags$style(type="text/css","#step2ActionMsg{color:darkred;}"), 
              uiOutput("step2ActionMsg")),
              hr(),
              h4("Other options"),
              uiOutput("TrainingDBMsg"),
              uiOutput("EmptyDBMsg"),
              actionButton("installTrainDB","Install training data (inventory and map data)"),
              actionButton("installEmptyDB","Install blank database")
            ),

            tabPanel("View and edit existing tables", 
              div(id="ViewEditDBDiv",       
                fixedRow(column(width=3,offset=0,
                    myRadioGroup("mode", "Mode ", c("Edit","New rows")),
                    myInlineTextInput("disprows",  "Number display rows", value = 20, size=5),
                    selectInput("editSelDBtabs", label="Table to process",
                          choices  = list(), 
                          selected = NULL, multiple = FALSE, selectize=FALSE),
                    selectInput("editSelDBvars", "Variables to consider", 
                        choices  = list(), size=10,
                        selected = NULL, multiple = TRUE, selectize=FALSE),
                    uiOutput("stdSel"),
                    myInlineTextInput("editStandSearch", "Find stand (ID):", value = "", size="25%"),
                    list(
                      modalTriggerButton("clearTable", "#clearTableDlg", 
                        "Remove all rows and commit"),
                      modalDialog(id="clearTableDlg", footer=list(
                        modalTriggerButton("clearTableDlgBtn", "#clearTableDlg", 
                          "Yes"),
                        tags$button(type = "button", class = "btn btn-primary", 
                          'data-dismiss' = "modal", "Cancel")))
                    ),
                    actionButton("commitChanges","Commit edits or new rows")),
                  column(width=9,offset=0,
                    uiOutput("navRows"),
                    rHandsontableOutput("tbl"),
                    textOutput("actionMsg"))),
                fixedRow(column(width=12,offset=0,uiOutput("inputTabDesc")))
              )
            ), 

            tabPanel("Upload Map data", 
              h4('Upload a stand layer to use in the "View On Maps" feature.'),       
              p("Note: Only spatial data found to have corresponding inventory data are stored (so load your inventory data first)."),       
              fileInput("mapUpload","Step 1: Upload polygon or point data (.zip that contains spatial data)",
                      width="90%"),
              selectInput("mapUpLayers", label="Layer",
                choices  = list(), selected = NULL, multiple = FALSE, selectize=FALSE),
              selectInput("mapUpIDMatch", label="Variable that matches StandID",
                choices  = list(), selected = NULL, multiple = FALSE, selectize=FALSE),
              p(strong("Step 2: Do one of the following:")),  
              tags$style(type="text/css","#mapUpSave{font-size: 120%; color:green;}"),
              tags$style(type="text/css","#mapUpAdd{font-size: 120%; color:green;}"),
              actionButton("mapUpSave","Install imported spatial data"),           
              actionButton("mapUpAdd", "Add imported spatial to existing data"),
              hr(),
              h4("Install Training GeoSpatial Data"),
              actionButton("installTrainDB2","Install training data (inventory and map data)"),   
              tags$style(type="text/css","#mapActionMsg{color:darkred;}"), 
              uiOutput("mapActionMsg")
            ),

            tabPanel("Append .csv data to existing tables", 
              h4("Append .csv data to existing database tables"),             
               selectInput("uploadSelDBtabs", label="Table to process",
                choices  = list(), selected = NULL, multiple = FALSE, selectize=FALSE),
              fileInput("uploadStdTree",
                       'Upload .csv file and append to "Table to process"',
                        width="90%"), 
              tags$style(type="text/css","#uploadActionMsg{color:darkred;}"), 
              uiOutput("uploadActionMsg")     
            ),

            tabPanel("Upload Climate-FVS data", 
              h4("Manage Climate FVS Data"),             
              actionButton("delCurClimData","Delete existing FVS_ClimAttrs table"),              
              fileInput("climateFVSUpload",
                        "Upload and commit Climate-FVS data; (FVSClimAttrs.csv or answers.zip)",
                        width="90%"),                                                                            
              tags$style(type="text/css","#uploadActionMsg{color:darkred;}"), 
              uiOutput("uploadClimActionMsg")     
            ) #END tabPanel
          ) #END tabsetPanel
      ) ) )

# Manage Projects > Import runs and other items sub-tab.
tabImportRuns <- function()
          tabPanel("Import runs and other items",
            div(id="ImportItemsDiv",
            h4("Select Source Project"),
            HTML(paste0('<p><b>Step 1:</b> ',         
              'Choose a source of items to be imported. The source can be an uploaded ',               
              'zip file that contains runs and other project items, or one of your  ',
              'existing projects. Once the source is chosen, the items that can be imported ',
              'are shown in the list boxes under Step 2. The zip file can ',
              'be one created using the <i>Downloads</i> tab or a project backup created ',
              'using the <i>Manage project</i> tab.<br><br>Note: If you import runs ',
              'that were created using different inventory data than what you have in this project, ',
              'those data will need to be imported to run the imported runs.</p>')),                            
            fileInput("uploadRunsRdat","Upload source .zip file",width="90%"),
            selectInput(inputId="impPrjSource", 
                        label="Select an existing project as a source", 
                        multiple=FALSE,
                        choices = list(), selectize=FALSE)
            ),  
            hr(),
            div(id="SelectImportItemDiv",   
            h4("Select Import Item"),           
            HTML(paste0('<p><b>Step 2:</b> ',
              'Import items shown below into your current project. Note that ',
              'it is a good practice to make a project backup before importing ',
              'the input FVS_Data base or the Spatial data.</p>')),
            uiOutput("selectedSourceMsg"), 
            fixedRow(column(width = 4, offset = 0,
              selectInput(inputId = "impRuns", label = "Select a run to import", multiple = FALSE, 
                    choices = list(),selectize = FALSE)),
                    column(width = 1, offset = 0,
                      actionButton(inputId = "doImpRuns", label = "Import")),
                    column(width = 7,offset = 0, uiOutput("impRunsMsg"))), 
            fixedRow(column(width = 4,offset = 0,            
              selectInput(inputId = "impCustomCmps", label = "Select a custom component (.kcp)",  
                    choices = list(), multiple = FALSE, selectize = FALSE)),
                    column(width = 1, offset = 0,
                      actionButton(inputId = "doImpCustomCmps", label = "Import")),    
                    column(width = 7, offset = 0, uiOutput("impCustomCmpsMsg"))),
            fixedRow(column(width = 4, offset = 0,
              selectInput(inputId = "impGraphSettings", label = "Select a graph setting", 
                    choices = list(), multiple = FALSE, selectize = FALSE)),
                    column(width = 1, offset = 0,
                      actionButton(inputId = "doImpGraphSettings", label = "Import")),    
                    column(width = 7, offset = 0, uiOutput("impGraphSettingsMsg"))), 
            fixedRow(column(width = 5, offset = 0,list(
              modalTriggerButton("impFVS_Data", "#impFVS_DataDlg", 
                "Import FVS_Data.db"),
              modalDialog(id = "impFVS_DataDlg", footer = list(
                modalTriggerButton("impFVS_DataDlgBtn", "#impFVS_DataDlg", 
                  "Yes"), tags$button(type = "button", class = "btn btn-primary", 
                  'data-dismiss' = "modal", "Cancel"))))),
                  column(width = 7,offset = 0, uiOutput("impFVS_DataMsg"))),                    
            fixedRow(column(width = 5, offset = 0,list(
              modalTriggerButton("impSpatialData", "#impSpatialDataDlg", 
                "Import the Spatial Data"),
              modalDialog(id = "impSpatialDataDlg", footer = list(
                modalTriggerButton("impSpatialDataDlgBtn", "#impSpatialDataDlg", 
                  "Yes"), tags$button(type = "button", class = "btn btn-primary", 
                  'data-dismiss' = "modal", "Cancel"))))),
                  column(width = 7,offset = 0,uiOutput("impSpatialDataMsg")))                    
            )
          )

# Manage Projects > Downloads sub-tab.
tabDownloads <- function()
          tabPanel("Downloads",
            h4("Download Components from Current Project"), 
            downloadButton("dlFVSDatadb","Input data base (all data)"),br(),
            downloadButton("dlFVSOutdb", "Output data base (.db, all runs)"),br(),
            downloadButton("dlFVSOutxlsx", "Output .xlsx for current run"),br(),
            downloadButton("dlFVSRunkey","Keyword file for current run"),     br(),
            checkboxGroupInput("dlZipSet","Set contents of FVSProjectData.zip",   
              zipList,selZip,inline=FALSE),  
            downloadButton("dlFVSRunZip","Download FVSProjectData.zip"),
            HTML(paste0('<p style="font-size:17px;color:darkgreen"><br>',         
              'The contents of the FVSProjectData.zip file can be uploaded using the ',               
              '<i>Import runs and other items</i> tab.<br><br>Note: If you need to create ',
              'a zip file backup of your entire project, use the "Make a project backup zip file" ',
              'utility under the <i>Manage project</i> tab.</p>'))
          )
