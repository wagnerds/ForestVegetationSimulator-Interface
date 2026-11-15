# Part of the fvsOL user interface. These functions build tab panels
# for FVSOnlineUI (see ui.R). This file must sort before ui.R
# alphabetically, because FVSOnlineUI is built when the package loads.

# Visualize tab: Stand Visualization System (SVS) panels.
tabVisualize <- function()
      tabPanel("Visualize",
        fixedRow(tags$div(id="VizCntrlDiv",
          column(width = 6,offset = 0,
            fixedRow(
              column(width = 8,offset = 0,
                checkboxGroupInput("SVSdraw1", label = "Image 1 Options: ", width = "100%", 
                                   inline = TRUE,choices = list(
                    "Subplots" = "subplots", "Range poles" = "rangePoles",
                    "Fire" = "fireLine", "Down trees" = "downTrees"),
                    selected = c("subplots", "rangePoles",
                    "fireLine", "downTrees")),
                selectInput(inputId="SVSRunList1",label="Select run", choices=NULL, 
                   multiple=FALSE, selectize=FALSE, width="99%")),
              column(width=4,offset=0, 
                colourpicker::colourInput(inputId="svsPlotColor1",label="Plot color", showColour="both", 
                            value = "#C5FAC6"))),

            selectInput(inputId = "SVSImgList1", 
                        label = "Select image",
                        choices = NULL, multiple = FALSE, 
                        selectize = FALSE, width = "99%"),
            fixedRow(column(width = 12, offset = 0, 
            h4(id = "SVSstaIm1", "Static images"))),
            fixedRow(
              column(width = 4,offset = 0, uiOutput("SVSqImg1Pers")),
              column(width = 4,offset = 0,uiOutput("SVSqImg1Top")),
              column(width = 4,offset = 0,uiOutput("SVSqImg1Side"))),
              fixedRow(column(width = 12,offset = 0,
                h4(id = "SVSdynIm1", "Dynamic image"))),
            rglwidgetOutput('SVSImg1', width = "500px", height = "500px")),                                        
        column(width = 6,offset = 0,
            fixedRow(
              column(width = 8,offset = 0,
                checkboxGroupInput("SVSdraw2", label = "Image 2 Options: ", width = "100%",
                                   inline = TRUE, choices = list(
                    "Subplots" = "subplots", "Range poles" = "rangePoles",
                    "Fire" = "fireLine", "Down trees" = "downTrees"),
                    selected = c("subplots", "rangePoles", "fireLine", "downTrees")),
                selectInput(inputId = "SVSRunList2", label = "Select run", 
                           choices = NULL, multiple = FALSE, selectize = FALSE, width = "99%")),
              column(width = 4, offset = 0, 
                colourpicker::colourInput(inputId = "svsPlotColor2",
                  label = "Plot color", showColour = "both", value = "#C5FAC6"))),
            selectInput(inputId = "SVSImgList2", label = "Select image",
                       choices = NULL, multiple = FALSE, selectize = FALSE, width = "99%"),
            fixedRow(column(width = 12,offset = 0,
            h4(id = "SVSstaIm2", "Static images"))),
            fixedRow(
              column(width = 4,offset = 0, uiOutput("SVSqImg2Pers")),
              column(width = 4,offset = 0, uiOutput("SVSqImg2Top")),
              column(width = 4,offset = 0, uiOutput("SVSqImg2Side"))),
            fixedRow(column(width = 12, offset = 0,
              h4(id="SVSdynIm2","Dynamic image"))),
            rglwidgetOutput('SVSImg2',width = "500px", height = "500px"))                                        
      )))

# View On Maps tab.
tabMaps <- function()
      tabPanel("View On Maps",
        tags$div(id="MapViewDiv",
        fixedRow(
        column(width=3,offset=0,
          selectInput(inputId="mapDsRunList",label="Select Run", choices=NULL, 
             multiple=FALSE, selectize=FALSE, width="99%")),
        column(width=2,offset=0,
          selectInput(inputId="mapDsTable",label="Output Table", choices=NULL, 
             multiple=FALSE, selectize=FALSE, width="99%")),
        column(width=2,offset=0,
          selectInput(inputId="mapDsVar",label="Variables", choices=NULL, 
             multiple=TRUE, selectize=FALSE, width="99%")),
        column(width=2,offset=0,
           radioButtons("mapDsType","Display", choices=list("table","graph"))),            
        column(width=2,offset=0,
          selectInput(inputId="mapDsProvider",label="Base map", 
            choices=list("Google Hybrid"="s,h","Google Satellite"="s",
                         "Google Streets"="m","Google Terrain"="p"),
            multiple=FALSE, selectize=FALSE, width="95%"))
         ), 
         fixedRow(column(width=12,offset=0,
           textOutput("leafletMessage"),
           leafletOutput("leafletMap",height="800px",width="100%")))
        )
      )
