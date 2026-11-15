# View Outputs > Graphs: graph settings save/delete, plot type, facets, renderPlot, copy plot.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvGraphs <- quote({
  ##Graphs
  observe({                 
    if (input$leftPan == "Explore" && input$outputRightPan == "Graphs")
    {
cat ("Graphs pan hit\n")
      # update color pallet
      for (i in 1:length(cbbPalette))
        colourpicker::updateColourInput(session=session,inputId=paste0("color",i),value=cbbPalette[i])
      loadObject(dbGlb$prjDB,"GraphSettings") 
      if (!exists("GraphSettings")) GraphSettings=list("None"=list())
      updateSelectInput(session=session, inputId="OPsettings", choices=names(GraphSettings),
         selected="None")
      updateTextInput(session=session, "OPname", value = "")
      output$OPmessage=NULL
    }
  })
  
  ## OPsettings
  observe({
    if (!is.null(input$OPsettings))
    {
      input$OPredo
      isolate({
cat ("OPsettings hit, OPsettings=",input$OPsettings,"\n")
        loadObject(dbGlb$prjDB,"GraphSettings")
        if (!exists("GraphSettings") || 
            length(GraphSettings[[input$OPsettings]])<1 ||
            input$OPsettings == "None")
        {                  
          output$OPmessage=NULL
          updateTextInput(session=session, "OPname", value = "") 
        } else {
          updateTextInput(session=session, "OPname", value = input$OPsettings)
          if (all(unlist(GraphSettings[[input$OPsettings]][["selectdbtables"]]) %in%
                   input$selectdbtables) &&
              all(unlist(GraphSettings[[input$OPsettings]][["dbvars"]]) %in% 
                  input$selectdbvars)) 
          {
            output$OPmessage=NULL 
            msg = setGraphSettings(session,globals,GraphSettings[[input$OPsettings]])
cat ("msg=",msg,"\n")
            if (! is.null(msg)) output$OPmessage=
              renderUI(HTML(paste0('<p style="color:darkred">',
                "Warning(s): <br>",paste0(msg,collapse="<br>"),"</p>")))  
          } else output$OPmessage=renderUI(HTML(paste0('<p style="color:darkred">',
              "Error: The data needed for this setting was not selected ",
              "when you picked data to load.<br>Table(s) needed: ",
              paste0(GraphSettings[[input$OPsettings]][["selectdbtables"]],
              collapse=", "),"</p>")))
        } 
      })
    }
  })   
  
  ## OPsave
  observe({
    if (input$OPsave > 0) 
    {
      output$OPmessage=NULL
      isolate({
cat ("OPsave hit, OPname=",input$OPname,"\n")
        loadObject(dbGlb$prjDB,"GraphSettings")
        if (!exists("GraphSettings")) 
        {
          GraphSettings=list("None"=list())
          attr(GraphSettings[[1]],"setTime")=.Machine$integer.max
        }
        if (nchar(input$OPname)==0) 
        {
          setName=paste0("Setting ",length(GraphSettings)+1)
          updateTextInput(session=session,inputId="OPname",value=setName)
        } else setName=input$OPname      
        GraphSettings[[setName]]=getGraphSettings(input)
        attr(GraphSettings[[setName]],"setTime")=as.integer(Sys.time())
        GraphSettings <- GraphSettings[order(unlist(lapply(GraphSettings,
          function(x) attr(x,"setTime"))),decreasing = TRUE)]
        storeOrUpdateObject(dbGlb$prjDB,GraphSettings)        
        updateSelectInput(session=session, inputId="OPsettings", choices=
          names(GraphSettings),selected=setName)
      })
    }
  })
  
  ## OPdel
  observe({
    if (input$OPdel > 0) 
    {                             
      isolate({
cat("OPdel hit, input$OPname=",input$OPname,"\n")
        output$OPmessage=NULL
        loadObject(dbGlb$prjDB,"GraphSettings")
        if (!exists("GraphSettings")) return() 
        if (input$OPname == "None") return()
        if (is.null(GraphSettings[[input$OPname]])) return()
        GraphSettings[[input$OPname]] = NULL
        if (length(GraphSettings)==0) 
        {
          updateSelectInput(session=session, inputId="OPsettings", choices=list())
          removeObject(dbGlb$prjDB,"GraphSettings")
        } else {
          updateSelectInput(session=session, inputId="OPsettings", choices=
            names(GraphSettings),selected="None")
          storeOrUpdateObject(dbGlb$prjDB,GraphSettings)
        }
        updateTextInput(session=session, "OPname", value = "") 
      })
    }
  })

  ## browsevars/plotType 
  observe({
    if (!is.null(input$browsevars) && !is.null(input$plotType)) 
    {
cat ("browsevars/plotType, input$plotType=",input$plotType," globals$gFreeze=",globals$gFreeze,"\n")
      fvsOutData$browseSelVars <- input$browsevars  
      cats = unlist(lapply(fvsOutData$dbData,is.factor))
      cats = names(cats)[cats]
      cats = intersect(cats,input$browsevars)
      cont = union("Year",setdiff(input$browsevars,cats))
      if((length(cont) > 1) && cont[2]=="Select all") cont <- cont[-2]
      spiv  = if (length(input$pivVar) && 
                any(input$pivVar %in% cats)) input$pivVar else "None"
      sdisp = if (length(input$dispVar) && 
                any(input$dispVar %in% input$browsevars)) input$dispVar else "None"
      ccont = c("None",setdiff(input$browsevars,spiv))
      bb = intersect(ccont,cats) # put the factors at the end of the choices
      ccont = c(setdiff(ccont,bb),bb)
      updateSelectInput(session,"pivVar",choices=as.list(c("None",cats)),
                      selected=spiv)    
      updateSelectInput(session,"dispVar",choices=as.list(ccont),
                      selected=sdisp)
      if (globals$gFreeze) return()
      isolate({
        curX = input$xaxis
        curY = input$yaxis
        if (input$plotType=="line") {
          selx = if (is.null(curX)) "Year" else curX
          selx = if (any(selx %in% cont)) selx else 
                 if (length(cont) > 0) cont[1] else NULL
          globals$settingChoices[["xaxis"]] = as.list(cont)
          updateSelectInput(session, "xaxis",choices=globals$settingChoices[["xaxis"]], selected=selx)
          sel = if (is.null(curY)) "BA" else curY
          sel = if (any(sel %in% cont)) sel else 
                if (length(cont) > 0) cont[1] else NULL
          if (any(sel == selx) && (length(cont) > 1)) 
          {
            sel = grep("BA",cont)[1]
            sel = if (is.na(sel)) cont[2] else cont[sel]
          }
          globals$settingChoices[["yaxis"]] = as.list(cont)
          updateSelectInput(session, "yaxis",choices=globals$settingChoices[["yaxis"]], selected=sel)
        } else if (input$plotType == "scat") {
          sel = if (is.null(curX)) "DBH" else curX
          sel = if (any(sel %in% cont)) sel else 
                if (length(cont) > 0) cont[1] else NULL
          updateSelectInput(session, "xaxis",choices=as.list(cont), selected=sel)
          sel = if (is.null(curY)) "Ht" else curY
          sel = if (any(sel %in% cont)) sel else 
                if (length(cont) > 0) cont[1] else NULL
          globals$settingChoices[["yaxis"]] = as.list(cont)
          updateSelectInput(session, "yaxis",choices=globals$settingChoices[["yaxis"]], selected=sel)
        } else if (input$plotType == "bar") {
          def = if ("Species" %in% cats) "Species" else NULL
          def = if (is.null(def) && "Year" %in% cats) "Year" else cats[1]
          sel = if (!is.null(curX) && curX %in% cats) curX else def
          globals$settingChoices[["xaxis"]] = as.list(cats)
          updateSelectInput(session, "xaxis",choices=globals$settingChoices[["xaxis"]], selected=sel)
          sel = if (!is.null(curX) && curX %in% cont) curX else cont[1]
          if (sel=="Year" && (length(cont) > 1)) sel = cont[2]
          globals$settingChoices[["yaxis"]] = as.list(cont)
          updateSelectInput(session, "yaxis",choices=globals$settingChoices[["yaxis"]], selected=sel)
        } else if (input$plotType == "box") {
          def = if ("Species" %in% cats) "Species" else NULL
          def = if (is.null(def) && "Year" %in% cats) "Year" else cats[1]
          sel = if (!is.null(curX) && curX %in% cats) curX else def
          globals$settingChoices[["xaxis"]] = as.list(cats)
          updateSelectInput(session, "xaxis",choices=globals$settingChoices[["xaxis"]], selected=sel)
          sel = if (!is.null(curX) && curX %in% cont) curX else cont[1]
          if (sel=="Year" && (length(cont) > 1)) sel = cont[2]
          globals$settingChoices[["yaxis"]] = as.list(cont)
          updateSelectInput(session, "yaxis",choices=globals$settingChoices[["yaxis"]], selected=sel)
        } else if (input$plotType=="DMD") { 
          updateRadioButtons(session=session,inputId="YTrans",selected="log10")
          updateRadioButtons(session=session,inputId="XTrans",selected="log10")
          globals$settingChoices[["xaxis"]] = as.list(cont)
          updateSelectInput(session, "xaxis",choices=globals$settingChoices[["xaxis"]], selected="Tpa")
          globals$settingChoices[["yaxis"]] = as.list(cont)
          updateSelectInput(session, "yaxis",choices=globals$settingChoices[["yaxis"]], selected="GMD")
        }
        updateSliderInput(session, "transparency",  
          value = if(input$plotType == "scat") .3 else 0.)
        if (input$plotType!="DMD")
        {
          updateRadioButtons(session=session,inputId="YTrans",selected="identity")
          updateRadioButtons(session=session,inputId="XTrans",selected="identity") 
        }
        sel = if ("StandID" %in% cats && input$plotType != "box") "StandID" else "None"
        updateSelectInput(session=session, inputId="hfacet",choices=as.list(c("None",cats)),
          selected=sel) 
        sel = if ("MgmtID" %in% cats && input$plotType != "box") "MgmtID" else "None"
        updateSelectInput(session=session, inputId="vfacet",choices=as.list(c("None",cats)),
          selected=sel) 
        sel = if ("Species" %in% cats && input$plotType != "box") "Species" else "None"
        updateSelectInput(session=session, inputId="pltby",choices=as.list(c("None",cats)),
          selected=sel)
cat ("end of browsevars/plotType\n")
      })
    }
  })   

  observe({
    if (is.null(input$pltby) || input$pltby  == "None" || globals$gFreeze) return()
    isolate({
      if (all(!c(is.null(input$pltby),is.null(input$xaxis),is.null(input$pltby),
                 is.null(input$yaxis))) && 
         (any(input$pltby == input$xaxis) || any(input$pltby == input$yaxis)))
      {
        updateSelectInput(session=session, inputId="pltby", selected="None")
        return()
      }
      if (input$pltby == input$vfacet)
        updateSelectInput(session=session, inputId="vfacet", selected="None")
      if (input$pltby == input$hfacet)
        updateSelectInput(session=session, inputId="hfacet", selected="None")
  }) })
  
  ## vfacet change
  observe({
cat ("vfacet change, globals$gFreeze=",globals$gFreeze,"\n")
    if (is.null(input$vfacet) || input$vfacet  == "None" || globals$gFreeze) return()
    isolate({
      if (!is.null(input$xaxis) && !is.null(input$yaxis) &&
          (any(input$vfacet == input$xaxis) || any(input$vfacet == input$yaxis)))
      {
        updateSelectInput(session=session, inputId="vfacet", selected="None")
        return()
      }
      if (!is.null(input$pltby) && input$vfacet == input$pltby)
        updateSelectInput(session=session, inputId="pltby", selected="None")       
      if (input$vfacet == input$hfacet)
        updateSelectInput(session=session, inputId="hfacet", selected="None")
  }) }) 
  
  ## hfacet change
  observe({
cat ("hfacet change, globals$gFreeze=",globals$gFreeze,"\n")
    if (is.null(input$hfacet) || input$hfacet  == "None" || globals$gFreeze) return()                 
    isolate({
      if (!is.null(input$xaxis) && !is.null(input$yaxis) &&
          (any(input$hfacet == input$xaxis) || any(input$hfacet == input$yaxis)))
      {
        updateSelectInput(session=session, inputId="hfacet", selected="None")
        return()
      }
      if (!is.null(input$pltby) && input$hfacet == input$pltby)
        updateSelectInput(session=session, inputId="pltby", selected="None")
      if (input$hfacet == input$vfacet)
        updateSelectInput(session=session, inputId="vfacet", selected="None")
  }) })   

  observeEvent(input$DMD_Info, {
    updateTabsetPanel(session, "topPan", selected = "Help")
  })
  
  ## renderPlot
  output$outplot <- renderImage(
  {
cat ("renderPlot\n")
    output$plotMessage=NULL
    nullPlot <- function (msg="Select different data, variables, plot type, or facet settings.")
    {
      outfile = "www/nullPlot.png"
      if (!file.exists(outfile))
      {
        CairoPNG(outfile, width=3, height=2, res=72, units="in", pointsize=12)              
        plot.new()
        text(x=.5,y=.5,"Nothing to graph",col="red")
        dev.off()
      }
      output$plotMessage=renderText(msg)
      list(src = outfile)
    }
    
    if (input$leftPan == "Load"  || (length(input$xaxis) == 0 && 
        length(input$yaxis) == 0)) return(nullPlot())
    output$plotMessage=renderText(NULL)

    options(scipen = 999) # Essentially disable scientific notation for graphs
    vf = if (input$vfacet == "None") NULL else input$vfacet
    hf = if (input$hfacet == "None") NULL else input$hfacet
    pb = if (input$pltby  == "None") NULL else input$pltby
    needVars = unique(c(vf,hf,pb,input$xaxis,input$yaxis))
    dat = droplevels(fvsOutData$dbData[filterRows(fvsOutData$dbData, input$stdtitle, 
          input$stdgroups, input$stdid, input$mgmid, input$year, input$species, 
          input$dbhclass),])
    if (nrow(dat)==0) return(nullPlot("No observations using these selections"))
    # fix DBHClass if it is in the data.
    if (!is.null(dat$DBHClass))
    { 
      mlv=setdiff(input$dbhclass,levels(dat$DBHClass))
      if (length(mlv))
      {
        # this bit makes sure CaseID is first
        if(!length(grep("CmpStdStk",input$selectdbtables)))
          byset=c("CaseID",setdiff(names(dat)[unlist(lapply(dat,is.factor))],
                c("CaseID", "MgmtID","StandID","DBHClass","RunTitle"))) else
          byset=c(setdiff(names(dat)[unlist(lapply(dat,is.factor))],
                c("CaseID","MgmtID","StandID","DBHClass","RunTitle")))
        newrows = ddply(dat,byset,function(x) x[1,])
        newrows[,!unlist(lapply(dat,is.factor))]=0
        newrows$DBHClass=as.character(newrows$DBHClass)
        dat$DBHClass=as.character(dat$DBHClass)
        for (lms in mlv) 
        {
          newrows$DBHClass = lms
          dat=rbind(dat,newrows)
        }
        dat$DBHClass=factor(as.character(dat$DBHClass))
        cmd=paste0("idx=with(dat,order(",paste0(c(byset,"DBHClass"),collapse=","),"))")
        eval(parse(text=cmd))
        dat = dat[idx,]
      }
    } # end of DBHClass fixup
    if (!is.null(pb) && pb=="Groups" && length(input$stdgroups) && length(levels(dat$Groups)))
    { 
      for (il in 1:length(levels(dat$Groups)))
      {
        levs = trim(unlist(strsplit(levels(dat$Groups)[il],",")))
        newl = paste0(intersect(levs,input$stdgroups),collapse=", ")
        levels(dat$Groups)[il] = newl
      }      
    }
    if (length(setdiff(needVars,names(dat)))) return(nullPlot())
cat ("vf=",vf," hf=",hf," pb=",pb," xaxis=",input$xaxis," yaxis=",input$yaxis,"\n")
    if (is.null(input$xaxis) || is.null(input$yaxis)) return (nullPlot("Select both X- and Y-axes"))
    if (!is.null(hf) && nlevels(dat[,hf]) > 9)
    {
cat ("hf test, nlevels(dat[,hf])=",nlevels(dat[,hf]),"\n")
      return (nullPlot(paste0("Number of horizontal facets= ",nlevels(dat[,hf]),"> 9")))
    }
    if (!is.null(vf) && nlevels(dat[,vf]) > 9)
    {
cat ("vf test hit, nlevels(dat[,vf])=",nlevels(dat[,vf]),"\n")
      return (nullPlot(paste0("Number of vertical facets= ",nlevels(dat[,vf]),"> 9")))
    }
    chk = if ("RunTitle" %in% c(input$xaxis, vf, hf, pb, input$yaxis)) 
          c("RunTitle","StandID","Year") else c("MgmtID","StandID","Year") 
    if ( ! input$plotType %in% c("scat","box")) for (v in chk) 
    { 
      if (input$plotType %in% c("line","DMD","StkCht") && v=="Year") next
      if (v %in% names(dat) && nlevels(dat[[v]]) > 1 && 
          ! (v %in% c(input$xaxis, vf, hf, pb, input$yaxis)))          
        return(nullPlot(paste0("Variable '",v,"' has ",nlevels(dat[[v]])," levels and ",
                               " therefore must be an axis, plot-by code, or a facet.")))
    }
    pltp = input$plotType
    if (input$xaxis == "Year" && !(pltp %in% c("bar","box"))) dat$Year = as.numeric(as.character(dat$Year))
    nlv  = 1 + (!is.null(pb)) + (!is.null(vf)) + (!is.null(hf))    
    vars = c(input$xaxis, vf, hf, pb, input$yaxis)                                   
    nd = NULL
    specOpts <- c("Species","SpeciesFVS","SpeciesPLANTS","SpeciesFIA")
    sumOnSpecies= (all(!specOpts %in% vars) && any(specOpts %in% names(dat)) && 
                   nlevels(dat$Species)>1)
    sumOnDBHClass= !"DBHClass" %in% vars && "DBHClass" %in% names(dat) &&
                    nlevels(dat$DBHClass)>1
    for (v in vars[(nlv+1):length(vars)])
    {
      if (is.na(v) || !v %in% names(dat)) return(nullPlot())
      pd = dat[,c(vars[1:nlv],v),drop=FALSE]
      names(pd)[ncol(pd)] = "Y"
      if (sumOnSpecies) pd = cbind(pd,Species =dat$Species)
      if (sumOnDBHClass)pd = cbind(pd,DBHClass=dat$DBHClass)
      nd = rbind(nd, data.frame(pd,Legend=v,stringsAsFactors=FALSE))
    }
cat("sumOnSpecies=",sumOnSpecies," sumOnDBHClass=",sumOnDBHClass,"\n") 
    if (sumOnSpecies) 
    {
      nd=subset(nd,Species!="All")
      nd$Species="Sum"
    }
    if (sumOnDBHClass) 
    {
      nd=subset(nd,DBHClass!="All")
      nd$DBHClass="Sum"
    }
    if (sumOnSpecies || sumOnDBHClass) 
    {
      nd=ddply(nd,setdiff(names(nd),"Y"),.fun=function (x) sum(x$Y))
      names(nd)[ncol(nd)]="Y"
    }
    if (nlevels(nd[[input$xaxis]])>7 && max(nchar(levels(nd[[input$xaxis]]))) > 6 && 
        isolate(input$XlabRot) == "0" && !globals$gFreeze) 
      updateSelectInput(session=session,inputId="XlabRot",selected="90")
    hrvFlag = NULL
    if (input$plotType %in% c("line","DMD","StkCht"))
    {
      if(input$plotType %in% c("DMD", "StkCht")) {
        nd <-cbind(nd, SDIMax=dat$SDIMax, StandID=dat$StandID, Tpa=dat$Tpa, MgmtID=dat$MgmtID)
      }

      if (is.null(dat[["RmvCode"]]))
      {                
        rtpa = grep ("RTpa",names(dat))[1]
        if (!is.null(dat$Year) && !is.null(rtpa) && !is.na(rtpa) && nrow(dat)>1) 
        {
          hrvFlag = vector(mode="logical",length=nrow(pd))
          i = 0
          while (i < nrow(dat)-1) {
            i = i+1;
            if (dat$Year[i]==dat$Year[i+1] && dat[i+1,rtpa]>0)
            {
              hrvFlag[i]=TRUE
              i=i+1
            }
          }
        } 
      } else hrvFlag = dat[["RmvCode"]] == 1
    }
    nd = na.omit(nd)
    omits = as.numeric(attr(nd,"na.action"))
    if (length(nd) == 0) return(nullPlot())
    if (length(omits)) hrvFlag = hrvFlag[-omits]
    rownames(nd)=1:nrow(nd)
    names(nd)[match(input$xaxis,names(nd))] = "X"
    if (!is.null(vf)) names(nd)[match(vf,names(nd))] = "vfacet"
    if (!is.null(hf)) names(nd)[match(hf,names(nd))] = "hfacet" 
    legendTitle = "Legend"                                                                    
    if (!is.null(pb) && !is.null(nd$Legend)) 
    {
      legendTitle = pb
      nd$Legend = if (nlevels(as.factor(nd$Legend)) == 1)
        nd[,pb] else paste(nd$Legend,nd[,pb],sep=":")
    }
    if (input$plotType %in% c("line","DMD","StkCht") &&
        length(unique(nd$X)) < 2) return(nullPlot(
          "Selected plot type requires more than 1 unique value on the X-axis"))    
    if (!is.null(nd$vfacet)) nd$vfacet = ordered(nd$vfacet, levels=sort(unique(nd$vfacet)))
    if (!is.null(nd$hfacet)) nd$hfacet = ordered(nd$hfacet, levels=sort(unique(nd$hfacet)))
    if (!is.null(nd$Legend)) nd$Legend = ordered(nd$Legend, levels=sort(unique(nd$Legend)))
    fg = if (!is.null(nd$vfacet) && !is.null(nd$hfacet)) facet_grid(vfacet~hfacet) else NULL
    if (input$facetWrap == "Off")
    {
      fg = if (is.null(fg) && !is.null(nd$hfacet)) facet_grid(.~hfacet) else fg
      fg = if (is.null(fg) && !is.null(nd$vfacet)) facet_grid(vfacet~.) else fg
    } else {
      fg = if (is.null(fg) && !is.null(nd$hfacet)) 
           facet_wrap(~hfacet,ncol=ceiling(sqrt(nlevels(nd$hfacet))),strip.position="top") else fg
      fg = if (is.null(fg) && !is.null(nd$vfacet)) 
           facet_wrap(~vfacet,ncol=ceiling(sqrt(nlevels(nd$vfacet))),strip.position="right") else fg
    }
    if (pltp %in% c("bar","box")) nd$Y[nd$Y==0] = NA
    xxlab=if (nchar(input$xlabel)) input$xlabel else input$xaxis
    yylab=if (nchar(input$ylabel)) input$ylabel else input$yaxis
    grtit=if (nchar(input$ptitle)) input$ptitle else input$ptitle
    p = ggplot(data=nd) + fg + labs(x=xxlab,y=yylab,title=grtit) +
            theme(text = element_text(size=9),
              panel.background = element_rect(fill="gray95"),
              axis.text = element_text(color="black"))
    if (!is.null(fg)) p = p + 
      theme(strip.text.x = element_text(margin = margin(.025, .01, .025, .01, "in"))) +
      theme(strip.text.y = element_text(margin = margin(.025, .01, .025, .01, "in")))
    colors = if (input$colBW == "B&W") 
      unlist(lapply(seq(0,.3,.05),function (x) rgb(x,x,x))) else
        {
          if (is.null(input$color1)) cbbPalette else
            c(input$color1,input$color2,input$color3,input$color4, input$color5, input$color6,
              input$color7,input$color8,input$color9,input$color10,input$color11,input$color12,
              input$color13,input$color14,input$color15,input$color16,input$color17,input$color18)
        }
    colors = autorecycle(colors,nlevels(nd$Legend))
    linetypes = autorecycle(c("solid","dashed","dotted","dotdash","longdash","twodash"),
                             nlevels(nd$Legend))
    alpha = if (is.null(input$transparency)) .7 else (1-input$transparency)
cat ("Legend nlevels=",nlevels(nd$Legend)," colors=",colors,"\n")
    p = p + theme(axis.text.x = element_text(angle = as.numeric(input$XlabRot), 
      hjust = if(input$XlabRot=="0") .5 else 1))
    p = p + theme(axis.text.y = element_text(angle = as.numeric(input$YlabRot), 
      hjust = if(input$YlabRot!="0") .5 else 1))
    p = p + scale_colour_manual(values=colors)
    p = p + scale_fill_manual(values=colors)
    p = p + scale_shape_manual(values=1:nlevels(nd$Legend))
    scale_linetype_manual(values=linetypes)
    p = p + scale_linetype_manual(values=1:nlevels(nd$Legend)) 
cat ("input$XTrans=",input$XTrans," input$YTrans=",input$YTrans,"\n")
    xmin = as.numeric(input$XLimMin)
    xmax = as.numeric(input$XLimMax)
    xlim = if (!is.na(xmin) && !is.na(xmax) && xmin < xmax) c(xmin, xmax) else NULL
    ymin = as.numeric(input$YLimMin)
    ymax = as.numeric(input$YLimMax)
    ylim = if (!is.na(ymin) && !is.na(ymax) && ymin < ymax) c(ymin, ymax) else NULL    
cat("ylim=",ylim," xlim=",xlim,"\n")
    ymaxlim = NA
    xmaxlim = NA
    DMDguideLines = NULL
    DMDSDILines = NULL
    DensityManagementZone = NULL
    if (input$plotType == "DMD")
    {
      if(input$xaxis != "Tpa" || !(input$yaxis %in% c("QMD", "GMD"))) {
        return(nullPlot("Please select TPA for X-axis and either QMD or GMD for Y-axis for DMD Graph"))
      }

      if(input$pltby != "None"){
        return(nullPlot("DMD Graph designed to display a single stand per graph.  
                        Please select 'None' in the 'Plot-by code' field."))
      }
      for (run in input$mgmid)
      {
        mgmtLvl_df <- nd %>% filter(MgmtID == run)
        standList <- unique(mgmtLvl_df$StandID)
        for (std in standList)
        {
          stdLvl_df <- mgmtLvl_df %>% filter(StandID == std)
          maxSDI <- max(stdLvl_df$SDIMax)
          maxTPA <- max(stdLvl_df$Tpa)
          std_vfacet = if(!is.null(stdLvl_df$vfacet)){
            stdLvl_df$vfacet[1]
          }  else NULL
          std_hfacet = if(!is.null(stdLvl_df$hfacet)) {
            stdLvl_df$hfacet[1]
          } else NULL

          if(input$ZoneType == "Management"){
            ZoneLB = round(maxSDI*(input$MinManZone*0.01))
            ZoneUB = round(maxSDI*(input$MaxManZone*0.01))
          }
          else if (input$ZoneType == "Mortality"){
            ZoneLB = round(maxSDI*(input$MinMortZone*0.01))
            ZoneUB = round(maxSDI*(input$MaxMortZone*0.01))
          }

          if(ZoneUB <= ZoneLB) {
            return(nullPlot("Upper bound must be greater than lower bound"))
          }

          sdis = c(ZoneLB, ZoneUB, maxSDI)
          seqTpa = seq(80,maxTPA*1.1,length.out=50)
          seqQMD = seq(1,50,length.out=50)
          seqvfacet = if(!is.null(std_vfacet)) rep(std_vfacet, length(seqTpa)) else NULL
          seqhfacet = if(!is.null(std_hfacet)) rep(std_hfacet, length(seqTpa)) else NULL
    
          sdiBreaks = seq(100, round_any(maxSDI, 100, f = ceiling), by = 100)
          for (SDI in sdis)
          {
            l_type <- if(SDI == maxSDI) 1 else if (SDI == ZoneUB) 2 else 3
            xseq = seqTpa
            yseq = exp(log(SDI/seqTpa) / 1.605)*10
            if(!is.null(seqvfacet) && !is.null(seqhfacet)){
              lineData = data.frame(xseq=xseq,yseq=yseq,RelDen=SDI,MgmtID=run,
                StandID=std,l_type=l_type,vfacet=seqvfacet,hfacet=seqhfacet)[! yseq > Inf,]
            }
            else if (!is.null(seqvfacet) && is.null(seqhfacet)){
              lineData = data.frame(xseq=xseq,yseq=yseq,RelDen=SDI,MgmtID=run,
                StandID=std,l_type=l_type,vfacet=seqvfacet)[! yseq > Inf,]
            } else {
              lineData = data.frame(xseq=xseq,yseq=yseq,RelDen=SDI,MgmtID=run,
                StandID=std,l_type=l_type,hfacet=seqhfacet)[! yseq > Inf,]
            }
            ymaxlim = range(c(ymaxlim,lineData$yseq),na.rm=TRUE)
            xmaxlim = range(c(xmaxlim,lineData$xseq),na.rm=TRUE)
            DMDguideLines <- rbind(DMDguideLines, lineData)
          }

          # Patch solution to get space for SDI labeling where C space is needed after SDI lines on the grid for labeling 
          C = 0.08
          #xmaxLimit = xmaxlim[2] * (1 + ((xmaxlim[2] * ( 10**C  - 1)) / xmaxlim[2]))
          xmaxLimit = 10^C * xmaxlim[2]
          ylim = c(1, ymaxlim*1.3)
          xlim = c(80, xmaxLimit)
          # Build Density Management Zone Dataframe
          lowerBound <- (dplyr::rename(DMDguideLines %>% filter(RelDen == ZoneLB, StandID == std), ymin = yseq)) %>% select(ymin)
          upperBound <- (dplyr::rename(DMDguideLines %>% filter(RelDen == ZoneUB, StandID == std), ymax = yseq)) %>% select(ymax)
          # X values don't matter here, but just need one set of X values.  Using maxSDI just to provide distinction in the code
          Zone <- (DMDguideLines %>% filter(RelDen == maxSDI, StandID == std)) %>% select(-c(yseq,RelDen,l_type))
          DensityManagementZone <- rbind(DensityManagementZone, cbind(Zone,lowerBound,upperBound))

          for (SDI in sdiBreaks)
          {
            xseq = seqTpa
            yseq = exp(log(SDI/seqTpa) / 1.605)*10
            if(!is.null(seqvfacet) && !is.null(seqhfacet)){
              lineData = data.frame(xseq=xseq,yseq=yseq,RelDen=SDI,MgmtID=run,
                StandID=std,vfacet=seqvfacet,hfacet=seqhfacet)[! yseq > Inf,]
            }
            else if (!is.null(seqvfacet) && is.null(seqhfacet)){
              lineData = data.frame(xseq=xseq,yseq=yseq,RelDen=SDI,MgmtID=run,
                StandID=std,vfacet=seqvfacet)[! yseq > Inf,]
            } else {
              lineData = data.frame(xseq=xseq,yseq=yseq,RelDen=SDI,MgmtID=run,
                StandID=std,hfacet=seqhfacet)[! yseq > Inf,]
            }
            ymaxlim = range(c(ymaxlim,lineData$yseq),na.rm=TRUE)
            xmaxlim = range(c(xmaxlim,lineData$xseq),na.rm=TRUE)
            DMDSDILines <- rbind(DMDSDILines, lineData)
          }
        }
      }
    }
    ### end DMD...except for adding annotations, see below.
    if (is.factor(nd$X)) nd$X = as.ordered(nd$X)
    if (is.factor(nd$Y)) nd$Y = as.ordered(nd$Y)
    if (pltp %in% c("DMD","StkCht")) pltp = "path"
cat ("pltp=",pltp," input$colBW=",input$colBW," hrvFlag is null=",is.null(hrvFlag),"\n")
    brks = function (x,log=FALSE) 
    {
      b = range(x,na.rm=TRUE)
      if (log) {
        b = pretty (log10(b), n = 4, min.n = 1)
        b = ifelse(b<=.1,.1,b)
        b = floor(10**b[!duplicated(b)])
        xx = 10**floor(log10(b))
        ceiling((b/xx))*xx
      } else pretty(b, n=4, min.n = 1)
    }
    if (!is.factor(nd$X))
    {
      rngx=range(if (!is.null(xlim)) xlim else range(c(nd$X,xmaxlim),na.rm=TRUE))
      if(input$XTrans == "log10")
      {
        brkx=brks(rngx,log=TRUE)
        rngx=ifelse(rngx<=.01,.01,rngx)
        p = p + scale_x_log10(breaks=brkx,limits=rngx)
      } else {
        brkx=brks(rngx)
        if (! (pltp %in% c("bar","box"))) p = p + scale_x_continuous(breaks=brkx,
          limits=rngx,guide=guide_axis(check.overlap = TRUE))
      }
cat("xlim=",xlim," rngx=",rngx," brkx=",brkx,"\n")
    } else p = p + scale_x_discrete(guide = guide_axis(check.overlap = TRUE))

    if (!is.factor(nd$Y)) 
    {
      rngy=range(if (!is.null(ylim)) ylim else range(c(nd$Y,ymaxlim),na.rm=TRUE))
      if(input$YTrans == "log10")
      {
        brky=brks(rngy,log=TRUE)
        rngy=ifelse(rngy<.01,.01,rngy)
        p = p + scale_y_log10(breaks=brky,limits=rngy)
      } else {
        brky=brks(rngy)
        if (! (pltp %in% c("bar","box"))) p = p + scale_y_continuous(breaks=brky,
          limits=rngy,guide = guide_axis(check.overlap = TRUE))
          else {p = p + coord_cartesian(ylim = ylim)}
      }
cat("ylim=",ylim," rngy=",rngy," brky=",brky,"\n")
    } else p = p + scale_y_discrete(guide = guide_axis(check.overlap = TRUE))
    # add the guidelines and annotation here (now that we know the range limits of x and y
    if (!is.null(DMDguideLines)) 
    {
      p = p + scale_linetype_manual(values = c("solid","dashed","dotted"))                                
      p = p + geom_line(aes(x=xseq,y=yseq,group=RelDen, linetype=as.character(l_type)), linewidth = 0.5, data=DMDguideLines)
      label_info <- DMDguideLines |> group_by(RelDen, StandID,MgmtID) |> slice_tail(n = 1)
      p = p +  geom_text(aes(x=xseq, y=yseq, label=paste0("SDI: ",RelDen)), data=label_info, 
        hjust = "left", vjust = "cener", size = 2)

      p = p + geom_ribbon(data = DensityManagementZone, mapping = aes(x = xseq, ymin = ymin, ymax = ymax, alpha = 0.85))
      p = p + geom_line(aes(x=xseq,y=yseq,group=RelDen),show.legend=FALSE,
        data=DMDSDILines, linewidth = 0.1) 
        label_info <- DMDSDILines |> group_by(RelDen, StandID,MgmtID) |> slice_head(n = 1)
      p = p +  geom_text(aes(x=xseq, y=yseq, label=RelDen), data=label_info, 
        hjust = "right", vjust = "bottom", size = 1.5)
    }

    size  = approxfun(c(50,100,1000),c(1,.7,.5),rule=2)(nrow(nd))
 
    if (is.factor(nd$X)) nd$X = as.ordered(nd$X)
    if (is.factor(nd$Y)) nd$Y = as.ordered(nd$Y)
    pltp = input$plotType 
    if (pltp %in% c("DMD","StkCht")) pltp = "path"
cat ("pltp=",pltp," input$colBW=",input$colBW," hrvFlag is null=",is.null(hrvFlag),"\n")
    p = p + switch(pltp,
      line    = if (input$colBW == "B&W") 
        geom_line  (aes(x=X,y=Y,linetype=Legend),alpha=alpha) else
        geom_line  (aes(x=X,y=Y,color=Legend),alpha=alpha),
      path   = if (input$colBW == "B&W") 
        geom_path  (aes(x=X,y=Y,linetype=Legend),alpha=alpha,    
           arrow=grid::arrow(angle=20,length=unit(6,"pt"),
           ends="last",type="closed")) else
        geom_path  (aes(x=X,y=Y,color=Legend),alpha=alpha,
           arrow=grid::arrow(angle=20,length=unit(6,"pt"),
           ends="last",type="closed")),
      scat = 
        geom_point (aes(x=X,y=Y,color=Legend,shape=Legend),size=size,alpha=alpha),
      bar     = if (input$colBW == "B&W") 
        geom_col (aes(x=X,y=Y,fill=Legend),color="black",size=.2,alpha=alpha,
           position=input$barPlace) else
        geom_col (aes(x=X,y=Y,fill=Legend),color="transparent",size=.1,alpha=alpha,
           position=input$barPlace),
      box     = if (input$colBW == "B&W") 
        geom_boxplot (aes(x=X,y=Y,linetype=Legend),color="black",size=.6,alpha=alpha) else     
        geom_boxplot (aes(x=X,y=Y,color=Legend),linetype=1,size=.6,alpha=alpha) 
      )

    if (!is.null(hrvFlag) && any(hrvFlag)) p = p +
      if (input$colBW == "B&W") 
        geom_point(aes(x=X,y=Y), shape=82,  #the letter R is code 82
          data = nd[hrvFlag,], alpha=alpha, show.legend = FALSE) else
        geom_point(aes(x=X,y=Y,color=Legend), shape=82,  #the letter R is code 82
          data = nd[hrvFlag,], alpha=alpha, show.legend = FALSE)
    if (input$colBW == "B&W" && pltp == "bar") 
        p = p + scale_fill_grey(start=.15, end=.85) 
    p = p + theme(text=element_text(size=9),plot.title = element_text(hjust = 0.5))
    p = p + switch(pltp,
      line    = if (input$colBW == "B&W") 
        guides(linetype=guide_legend(override.aes = list(alpha=1,size=.8),
               title=legendTitle)) else
        guides(colour=guide_legend(override.aes = list(alpha=1,size=.8),
               title = legendTitle)),
      path   = if (input$colBW == "B&W") 
        guides(linetype=guide_legend(override.aes=list(alpha=1,size=.8), 
           arrow=grid::arrow(angle=20,length=unit(5,"pt"),ends="last",type="closed"),
           title=legendTitle)) else
        guides(colour=guide_legend(override.aes=list(alpha=1,size=.8), 
           arrow=grid::arrow(angle=20,length=unit(5,"pt"),ends="last",type="closed"),
           title=legendTitle)),
      scat = 
        guides(shape=guide_legend(override.aes = list(color=colors,alpha=1,size=1),
               title = legendTitle),color="none"),
      bar     = 
        guides(fill=guide_legend(override.aes = list(alpha=.9,size=.6),
               title = legendTitle, keywidth = .8, keyheight = .8)),
      box     = if (input$colBW == "B&W") 
        guides(linetype=guide_legend(override.aes = list(alpha=.8,size=.5),
               title = legendTitle, keywidth = .8, keyheight = .8)) else 
        guides(color=guide_legend(override.aes = list(alpha=.8,size=.5),
               title = legendTitle, keywidth = .8, keyheight = .8))) 
    if (nlevels(nd$Legend)==1 || nlevels(nd$Legend)>30) 
    { 
      p = p + theme(legend.position="none")
      if (nlevels(nd$Legend)>30) output$plotMessage=renderText("Over 30 legend items, legend not drawn.")
    } else p = p + theme(legend.position=input$legendPlace)
    outfile = "www/plot.png" 
    fvsOutData$plotSpecs$res    = as.numeric(if (is.null(input$res)) 150 else input$res)
    fvsOutData$plotSpecs$width  = as.numeric(input$width)
    fvsOutData$plotSpecs$height = as.numeric(input$height)        
    CairoPNG(outfile, width=fvsOutData$plotSpecs$width, 
                      height=fvsOutData$plotSpecs$height, units="in", 
                      res=fvsOutData$plotSpecs$res)              
    print(p)
    dev.off()
    globals$gFreeze = FALSE
    list(src = outfile) 
  }, deleteFile = FALSE)

  ## copyplot
  observe(  
    if (input$copyplot > 0)
    {
cat ("copyToClipboard copyplot\n")
      session$sendCustomMessage(type="copyEltToClipboard", "outplot") 
    }
  )
  
})
