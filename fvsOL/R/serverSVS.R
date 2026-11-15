# Visualize: Stand Visualization System (SVS) run/image lists and rendering.
#
# This is a section of FVSOnlineServer (see server.R). It is a quoted
# expression, not a function: FVSOnlineServer evaluates it in its own
# environment so the code behaves exactly as if it were written inline
# there (input, output, session, globals, dbGlb, etc. are all in scope).
srvSVS <- quote({
  ## mkSVSchoices
  mkSVSchoices <- function(svsRun)
  {
    fns = paste0(svsRun,"_index.svs")
    if (!file.exists(fns)) 
    {
      fns = NULL
      i = 1
      repeat
      {
        fn = file.path(paste0(svsRun,"-set",i),paste0(svsRun,"_index.svs"))
        if (!file.exists(fn)) break
        fns = c(fns,fn)
        i = i+1
      }
    }
    index=NULL
    for (fn in fns) 
    {
      ind=read.table(file=fn,as.is=TRUE)
      if (dirname(fn)!=".") ind[,2]=file.path(dirname(fn),ind[,2])
      index = rbind(index,ind)
    }
    inv=grep ("Inventory conditions",index[,1]) 
    if (length(inv)>1) 
    {
      firsts=substr(index[inv,1],1,regexpr(" ",index[inv,1])-1)
      names(inv)=firsts    
      rptrs = cbind(inv,c(inv[2:length(inv)]-1,nrow(index)))
      rptrs = data.frame(ids=rownames(rptrs),start=rptrs[,1],stop=rptrs[,2])
      rptrs = rptrs[order(rptrs[,1],rptrs[,2],decreasing=c(FALSE,FALSE),method="radix"),]
      dups=table(firsts)
      if (any(dups>1))
      {
        dups=dups[dups>1]
        d2 = rep(1,length(dups))
        for (i in 1:nrow(rptrs))
        {
          id=grep(rptrs[i,1],names(dups))
          if (length(id))
          {         
            index[rptrs[i,2]:rptrs[i,3],1]=
              sub(" ",sprintf(" r%03i ",d2[id]),index[rptrs[i,2]:rptrs[i,3],1])
            d2[id]=d2[id]+1
          }
        }
      } 
      index  = index[unlist(c(apply(rptrs,1,function (x) x[2]:x[3]))),]
    }
    choices = as.list(index[,2])
    names(choices) = index[,1]
    choices
  }
     
  ## SVSRunList1     
  observe({
    if (length(input$SVSRunList1))
    {
cat ("Visualize input$SVSRunList1=",input$SVSRunList1,"\n")
      choices = mkSVSchoices(input$SVSRunList1)
      updateSelectInput(session=session, inputId="SVSImgList1", choices=choices, 
                        selected = 0)
      setVisible(session, c("SVSstaIm1","SVSdynIm1"), FALSE)
      output$SVSqImg1Pers = renderUI(NULL)
      output$SVSqImg1Top  = renderUI(NULL)
      output$SVSqImg1Side = renderUI(NULL)
      output$SVSImg1      = renderRglwidget(NULL)
    }
  })
  
   ## SVSRunList2 
  observe({
    if (length(input$SVSRunList2))
    {
cat ("Visualize input$SVSRunList2=",input$SVSRunList2,"\n")
      choices = mkSVSchoices(input$SVSRunList2)
      updateSelectInput(session=session, inputId="SVSImgList2", choices=choices, 
                        selected = 0)
      setVisible(session, c("SVSstaIm2","SVSdynIm2"), FALSE)
      output$SVSqImg2Pers = renderUI(NULL)
      output$SVSqImg2Top  = renderUI(NULL)
      output$SVSqImg2Side = renderUI(NULL)
      output$SVSImg2      = renderRglwidget(NULL)
    }
  })

  ## renderSVSImage
  renderSVSImage <- function (id,imgfile,subplots=TRUE,downTrees=TRUE,
                    fireLine=TRUE,rangePoles=TRUE,plotColor="gray")
  {
    drawError = FALSE
cat ("renderSVSImage, subplots=",subplots," downTrees=",downTrees,
     " fireLine=",fireLine," rangePoles=",rangePoles,"\n")
    for (dd in rgl.dev.list()) try(close3d())
    open3d(useNULL=TRUE) 
    svs = scan(file=paste0(imgfile),what="character",sep="\n",quiet=TRUE)
    treeform = grep ("#TREEFORM",svs)
    if (length(treeform))
    {
      treeform = scan(text=svs[treeform],what="character",quiet=TRUE)[2]
      treeform = tolower(scan(text=treeform,sep=".",what="c",quiet=TRUE)[1])
      if (! (treeform %in% names(treeforms))) 
      {
        output[[id]] <- NULL
cat ("treeform=",treeform," is absent from treeforms, exiting.\n")
        return()
      }
    }
    treeform = treeforms[[treeform]]
    rcirc = grep ("^#CIRCLE",svs)
    if (length(rcirc)) 
    {
#      rgl.viewpoint(theta = 1, phi = -45, fov = 30, zoom = .8, interactive = TRUE)
      view3d(theta = 1, phi = -40, fov = 0, zoom = .9, interactive = TRUE)
      args = as.numeric(scan(text=svs[rcirc[1]],what="character",quiet=TRUE)[2:4])
cat ("args=",args,"\n")
      plotDef = circle3D(x0=args[1],y0=args[2],r=args[3],col=plotColor,alpha=0.7)
      if (subplots && length(rcirc)>1)
      {
        for (cir in rcirc[2:length(rcirc)]) 
        {
          ca = as.numeric(scan(text=svs[cir],what="character",quiet=TRUE)[2:4])
          circle3D(x0=ca[1],y0=ca[2],r=ca[3],alpha=1,fill=FALSE,col="black")
        }
      }
      pltshp=1
    } else { # assume square, look for arguments of the rectangle.
    #  rgl.viewpoint(theta = 1, phi = -45, fov = 30, zoom = .9, interactive = TRUE)
      view3d(theta = 1, phi = -45, fov = 30, zoom = .9, interactive = TRUE)
      rect = grep ("^#RECTANGLE",svs)
      if (length(rect)) 
      {
        args = as.numeric(scan(text=svs[rect],what="character",quiet=TRUE)[4])
        plotDef = matrix(c(0,0,0,0,args,0,args,args,0,args,0,0,0,0,0),ncol=3,byrow=TRUE)
        polygon3d(plotDef,col=plotColor,alpha=0.7)
      }
      pltshp=0
    }                
    if (subplots)
    {
      subplts = grep("^#LINE",svs)
      if (length(subplts))
      {
         crds = as.numeric(scan(text=substring(svs[subplts],6),what="character",quiet=TRUE))
         crds = cbind(matrix(crds,ncol=2,byrow=TRUE),0)
         segments3d(crds,col="black",add=TRUE)
      }
    }
    rpols = grep("^RANGEPOLE",svs)
    if (length(rpols))
    {
      if (rangePoles)
      {
        poles = c()
        for (line in rpols)
        {
          pole = as.numeric(scan(text=svs[line],what="character",quiet=TRUE)[c(21,22,7)])
          poles = c(poles,c(pole[1:2],0,pole))
        } 
        poles = matrix(poles,ncol=3,byrow=TRUE)
        segments3d(poles,col="red",lwd=4,add=TRUE)
      }
      svs=svs[-rpols]
    }
    calls = 0
    frlineS = grep("^#FIRE_LINE",svs)
cat ("length(frlineS)=",length(frlineS),"fireLine=",fireLine,"\n")
    if (length(frlineS))
    {
      if (fireLine)
      {
        fl = as.numeric(scan(text=substring(svs[frlineS],11),what="numeric",quiet=TRUE))
        frline=NULL
        if (pltshp)
        {
          xx = seq(0,args[3]*2,length.out=length(fl))
          r = sqrt(((xx-args[3])^2) + ((fl-args[3])^2))
          k = r<=args[3]
          if (any(k))
          {
            frline = matrix(c(xx[k],fl[k],rep(0,sum(k))),ncol=3,byrow=FALSE)
            frline = frline[nrow(frline):1,]
            kep1=which.min(((plotDef[,1]-frline[1,1])**2)+((plotDef[,2]-frline[1,2])**2))
            kep2=which.min(((plotDef[,1]-frline[nrow(frline),1])**2)+((plotDef[,2]-frline[nrow(frline),2])**2))
            frline[1,]=plotDef[kep1,]
            frline[nrow(frline),]=plotDef[kep2,]
            brnReg = rbind(frline[2:(nrow(frline)-1),],plotDef[kep2:nrow(plotDef),])            
            if (kep1<(nrow(plotDef)/2)) brnReg = rbind(plotDef[1:kep1,],brnReg)     
            polygon3d(brnReg,col="black",alpha=0.5)
          }
        } else {
          frline = matrix(c(seq(0,args[1],length.out=length(fl)),
                          fl,rep(0,length(fl))),ncol=3,byrow=FALSE)
          brnReg = rbind(plotDef[1,],frline,plotDef[4:5,])
          polygon3d(brnReg,col="black",alpha=0.5)
        }
        if (!is.null(frline))
        {
          lines3d(frline,col="red",lwd=4,add=TRUE)
          nn=500
          fls  = approx(frline[,1],frline[,2],rule=2,n=nn)
          fls$z = runif(nn)*3
          fls$y = jitter(fls$y,amount=5)
          fls = matrix(c(fls$x,fls$y,fls$z),ncol=3,byrow=FALSE)
          fls = t(apply(fls,1,function (x) c(x[1]-x[3],x[2],0,x[1],x[2],x[3]*3,
                                             x[1]+x[3],x[2],0)))
          verts = NULL
          for (row in 1:nrow(fls)) 
          {
            tlt=runif(1)*40
            rot=runif(1)*360
            mat = matrix(fls[row,],ncol=3,byrow=TRUE)
            xs = max(mat[,1])-(diff(range(mat[,1]))*.5)
            ys = max(mat[,2])-(diff(range(mat[,2]))*.5)
            zs = max(mat[,3])-(diff(range(mat[,3]))*.5)
            mat[,1] = mat[,1]-xs
            mat[,2] = mat[,2]-ys
            mat[,3] = mat[,3]-zs
            mat = matRotat(mat,tlt,tlt,rot)
            mat[,1] = mat[,1]+xs
            mat[,2] = mat[,2]+ys
            mat[,3] = mat[,3]+zs
            mat[,3] = ifelse(mat[,3]<0,0,mat[,3])
            verts = rbind(verts,mat) 
          } 
          triangles3d(verts,col="red") 
        }
      }
      svs = svs[-frlineS]
    }
    progress <- shiny::Progress$new(session,min=1,max=length(svs)+4)
    flames = grep("^@flame.eob",svs)
cat("N flames=",length(flames)," fireLine=",fireLine,"\n")
    if (length(flames))
    {
      if (fireLine)
      {
        calls = calls+1
        progress$set(message = "Generate flames",value = calls)
        allv = NULL
        nflsm = 5
        tmp=NULL
        for (fl in svs[flames])
        {
          fdat = as.numeric(scan(text=substring(fl,30),what="numeric",quiet=TRUE))
          # ht,tilt,rotation,width,x,y,z
          fdat = fdat[c(1,2,3,5,15,16,17)]
          names(fdat)=c("ht","tlt","rot","wid","x","y","z")
          tmp=rbind(tmp,fdat[c("x","y","z")])
          hw=fdat["wid"]*.5
          hwr=rnorm(nflsm,hw,.5)
          hwr=ifelse(hwr<(hw*.1),hw*.1,hw)
          ht=fdat["ht"]
          htr=rnorm(nflsm,ht,1)
          htr=ifelse(ht<(htr*.1),ht*.1,ht)
          tlt=runif(nflsm)*2*fdat["tlt"]
          fbr=rnorm(nflsm,fdat["z"],.5)
          fbr=ifelse(fbr<0,0,fbr)
          rot=runif(nflsm)*360
          for (i in 1:nflsm)
          {
            verts = cbind(x=c(-hwr[i],hwr[i],0),
                          y=c(0,0,0),
                          z=c(0,0,htr[i]))
            verts = matRotat(verts,xa=tlt[i],ya=tlt[i],za=rot[i])
            verts[,1]=verts[,1]+fdat["x"]
            verts[,2]=verts[,2]+fdat["y"]
            verts[,3]=verts[,3]+rnorm(1,fbr[i],1)
            allv = rbind(allv,verts)
          }
        }
        triangles3d(allv[,1],allv[,2],allv[,3],col=c("yellow","red"))
      }
      svs = svs[-flames]
    }
cat("Residual length of svs=",length(svs),"\n")
    drawnTrees = list()
    trees = list()
    for (line in svs)
    {
      calls = calls+1
      progress$set(message = "Generate trees",value = calls)
      c1 = substr(line,1,1) 
      if (c1 == "#" || c1 == ";") next                                                      
      tree = scan(text=line,what="character",quiet=TRUE)
      if (!downTrees && tree[9]!="0") next
      sp = tree[1]                                                                            
      tree=tree[-1]
      tree = as.numeric(tree)
      names(tree) = c("TrNum","TrCl","CrCl","Stus","DBH","Ht","Lang",
                      "Fang","Edia","Crd1","Cr1","CrD2","Cr2","CrD3","Cr3",
                      "CrD4","Cr4","Ex","Mk","Xloc","Yloc","Z")
      tree = as.list(tree[c(2,3,4,5,6,7,8,10,11,20,21)])
      tree$sp = sp
      ll = matrix(c(tree$Xloc,tree$Yloc,0),nrow=1)
      tree$Xloc = ll[1,1]     
      tree$Yloc = ll[1,2]

      drawtree <- function (t, tf) {
      tryCatch(
        {
          return(svsTree(t, tf))
        },
        error = function(e) {
          printtree <- paste0(unlist(tree))

          showModal(shiny::modalDialog(
                title = "Draw Error", "One or more trees failed to draw properly.  Please check input database for tree errors.\n", 
                                             "Please contact ", HTML("<a href='mailto:SM.FS.fvs-support@usda.gov?subject=Visualize%20Error'>FVS Help Desk</a>"),
                                             " if you need additional support.",
                easyClose = F))
          cat(printtree,"\n")
          message("Error occured in svsTree: Tree cannot be drawn")
          print(e)
          return(NULL)
        }
      )
      }

      drawn <- drawtree(tree, treeform)
      if (!is.null(drawn)) drawnTrees[[length(drawnTrees)+1]] = drawn
    }
    progress$set(message = "Display trees",value = length(svs)+1) 
    displayTrees(drawnTrees)
    progress$set(message = "Sending image to browser",value = length(svs)+2) 
    output[[id]] <- renderRglwidget(rglwidget(scene3d())) 
    # this code forces the scene to be loaded prior to calling the custom message
    # and that is critical to getting all this to work.

    callBack <- function() 
    {
      session$sendCustomMessage(type="makeTopSideImages", 
              c(id,paste0(id,"Pers"),paste0(id,"Top"),paste0(id,"Side"))) 
      progress$close()
      if (id=="SVSImg1") setVisible(session, c("SVSstaIm1","SVSdynIm1"), TRUE) else
                         setVisible(session, c("SVSstaIm2","SVSdynIm2"), TRUE)
    }
    session$onFlushed(callBack, once = TRUE)
  }

  ## SVSImgList1
  observe({
    if (length(input$SVSImgList1))
    {
cat ("Visualize SVSImgList1=",input$SVSImgList1," SVSdraw1=",input$SVSdraw1,"\n")
      fn=input$SVSImgList1
      if (!file.exists(fn)) return()
      # actual images are loaded into these two img items in the browser when CustomMessage makeTopSideImages is sent
      output$SVSqImg1Pers <- renderUI(HTML('<img id="SVSImg1Pers" alt="Perspective View" width="160" height="160"</img>'))
      output$SVSqImg1Top  <- renderUI(HTML('<img id="SVSImg1Top"  alt="Top View"         width="160" height="160"</img>'))
      output$SVSqImg1Side <- renderUI(HTML('<img id="SVSImg1Side" alt="Side View"        width="160" height="160"</img>'))
      renderSVSImage('SVSImg1',fn,
        subplots="subplots" %in% input$SVSdraw1,downTrees="downTrees" %in% input$SVSdraw1,
        fireLine="fireLine" %in% input$SVSdraw1,rangePoles="rangePoles" %in% input$SVSdraw1,
        plotColor=input$svsPlotColor1)
    }
  })
  
  ## SVSImgList2
  observe({
    if (length(input$SVSImgList2))
    {
cat ("Visualize SVSImgList2=",input$SVSImgList2," SVSdraw1=",input$SVSdraw2,"\n") 
      fn=input$SVSImgList2
      if (!file.exists(fn)) return()
      # actual images are loaded into these two img items in the browser when CustomMessage makeTopSideImages is sent
      output$SVSqImg2Pers <- renderUI(HTML('<img id="SVSImg2Pers" alt="Perspective View" width="160" height="160"</img>'))
      output$SVSqImg2Top  <- renderUI(HTML('<img id="SVSImg2Top"  alt="Top View"         width="160" height="160"</img>'))
      output$SVSqImg2Side <- renderUI(HTML('<img id="SVSImg2Side" alt="Side View"        width="160" height="160"</img>'))
      renderSVSImage('SVSImg2',fn,
        subplots="subplots" %in% input$SVSdraw2,downTrees="downTrees" %in% input$SVSdraw2,
        fireLine="fireLine" %in% input$SVSdraw2,rangePoles="rangePoles" %in% input$SVSdraw2,
        plotColor=input$svsPlotColor2)
    }
  })
})
