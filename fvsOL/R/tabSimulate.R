# Part of the fvsOL user interface. These functions build tab panels
# for FVSOnlineUI (see ui.R). This file must sort before ui.R
# alphabetically, because FVSOnlineUI is built when the package loads.

# Simulate tab: run selection and contents, plus the Stands/Time/Components/Select Outputs/Run sub-tabs.
tabSimulate <- function()
      tabPanel("Simulate",
        fixedRow(column(width=4,offset=0,
          tags$div(id="SelectRun", class="tb_padding",
          selectInput("runSel","Selected run", NULL, NULL, multiple=FALSE,
                      selectize=FALSE),
          actionButton("newRun", `aria-label` = "New Run", "New"),
          actionButton("reload", `aria-label` = "Reload Run", "Reload"),
          actionButton("saveRun", `aria-label` = "Save Run", "Save"),
          actionButton("dupRun", `aria-label` = "Duplicate Run", "Duplicate"),
          modalTriggerButton("deleteRun", "#deleteRunDlg", "Delete"),
          modalDialog(id = "deleteRunDlg", footer = list(
            modalTriggerButton("deleteRunDlgBtn", "#deleteRunDlg", "Yes"),
              dismissButton("Cancel")))),
          tags$style(type="text/css", "#title { width: 90%; }"),
          textInput("title", "Run title", ""),
          # all the select objects
          tags$style(type="text/css", "select { width: 100%; }"),
          tags$div(id="Contents",
          tags$style(type="text/css", "#simCont { width: 100%; height: 400px;}"),
          myRadioGroup("simContType", "Content View",
                c("Full run","Just groups")),
          #tags$label("Simulation Contents", `for` = "simCont"),
          selectInput("simCont", label = "Simulation Contents", NULL, NULL,
                       multiple = TRUE, selectize = FALSE),
          actionButton("editSel", "Edit"),
          actionButton("mkfree", "Change to freeform"),
          actionButton("cutCmp", "Cut/Delete"),
          actionButton("copyCmp", "Copy"),
          actionButton("paste", "Paste item selected below"),
          selectInput("selpaste","Components available to paste", NULL,
                      NULL, multiple = FALSE, selectize = FALSE)),
          myInlineTextInput("searchString", "Find stand:", value = "", size="25%"),
          actionButton("searchNext", "Find in Simulation Contents")
        ),
        column(width = 8, offset = .2,
          tabsetPanel(id = "rightPan",
            tabStands(),
            tabTime(),
            tabComponents(),
            tabSelectOutputs(),
            tabRun()
        ) #END right panel
      ) ) )

# Simulate > Stands sub-tab: inventory tables, variants, groups, stand selection, groups management.
tabStands <- function()
            tabPanel("Stands", 
              fixedRow(column(width = 6,
              selectInput("inTabs","Inventory Data Tables", NULL, NULL,
                        multiple=FALSE, selectize=FALSE),
              selectInput("inVars","Variants", NULL, NULL,
                        multiple=FALSE, selectize=FALSE),
              selectInput("inGrps","Groups", NULL, NULL,
                        multiple=TRUE, selectize=FALSE, size=6),
              myRadioGroup("inAnyAll", "Stands must be in any or all selected groups ",
                c("Any","All")),
              tags$style(type="text/css", "#inStds { height: 300px;}"),
              selectInput("inStds", label = "Available Stands", NULL, NULL,
                        multiple=TRUE, selectize=FALSE),
              uiOutput("stdSelMsg"),
              tags$div(id="RepControls",
                myInlineTextInput("inReps", "Number of replicates of each added stand ", value = "1", size="5%"),
                myInlineTextInput("inRwts", "Relative weights of each replicate ", value = "1", size="20%")
              ),
              tags$div(id="addStdsGrps",
                actionButton("inAdd",   "Add selected stands"),
                actionButton("inAddGrp","Add stands in selected groups")
              ),
              tags$div(id="InvStdSearchDiv",
                myInlineTextInput("inStdFind", "Find stand(s):", value = "", size="25%"),
                actionButton("inStdFindBut", "Find in Available Stands")
              )),
              column(width = 6,
                h4("Groups Management"),
                radioButtons("GroupCreateDelete",
                             "Select Action",
                             c("Create new group",
                               "Add stands to existing group(s)",
                               "Remove stands from existing group(s)")),
                textInput("NewGroupName", "New Group Name"),
                selectInput("ExtGroups", "Existing Groups", NULL, NULL,
                            multiple = TRUE, selectize = FALSE, size = 6),
                selectInput(inputId = "GroupStands",
                            label = "Stands in Selected Group(s)",
                            choices = list(),
                            selected = NULL,
                            multiple = TRUE,
                            selectize = FALSE),
                textAreaInput(inputId = "UserStandGroup",
                              label = "Insert list of stands",
                              value = ""),
                uiOutput("uploadStdLst_ui"),
                actionButton(inputId = "CommitGroupMod",
                             label = "Apply Group Update")
              ))
            )

# Simulate > Time sub-tab: start/end year, cycle length and breaks.
tabTime <- function()
            tabPanel("Time",
              tags$div(id = "TimeCompsDiv",
                textInput("startyr",  "Common starting year", ""),
                textInput("endyr",    "Common ending year",   ""),
                textInput("cyclelen", "Growth and reporting interval (years)",  ""),
                tags$style(type="text/css", "#cycleat { width: 90%; }"),
                textInput("cycleat", "Additional output reporting years", "")
              ),
              h4("Projection Timing Summary"),
              HTML(paste0('FVS will project your data, beginning from the year of inventory, to the common',
                   ' starting year of ',htmlOutput("srtYr", inline=TRUE),' for all stands. Thereafter, FVS',
                   ' will grow the stand, and provide output, in intervals of ',htmlOutput("cyLen", inline=TRUE),
                   ' years, with the simulation ending at the common ending year, for all stands, of ',
                   htmlOutput("eYr", inline=TRUE),
                   '. You will receive output for the additional year(s): ',htmlOutput("cyAt", inline=TRUE)))
            )

# Simulate > Components sub-tab: Management, Modifiers, Event Monitor, Economic, Keywords, Editor (KCP).
tabComponents <- function()
            tabPanel("Components",
              tabsetPanel(id = "compTabSet",
                tabPanel("Management",
                  selectInput("addMgmtCats", "Categories", NULL,
                              multiple = FALSE, selectize = FALSE),
                  selectInput("addMgmtCmps", "Components", NULL,
                              multiple = FALSE, selectize = FALSE)),

                tabPanel("Modifiers",
                  selectInput("addModCats", "Categories", NULL,
                              multiple = FALSE, selectize = FALSE),
                  selectInput("addModCmps", "Components", NULL,
                              multiple = FALSE, selectize = FALSE)),

                tabPanel("Event Monitor",
                  selectInput("addEvCmps", "Compute Options",
                              NULL, multiple = FALSE, selectize = FALSE)),

                tabPanel("Economic"),

               tabPanel("Keywords",
                 selectInput("addKeyExt", "Extensions", NULL,
                             multiple = FALSE, selectize = FALSE),
                 selectInput("addKeyWds", "Keywords", NULL,
                             multiple = FALSE, selectize = FALSE)),

               tabPanel("Editor",
                 fileInput("kcpUpload",
                           "Upload an existing Keyword component file (KCP), 
                           or Keyword component archive (FVS_kcps.Rdata)",
                           accept = c(".kcp", ".RData"), width = "90%"),
                 selectInput("kcpSel", "Existing component collection",
                             NULL, NULL, multiple = FALSE,
                             selectize = FALSE, width = "65%"),

                 tags$div(id = "kcpButtonSet",
                   actionButton("kcpNew", "New"),
                   actionButton("kcpAppend",
                                "Append selected component from run"),
                   actionButton("kcpSaveInRun", "Save in run"),
                   actionButton("kcpSaveCmps",
                                "Save in component collection"),
                   actionButton("kcpDelete", "Delete"),
                   downloadButton("kcpDownload", "Download (KCP)")
                 ),

                 tags$style(type="text/css", "#kcpTitle { width: 60%; }"),
                 myInlineTextInput("kcpTitle", "Component Title: ",
                                   value = "", size = "65%"),
                 tags$style(type="text/css",
                    "#kcpCols{font-family:monospace;font-size:90%;width:80%;}"),
                 tags$label(id = "kcpEditLabl",
                           `for` = "kcpEdit",
                           "Edit kcp Text: "),
                 tags$p(id="kcpCols",
                 HTML(paste0("&nbsp;", paste0("....+....", 
                             1:12, collapse = "")))),
                            tags$style(type="text/css",
                    "#kcpEdit{font-family:monospace;font-size:90%;width:95%;}"),
                 tags$textarea(id = "kcpEdit", rows = 15))
              ),

              tags$div(id="buildElements",
                uiOutput("titleBuild"),
                uiOutput("condBuild"),
                uiOutput("cmdBuild"),
                uiOutput("cmdBuildDesc")
              )
           )

# Simulate > Select Outputs sub-tab: automatic outputs, SVS, table descriptions.
tabSelectOutputs <- function()
           tabPanel("Select Outputs",
             tags$div(id = "OutputHeadingDiv",
               h4("Select outputs"),
               HTML(paste0("Note that all outputs are put in output database 
                           except for the Stand visualization data.<br>",
                           "FVS_Cases, FVS_Summary, FVS_Compute, 
                           FVS_Error and mistletoe (FVS_DM_Stnd_Sum,",
                           "FVS_DM_Spp_Sum) are always produced."))
             ),
             hr(),
             fixedRow(tags$div(id = "ImageOutputCntrlDiv",
               column(width = 3, style = "padding-top:6px;",
                 checkboxGroupInput("autoSVS", "Stand Visualization Options", choices =
                   list("Stand visualization:" = "autoSVS"),
                   width = "100%", inline = TRUE)),
               column(width = 4, style = "padding-top:50px;",
                      myRadioGroup("svsPlotShape", "Plot shape",
                      list("Round", "Square"), selected = "Round",
                      labelstyle = "font-weight:normal")),
               column(width=5, style = "padding-top:40px;",
                      myInlineNumericInput("svsNFire", "Images per fire:",
                                           value="4", min="1", max="8",
                                           step = "1", size = 15,
                                           labelstyle = "font-weight:normal;")
               ))
             ),
             hr(),
             checkboxGroupInput("autoOut","Database and Text Output Options",choices=list(
                        "Tree lists (FVS_Treelist, FVS_CutList, FVS_ATRTList, (StdStk-stand and stock))" = "autoTreelists",
                        "FIA Volume, Biomass, and Carbon (VBC) (FVS_FIAVBC_Summary, FVS_FIAVBC_TreeList, FVS_FIAVBC_CutList, FVS_FIAVBC_AtrtList)" = "autoFIAVBC",
                        "Carbon and fuels (FVS_Carbon, FVS_Consumption, FVS_Hrv_Carbon, FVS_Fuels)" = "autoCarbon",
                        "Fire and mortality (FVS_Potfire, FVS_BurnReport, FVS_Mortality)" = "autoFire",
                        "Snags and down wood (FVS_SnagSum, FVS_Down_Wood_Cov, FVS_Down_Wood_Vol)" = "autoDead",
                        "FFE canopy profile (FVS_CanProfile)" = "autoCanProfile",
                        "FFE detailed snag (FVS_SnagDet)" = "autoSnagDet",
                        "Stand structure (FVS_StrClass)" = "autoStrClass",
                        "Calibration statistics (FVS_CalibStats)" = "autoCalibStats",
                        "Climate-FVS (FVS_Climate)" = "autoClimate",
                        "Economics (FVS_EconSummary, FVS_EconHarvestValue)" = "autoEcon",
                        "Mistletoe detail by tree size (FVS_DM_Sz_Sum)" = "autoDM_Sz_Sum",
                        "Western Root Disease summary (FVS_RD_Sum)" = "autoRD_Sum",
                        "Western Root Disease details (FVS_RD_Det)" = "autoRD_Det",
                        "Western Root Disease bark beetles (FVS_RD_Beetle)" = "autoRD_Beetle",
                        "Inventory statistics (FVS_Stats_Species, FVS_Stats_Stand)" = "autoInvStats",
                        "Regeneration (All Variants: FVS_Regen_Sprouts, FVS_Regen_SitePrep, FVS_Regen_Tally. 
                         AK, EM, KT, IE, and CI variants also get: FVS_Regen_HabType, FVS_Regen_Ingrowth)" = "autoRegen",
                        "Include text outputs in the main output file (otherwise many are suppressed)" = "autoDelOTab"),
                        width = "100%", inline = FALSE),

            selectInput("tabDescSel", "Describe tables", choices = list(),
                        multiple = FALSE, selectize = FALSE),
                        uiOutput("tabDesc")
             )

# Simulate > Run sub-tab (title is the contChange output): Save and Run, background runs, run results.
tabRun <- function()
          tabPanel(title=htmlOutput("contChange"),   # Make a Runs
            fixedRow(
              column(width = 3,
                tags$style(type = "text/css", "#defMgmtID { width: 65px; }"),
                textInput("defMgmtID", "MgmtID (4 chars)", ""),
               # myRadioGroup("runwaitback", NULL, 
               #   c("Wait for run\n", "Run in background")),
                radioButtons("runwaitback", "Select Run Type",
                             c("Wait for run", "Run in background")),
                uiOutput("bkgCpuPrompt"),
                actionButton("saveandrun", "Save and Run"),
                downloadButton("dlFVSRunout", "FVS Main Output File")
              ),
              column(width=9,
                customRunElements
              )
            ),
            uiOutput("uiRunPlot"),
            uiOutput("uiErrorScan"),
            selectInput("bkgRuns", "Background run status",
                        choices  = list(), size=4, width = "95%", 
                        selected = NULL, selectize=FALSE),
            actionButton("bkgKill", "Kill selected background run")
          )
