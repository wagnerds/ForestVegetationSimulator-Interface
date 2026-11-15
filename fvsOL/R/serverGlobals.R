# Reference classes, package-level constants, and run scripts used by FVSOnlineServer.

mkfvsStd <- setRefClass("fvsStd",
  fields = list(sid = "character", rep = "numeric", repwt = "numeric", 
   invyr = "character", grps = "list", cmps = "list",uuid="character"))
                                       
mkfvsGrp <- setRefClass("fvsGrp",
  fields = list(grp = "character", cmps = "list", uuid="character"))
                          
mkfvsCmp <- setRefClass("fvsCmp",
  fields = list(kwds = "character", kwdName = "character", exten="character",
    title="character", variant="character",uuid="character", atag="character", 
    reopn="character"))
# atag is always "c" if the component is a condition, "k" if it is a keyword
# component that is not attached to a specific component. If it is longer than 1
# character it is the uuid of the related condition

mkfvsRun <- setRefClass("fvsRun", 
  fields = list(stands = "list", grps = "list", simcnts = "list",
    selsim = "list", FVSpgm = "character", title = "character", 
    startyr = "character", endyr = "character", cyclelen = "character",
    cycleat = "character", refreshDB = "character", uuid="character",
    defMgmtID = "character", autoOut = "list", runScript = "character" ,
    uiCustomRunOps = "list", startDisp = "character"))

mkfvsOutData <- 
  setRefClass("fvsOutData", 
    fields = list(dbLoadData = "list", dbData = "data.frame", 
      dbVars = "character", browseVars = "character", 
      dbSelVars = "character", browseSelVars = "character",
      runs = "character", plotSpecs = "list", 
      render = "data.frame"))

mkGlobals <- setRefClass("globals", 
  fields = list(activeFVS = "list", activeVariants = "character", 
    activeExtens = "character", schedBoxYrLastUsed = "character",
    extnsel = "character", kwdsel = "list", mgmtsel = "list",
    mevsel = "list", mmodsel = "list", pastelist = "list",fvsBin="character",
    pastelistShadow = "list", inData = "list", FVS_Runs = "list",
    customCmps = "list", selStds = "character", currentCmdDefs="character",
    schedBoxPkey = "character", currentCmdPkey = "character",GrpNum="numeric",
    currentCndPkey = "character", winBuildFunction = "character",GenGrp="list", 
    existingCmps = "list",currentQuickPlot = "character", 
    currentEditCmp = "fvsCmp", NULLfvsCmp = "fvsCmp", saveOnExit= "logical",
    fvsRun = "fvsRun", foundStand="integer", 
    reloadAppIsSet = "numeric", hostname= "character", toggleind="character",
    selStandTableList = "list",kcpAppendConts = "list",opencond="numeric",
    condKeyCntr="numeric",prevDBname="list",changeind="numeric",
    lastRunVar="character",gFreeze="logical",importItems="list",
    settingChoices="list",exploreChoices="list",simLvl="list",stdLvl="list",
    specLvl="list",dClsLvl="list",htClsLvl="list",treeLvl="list",tbsFinal="list",
    selRuns = "character", selUuids = "character",selAllVars="logical",
    explorePass="numeric",lastNewPrj="character",prjFilesOnly="logical",
    tableMessage="logical",exploring="logical", RepsDesign='logical')) 

isLocal <- function () Sys.getenv('SHINY_PORT') == ""

# cbbPalette is used in the graphics
cbbPalette <- c("#FF0000","#009E73","#0072B2","#E69F00","#CC79A7","#0000FF",
                "#D55E00","#8F7800","#D608FA","#009100","#CF2C73","#00989D",
                "#00FF00","#BAF508","#202020","#6B6B6A","#56B4E9","#20D920")

extnslist <- list(
  "Base FVS system"="base",
  "Cover Model"="cover",
  "Full Establishment Model"="estb",
  "Partial Establishment Model"="strp",
  "Database Extension"="dbs",
  "Economic Analysis Extension"="econ",
  "Dwarf Mistletoe Impact Model"="mist",
  "ORGANON in FVS"="organon",
  "Fire and Fuels Extension"="fire",
  "Climate-FVS Extension"="climate",
  "WRD (Annosus Root Disease)"="ardwrd3",
  "WRD (Armillaria Root Disease)"="armwrd3",
  "WRD (Laminated Root Rot)"="phewrd3")

options(rgl.useNULL=TRUE)

trim <- function (x) gsub("^\\s+|\\s+$","",x)

defaultRun <- list("Default useful for all FVS variants"="fvsRun")

# used in Tools, dlZipSet
zipList <- list(  
  "FVSProject data base (Runs, Custom components (kcp), Custom queries, GraphSettings)" = "fvsProjdb",
  "Output data base for for all runs"  = "outdb",  
  "Keyword file for current run" = "key",  
  "FVS output file for current run" = "out",  
  "Visualize output files for current run" = "subdir",  
  "Input data base FVS_Data.db" = "FVS_Data", 
  "Spatial data (SpatialData.RData)" = "SpatialData")  
selZip <- unlist(zipList[1:4])  

# if "runScripts.R" exists in the project directory, then use it, otherwise load
# the version that is part of the package software.
rsf <- "runScripts.R"
if (file.exists(rsf)) source(rsf) else source(system.file("extdata", rsf, 
  package="fvsOL"))
runScripts <- if (exists("customRunScripts") && length(customRunScripts)) 
               append(x=customRunScripts,after=0,defaultRun) else defaultRun

customRunElements = list(                  
  selectInput("runScript",
              "Select run script (normally, use the default)",
              choices=runScripts,
              selected="fvsRun",multiple=FALSE,selectize=FALSE),
  uiOutput("uiCustomRunOps"))
