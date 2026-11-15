# View On Maps: map data source, table and variable selection, leaflet rendering.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvMaps <- quote({
  ## "View On Maps" processing
  observe({
    if (input$topPan == "View On Maps")
    {
cat ("View On Maps hit\n")
      theRuns = try(dbGetQuery(dbGlb$dbOcon,
                paste0("select distinct RunTitle, KeywordFile from FVS_Cases",
                       " order by RunDateTime desc")))
      if (class(theRuns)!="try-error" && nrow(theRuns)>0) 
      {
        allRuns=theRuns[,2]
        names(allRuns)=theRuns[,1]
        updateSelectInput(session=session, inputId="mapDsRunList", 
          choices=allRuns) 
      } else updateSelectInput(session=session, inputId="mapDsRunList",choices=list()) 
      updateSelectInput(session=session, inputId="mapDsTable", choices=list())
      updateSelectInput(session=session, inputId="mapDsVar", choices=list())
      updateSelectInput(session=session, inputId="MapYear", choices=list())
      output$leafletMap = renderLeaflet(NULL)
      output$leafletMessage=renderText(NULL)
    }
   })
  ## mapDsRunList
  observe({
    if (length(input$mapDsRunList) && input$topPan == "View On Maps")
    {
cat ("mapDsRunList input$mapDsRunList=",input$mapDsRunList,"\n") 
      cases = try(dbGetQuery(dbGlb$dbOcon,
                         paste0("select CaseID,StandID from FVS_Cases where KeywordFile = '",
                                input$mapDsRunList,"'")))
      if (inherits(cases,"try-error")) return()
      # if there are reps (same stand more than once), just use the first rep, ignore the others
      cases = cases[!duplicated(cases$StandID),]
      dbExecute(dbGlb$dbOcon, "drop table if exists tmp_maps_cases")
      dbWriteTable(dbGlb$dbOcon, "tmp_maps_cases", cases[,1,drop=FALSE],
                   temporary=TRUE, overwrite=TRUE)
      tabs = setdiff(myListTables(dbGlb$dbOcon),
                     c("CmpSummary","FVS_Cases","CmpSummary_East"))
      tables = list()

      stdLvl <- list("FVS_Climate","FVS_Compute","FVS_EconSummary","FVS_BurnReport","FVS_Carbon",
      "FVS_Down_Wood_Cov","FVS_Down_Wood_Vol","FVS_Consumption","FVS_Hrv_Carbon",
      "FVS_PotFire","FVS_PotFire_Cond","FVS_PotFire_East","FVS_SnagSum","FVS_Fuels",
      "FVS_DM_Stnd_Sum","FVS_Regen_Sprouts","FVS_Regen_SitePrep","FVS_Regen_HabType",
      "FVS_Regen_Tally","FVS_Regen_Ingrow","FVS_RD_Sum","FVS_RD_Det","FVS_RD_Beetle",
      "FVS_Stats_Stand","FVS_StrClass","FVS_Summary2","FVS_Summary2_East","FVS_Summary2_Metric",
      "FVS_Summary","FVS_Summary_East","View_DWN","FVS_DM_Stnd_Sum_Metric","FVS_FIAVBC_Summary")
      for (tab in tabs)
      {
        tb <- dbGetQuery(dbGlb$dbOcon,paste0("PRAGMA table_info('",tab,"')"))
        if (length(intersect(c("caseid","standid","year"),tolower(tb$name))) != 3) next
        if (!(tab %in% stdLvl)) next
        cnt = try(dbGetQuery(dbGlb$dbOcon,paste0("select count(*) from ",tab,
                                                 " where CaseID in (select CaseID from tmp_maps_cases) limit 1")))
        if (inherits(cnt,"try-error")) next
        if (cnt[1,1]) tables=append(tables,tab)
      }
      if (length(tables)) names(tables) = tables
      updateSelectInput(session=session, inputId="mapDsTable", choices=tables,
                        selected=0)   
      updateSelectInput(session=session, inputId="mapDsVar", choices=list(),
                        selected=0) 
      output$leafletMap = renderLeaflet(NULL)
    }
  })
  ## mapDsTable
  observe({
    if (length(input$mapDsTable))
    {
      cat ("mapDsRunList input$mapDsTable=",input$mapDsTable,"\n")
      vars = setdiff(dbListFields(dbGlb$dbOcon,input$mapDsTable),
                     c("CaseID","StandID","Year"))
      sps = na.omit(match(c("SpeciesFVS","SpeciesPLANTS","SpeciesFIA"),vars))
      if (length(sps)==3) vars = vars[-sps]
      vars = vars[! vars == "Characteristic"]
      vars = as.list(vars)
      names(vars) = vars
      updateSelectInput(session=session, inputId="mapDsVar", choices=vars,
                        selected=0) 
      output$leafletMap = renderLeaflet(NULL)
    }
  })
  
  ## mapDsVar
  observe({
    if ((length(input$mapDsVar) > 0) && all(!is.na(match(input$mapDsVar,setdiff(
      dbListFields(dbGlb$dbOcon,input$mapDsTable), c("CaseID","StandID","Year"))))))
    {
cat ("mapDsRunList input$mapDsTable=",isolate(input$mapDsTable),
     " input$mapDsVar=",input$mapDsVar," input$mapDsType=",input$mapDsType,"\n")     
      # prepare display data
      dispData = try(dbGetQuery(dbGlb$dbOcon,paste0("select * from ",
                   isolate(input$mapDsTable),
                   " where CaseID in (select CaseID from tmp_maps_cases)")))
      if (inherits(dispData,"try-error") || nrow(dispData)==0) return()
      dispData = dispData[,-1] #remove CaseID
      # if species is a variable, pick the one to display and ditch the others
      sps = na.omit(match(c("SpeciesFVS","SpeciesPLANTS","SpeciesFIA"),names(dispData)))
      if (length(sps)==3) 
      {
        spk = match(paste0("Species",input$spCodes),names(dispData))
        names(dispData)[spk]="Species"
        dispData = dispData[,-sps[sps!=spk]]
        spk = "Species"
      } else { spk = NULL }
      keys = setdiff(colnames(dispData),c("StandID","Year","Characteristic",spk))
      for (var in keys) 
      {
        if (class(dispData[,var]) == "character") 
        {
          x = suppressWarnings(as.numeric(dispData[,var]))
          if (!any(is.na(x))) dispData[,var] = x
        }
      }
      dvs = intersect(names(dispData),
            c("StandID","Year","Characteristic",spk,input$mapDsVar))
      isp = match("Species",dvs)
      if (!is.na(isp) && isp != 3) dvs=c(dvs[1:2],"Species",dvs[-c(1,2,isp)])
      dispData = dispData[,dvs]
      uidsToGet = unique(dispData$StandID)
cat ("length(uidsToGet)=",length(uidsToGet),"\n")
      if (!length(uidsToGet)) return()        
      uidsFound = NULL   
      library(sf) 
      spatdat = "SpatialData.RData"
      if (!exists("SpatialData",envir=dbGlb,inherit=FALSE) && 
          file.exists(spatdat)) load(spatdat,envir=dbGlb)
      pts = NULL
      ptsLbs  = NULL
      polys = NULL
      if (exists("SpatialData",envir=dbGlb,inherit=FALSE)) 
      {
        matchVar = attr(dbGlb$SpatialData,"MatchesStandID")
cat ("1 matchVar=",matchVar,"\n")
        # when matchVar is NULL, it means that there is a list of maps that will be searched
        # for the spatial data. If it is not null, then there is only one item, so use it.
        mapList = if (is.null(matchVar)) dbGlb$SpatialData else list(d=dbGlb$SpatialData)
        pts = NULL
        polyLbs = NULL
        ptsLbs  = NULL
        for (map in mapList)
        {
          if (!length(uidsToGet)) break 
          matchVar = attr(map,"MatchesStandID")
cat ("2 matchVar=",matchVar,"\n")
          # if the map has class sp, it needs to be converted. This code was added in Nov 2022
          # and can be removed once all the map data is converted to package sf. Note that
          # this code allows for some members of the SpatialData to be sf and others sp.
          qsp = attr(class(map),"package")
          if (!is.null(qsp) && qsp == "sp") map=st_as_sf(map)
          uids=intersect(uidsToGet, map[[matchVar]])
          if (length(uids) == 0) next
          uidsFound = c(uidsFound,uids)
          pp = st_transform(map[match(uids,map[[matchVar]]),],st_crs("epsg:4326"))
          if (length(grep("POLYGON",st_geometry_type(pp)[1])))
          {
            polys  = if (is.null(polys))   pp   else rbind(polys,pp)
            polyLbs= if (is.null(polyLbs)) uids else rbind(polyLbs,uids)
          }
          if (length(grep("POINT",st_geometry_type(pp)[1])))
          {
            pts   = if (is.null(pts))    pp   else rbind(pts,pp)
            ptsLbs= if (is.null(ptsLbs)) uids else rbind(ptsLbs,uids)
          }
          uidsToGet = setdiff(uidsToGet,uids)
        }
      }   
cat ("left to get: length(uidsToGet)=",length(uidsToGet),
     " number found: length(uidsFound)=",length(uidsFound),"\n")
      if (length(uidsToGet))
      {
        isolate({
          if (globals$fvsRun$uuid == input$mapDsRunList)
              inInit = globals$fvsRun$refreshDB else 
          {
            saveFvsRun=loadFVSRun(dbGlb$prjDB,input$mapDsRunList)
            if (!is.null(saveFvsRun))
            {
             inInit = saveFvsRun$refreshDB
             rm(saveFvsRun)
            } else inInit=NULL
          }
        })
        if (is.null(inInit)) inInit = getTableName(dbGlb$dbIcon,"FVS_StandInit")
cat ("mapDsRunList trying to use the table=",inInit,"\n")
        dbWriteTable(dbGlb$dbIcon, "tmp_uids_to_get", data.frame(stds = uidsToGet),
                     temporary = TRUE, overwrite = TRUE)
        sid = if (inInit %in% c("FVS_PlotInit","FVS_PlotInit_Plot"))
               "StandPlot_ID" else "Stand_ID"
        qry = paste0("select distinct ",sid," as Stand_ID,Latitude,Longitude from ",inInit,
                     " where ",sid," in (select * from tmp_uids_to_get)")
        latLng = try(dbGetQuery(dbGlb$dbIcon,qry))
        dbExecute(dbGlb$dbIcon,"drop table if exists tmp_uids_to_get")
        if (class(latLng)!="try-error" && nrow(latLng))
        {
          idxLng = grep("Longitude",names(latLng),ignore.case=TRUE)
          idxLat = grep("Latitude",names(latLng),ignore.case=TRUE)
cat ("mapDsRunList idxLng=",idxLng," idxLat=",idxLat," names=",names(dbGlb$SpatialData),"\n")
          if (length(idxLng) && length(idxLat))
          {
            latLng[,idxLng] = as.numeric(latLng[,idxLng])
            latLng[,idxLat] = as.numeric(latLng[,idxLat])
            latLng = na.omit(latLng)
          } else latLng = NULL
        } else latLng = NULL
        if (is.null(latLng) || nrow(latLng) == 0)
        {
cat ("mapDsRunList trying PlotInit\n")
          inInit = getTableName(dbGlb$dbIcon,"FVS_PlotInit")
          if (!is.null(inInit)) 
          {
            latLng = try(dbGetQuery(dbGlb$dbIcon, 
                     paste0("select Stand_ID,avg(Latitude) as Latitude, ",
                            "avg(Longitude) as Longitude from ",inInit,
                            " group by Stand_ID;")))
            if (class(latLng)!="try-error")
            {
              latLng$Longitude = as.numeric(latLng$Longitude)
              latLng$Latitude  = as.numeric(latLng$Latitude)
              latLng = na.omit(latLng)
              if (nrow(latLng) > 0) latLng = subset(latLng, Latitude != 0 & Longitude != 0)
            } else latLng = NULL
          } else latlng = NULL
        }
        if (!is.null(latLng) && nrow(latLng)>0)
        {
cat ("mapDsRunList names(latLng)=",names(latLng)," class(latLng)=",class(latLng),"\n")
          idxLng = grep("Longitude",names(latLng),ignore.case=TRUE)
          idxLat = grep("Latitude",names(latLng),ignore.case=TRUE)
          idxID  = grep("Stand_ID",names(latLng),ignore.case=TRUE)
cat (" idxLng=",idxLng," idxLat=",idxLat," idxID=",idxID,"\n")
          latLng = latLng[,c(idxID,idxLng,idxLat)]
          names(latLng)=c("Stand_ID","Longitude","Latitude")
          keep = na.omit(match(uidsToGet,latLng[,"Stand_ID"]))
cat ("rows to keep=",length(keep),"\n")
          if (length(keep))
          {
            latLng[,"Longitude"] = ifelse(latLng[,"Longitude"]>0, 
                        -latLng[,"Longitude"], latLng[,"Longitude"])
            latLng = latLng[keep,,drop=FALSE]
            uniq = unique(latLng[,2:3])
            if (nrow(uniq) < nrow(latLng)) 
            {
              newlatLng = NULL
              for (row in 1:nrow(uniq))
              {
                sub=subset(latLng,latLng[,2]==uniq[row,1] & latLng[,3]==uniq[row,2])
                if (nrow(sub) > 1)
                {
                  sub = sub[order(sub[,1]),]
                  delta=nrow(sub)/2*5
                  sub[,3] = sub[,3]+seq(-delta,delta,5)[1:nrow(sub)]*.00005
                }
                newlatLng = rbind(newlatLng,sub)
              }
              latLng = newlatLng
            }
            uids = latLng[,"Stand_ID"]
            uidsFound = c(uidsFound,uids)
            latLng = st_as_sf(latLng, coords = c("Longitude","Latitude"))
            latLng <- try(st_set_crs(latLng, 
                      st_crs("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")))          
            if ("try-error" %in% class(latLng))
            {
               output$leafletMessage=renderText("Error setting projection in location data.")
               return()
            }
            pp =    st_transform(latLng,st_crs("epsg:4326"))
            pts=    if (is.null(pts))    pp   else rbind(pts,pp)
            ptsLbs= if (is.null(ptsLbs)) uids else rbind(ptsLbs,uids)
          }
        }
      }
      if (!length(uidsFound))
      {
        output$leafletMessage=renderText("Couldn't find the stands in the spatial data")
        return()
      }
      progress <- shiny::Progress$new(session,min=1,max=length(uidsFound))
      labs = list()
      url = paste0(session$clientData$url_protocol,"//",
                   session$clientData$url_hostname,
                   session$clientData$url_pathname)
      for (sid in uidsFound)
      {
        tab = subset(dispData,StandID == sid)[,-1]
        labs[[length(labs)+1]] = 
          if (input$mapDsType == "table")
          {
            HTML(paste0('<p style="line-height:1">StandID=',sid,df2html(tab)))
          } else {
            pvar = input$mapDsVar[1]
            tab = subset(dispData,StandID == sid)[,intersect(names(dispData),c("Year","Species",pvar))] 
            pfile=paste0("www/s",sid,".png")
cat ("pfile=",pfile," nrow=",nrow(tab)," sid=",sid,"\n")
            CairoPNG(file=pfile,height=1.7,width=2.3,units="in",res=100,bg = "transparent")
            if (length(intersect(c("Species","Characteristic"),names(tab))) || 
                length(table(tab$Year)) == 1) tab$Year = as.factor(tab$Year)
            p = ggplot(tab,aes_string(x="Year",y=pvar)) + geom_point() + theme(
                legend.position="none",
                text=element_text(size=8),axis.text=element_text(face="bold"),
                panel.background=element_rect(fill=grDevices::rgb(1, 1, 1, .2, maxColorValue = 1)),
                plot.background =element_rect(fill=grDevices::rgb(1, 1, 1, .5, maxColorValue = 1)))
            p = p + labs(title = paste0("StandID=",sid)) + theme(plot.title = element_text(size=7),
                plot.margin = unit(c(.05,.5,.05,.05), "inches"))
            if (!is.factor(tab$Year)) p = p+geom_line()
            print(p)
            dev.off()
            url = paste0(session$clientData$url_protocol,"//",
                         session$clientData$url_hostname,
                         session$clientData$url_pathname)
            pfile=if (isLocal()) paste0("/www/s",sid,".png") else
                                 paste0(url,"www/s",sid,".png")
            HTML(paste0('<img src="',pfile,'?',as.character(as.numeric(Sys.time())),
                        '" alt="',sid,'" style="width:229px;height:170px;">'))
          }
        progress$set(message = paste0("Preparing ",sid), value = length(labs))  
      }     
      progress$close()
      map = leaflet() %>% addTiles() %>%
        addTiles(urlTemplate = 
                   paste0("https://mts1.google.com/vt/lyrs=",input$mapDsProvider,
                          "&hl=en&src=app&x={x}&y={y}&z={z}&s=G"),attribution = 'Google')
      lops = labelOptions(opacity=.7)
      pops = popupOptions(maxWidth = 2000,autoClose=FALSE,closeButton=TRUE,closeOnClick=FALSE,textOnly=TRUE)
      if (length(pts))
      {
        lbidx = match(ptsLbs,uidsFound)
        map = map %>% addCircleMarkers(data=pts, radius = 6, color="#FFFF00", 
              stroke = FALSE, fillOpacity = 0.5, popup=labs[lbidx], 
              popupOptions = pops, label=labs[lbidx], labelOptions = lops)
      }
      if (length(polys))
      {
        lbidx = match(polyLbs,uidsFound)
        map = map %>% addPolygons(data=polys, color = "#FFFF00", 
              weight = 3, smoothFactor = 0.1, opacity = .3, fillOpacity = 0.2, 
              popup=labs[lbidx], popupOptions = pops, label=labs[lbidx], 
              labelOptions = lops,
              highlightOptions = c(weight = 5, color = "#666", dashArray = NULL,
                fillOpacity = 0.3, opacity = .6, bringToFront = TRUE))
      }
      output$leafletMap = renderLeaflet(map)
    }
  })
  
})
