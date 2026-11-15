# chatbot.R -- local, self-contained help assistant for the FVSOnlocal configuration.
#
# Nothing in this file makes network calls. Answers come from:
#   1. a BM25 keyword search (pure R) over the Help tab text and the
#      documentation folders bundled with the package
#      (inst/extdata/MarkdownDocs and inst/extdata/chatdocs), and
#   2. read-only information about the current state of the app
#      (selected tab, current run, the last dialog shown, the last error scan).
# Optionally, if the 'localLLM' package and a local GGUF model file are both
# present, a small language model running inside this R process rewrites the
# retrieved passages into a conversational answer. The model is never
# downloaded by fvsOL; the user must place it on disk. See
# inst/extdata/chatdocs/fvsOL-help-assistant.md for setup notes.

.chatEnv <- new.env(parent = emptyenv())
.chatIndexVersion <- 4L

.chatStop <- c("a","about","after","all","also","am","an","and","any","are",
  "as","at","be","been","being","but","by","can","could","did","do","does",
  "for","from","get","had","has","have","how","i","if","in","into","is","it",
  "its","just","me","my","no","not","of","on","or","our","please","should",
  "show","so","some","tell","than","that","the","their","them","then","there",
  "these","they","this","those","to","use","used","using","want","was","we",
  "were","what","when","where","which","who","why","will","with","would",
  "you","your","need","know","there","here","explain","describe","fvs")

## ---------------------------------------------------------------- text utils

chatSquish <- function (x)
  gsub("^ | $", "", gsub("\\s+", " ", x, perl = TRUE), perl = TRUE)

chatStem <- function (w)
{
  if (!length(w)) return(w)
  long <- nchar(w) > 4
  w[long] <- sub("ies$", "y", w[long])
  s1 <- nchar(w) > 5 & grepl("(ing|ed)$", w)
  w[s1] <- sub("(ing|ed)$", "", w[s1])
  w[s1] <- sub("([bdfgkmnprt])\\1$", "\\1", w[s1])
  s2 <- nchar(w) > 3 & grepl("[^siu]s$", w)
  w[s2] <- sub("s$", "", w[s2])
  w
}

# Returns a list of token vectors, one per element of x.
chatTokenList <- function (x)
{
  if (!length(x)) return(list())
  toks <- strsplit(tolower(x), "[^a-z0-9_]+", perl = TRUE)
  lens <- lengths(toks)
  t <- unlist(toks, use.names = FALSE)
  d <- rep.int(seq_along(toks), lens)
  keep <- nchar(t) > 1 & !(t %in% .chatStop)
  t <- t[keep]
  d <- d[keep]
  u <- unique(t)                      # stem each distinct word once
  t <- chatStem(u)[match(t, u)]
  split(t, factor(d, levels = seq_along(x)))
}

chatTokens <- function (x)
{
  x <- paste(x, collapse = " ")
  if (!nzchar(x)) return(character())
  unname(chatTokenList(x)[[1]])
}

chatHtmlEscape <- function (x) htmltools::htmlEscape(x)

## ------------------------------------------------------------- doc parsing

# Split an HTML string into sections at h1-h6 headings. Returns a data.frame
# with columns section and text.
chatHtmlSections <- function (html, defaultTitle = "")
{
  empty <- data.frame(section = character(), text = character(),
                      stringsAsFactors = FALSE)
  html <- paste(html, collapse = "\n")
  if (!nzchar(trimws(html))) return(empty)
  doc <- tryCatch(xml2::read_html(paste0("<html><body>", html, "</body></html>"),
                    options = c("RECOVER", "NOERROR", "NOWARNING")),
                  error = function (e) NULL)
  if (is.null(doc)) return(empty)
  xml2::xml_remove(xml2::xml_find_all(doc, "//script|//style|//img"))
  hs <- xml2::xml_find_all(doc, "//h1|//h2|//h3|//h4|//h5|//h6")
  for (h in hs)
  {
    lvl <- substr(xml2::xml_name(h), 2, 2)
    xml2::xml_text(h) <- paste0(" @@FVSHEAD", lvl, "@@",
                                chatSquish(xml2::xml_text(h)), "@@ENDHEAD@@ ")
  }
  s <- as.character(doc)
  s <- gsub("<(p|div|li|tr|br|pre|h[1-6]|td|th|dt|dd|table|ul|ol|blockquote)\\b",
            " <\\1", s, ignore.case = TRUE, perl = TRUE)
  s <- gsub("<!--.*?-->", " ", s, perl = TRUE)
  s <- gsub("<[^>]*>", "", s, perl = TRUE)   # block tags already got a space above
  txt <- tryCatch(xml2::xml_text(xml2::read_html(
           paste0("<html><body><pre>", s, "</pre></body></html>"),
           options = c("RECOVER", "NOERROR", "NOWARNING"))),
         error = function (e) s)
  parts <- strsplit(txt, "@@FVSHEAD", fixed = TRUE)[[1]]
  secs <- vector("list", length(parts))
  stack <- character(6)
  for (i in seq_along(parts))
  {
    p <- parts[i]
    if (i == 1)
    {
      secs[[i]] <- c(defaultTitle, chatSquish(p))
      next
    }
    lvl <- suppressWarnings(as.integer(substr(p, 1, 1)))
    if (is.na(lvl)) lvl <- 6L
    rest <- substring(p, 4)               # drop "<lvl>@@"
    hp <- regexpr("@@ENDHEAD@@", rest, fixed = TRUE)
    title <- if (hp > 0) chatSquish(substr(rest, 1, hp - 1)) else ""
    body  <- if (hp > 0) substring(rest, hp + 11) else rest
    stack[lvl] <- title
    if (lvl < 6) stack[(lvl + 1):6] <- ""
    parents <- stack[seq_len(lvl)]
    parents <- parents[nzchar(parents)]
    # keep at most the two innermost heading levels in the label
    label <- paste(utils::tail(parents, 2), collapse = " › ")
    secs[[i]] <- c(label, chatSquish(body))
  }
  m <- do.call(rbind, secs)
  out <- data.frame(section = m[, 1], text = m[, 2], stringsAsFactors = FALSE)
  out[nzchar(out$text), , drop = FALSE]
}

chatReadDoc <- function (file)
{
  lines <- readLines(file, warn = FALSE, encoding = "UTF-8")
  ext <- tolower(tools::file_ext(file))
  if (ext %in% c("md", "markdown"))
  {
    # The bundled guides were converted from Word; their in-document links
    # ([TEXT](#_Anchor_(with_parens)) are often malformed. Keep only the text.
    lines <- gsub("\\[([^]\n]*)\\]\\(#[^[:space:]]*", "\\1", lines, perl = TRUE)
    html <- commonmark::markdown_html(paste(lines, collapse = "\n"),
                                      extensions = TRUE)
    chatHtmlSections(html)
  } else if (ext %in% c("html", "htm")) {
    chatHtmlSections(lines)
  } else {
    txt <- paste(lines, collapse = "\n")
    paras <- chatSquish(unlist(strsplit(txt, "\n\\s*\n")))
    paras <- paras[nzchar(paras)]
    data.frame(section = rep("", length(paras)), text = paras,
               stringsAsFactors = FALSE)
  }
}

chatSourceLabel <- function (file)
{
  b <- tools::file_path_sans_ext(basename(file))
  known <- c(EssentialFVS  = "Essential FVS",
             keyword       = "Keyword Reference Guide",
             DBSUserGuide  = "Database Extension (DBS) User Guide",
             FFEguide      = "Fire and Fuels Extension Guide",
             EconUserGuide = "Economic Analysis Extension Guide",
             event_monitor = "Event Monitor Guide")
  if (b %in% names(known)) return(unname(known[b]))
  if (grepl("^FVS[a-z]{2}_Overview$", b))
    return(paste0(toupper(substr(b, 4, 5)), " Variant Overview"))
  gsub("[_-]+", " ", b)
}

chatChunk <- function (text, size = 180, overlap = 30)
{
  w <- strsplit(text, " ", fixed = TRUE)[[1]]
  w <- w[nzchar(w)]
  n <- length(w)
  if (!n) return(character())
  if (n <= size * 1.3) return(paste(w, collapse = " "))
  starts <- seq(1, n, by = size - overlap)
  starts <- starts[starts == 1 | (n - starts + 1) > overlap]
  vapply(starts, function (s) paste(w[s:min(n, s + size - 1)], collapse = " "), "")
}

## ------------------------------------------------------------------- BM25

chatBM25Build <- function (texts)
{
  toks <- chatTokenList(texts)
  lens <- lengths(toks)
  d <- rep.int(seq_along(toks), lens)
  t <- unlist(toks, use.names = FALSE)
  terms <- sort(unique(t))
  code <- match(t, terms) * 1e7 + d
  r <- rle(sort(code))
  pt <- as.integer(r$values %/% 1e7)
  start <- match(seq_along(terms), pt)
  end <- c(start[-1] - 1L, length(pt))
  list(terms = terms, start = start, end = end,
       pd = as.integer(round(r$values %% 1e7)), tf = as.integer(r$lengths),
       df = end - start + 1L, dl = as.numeric(lens),
       avgdl = max(1, mean(lens)), N = length(texts))
}

chatBM25Score <- function (ix, tok, w = rep(1, length(tok)), k1 = 1.2, b = 0.75)
{
  sc <- numeric(ix$N)
  for (i in seq_along(tok))
  {
    j <- match(tok[i], ix$terms)
    if (is.na(j)) next
    r <- ix$start[j]:ix$end[j]
    d <- ix$pd[r]
    tf <- ix$tf[r]
    idf <- log(1 + (ix$N - ix$df[j] + 0.5) / (ix$df[j] + 0.5))
    sc[d] <- sc[d] + w[i] * idf * tf * (k1 + 1) /
             (tf + k1 * (1 - b + b * ix$dl[d] / ix$avgdl))
  }
  sc
}

## ------------------------------------------------------------- the index

chatDocDirs <- function ()
{
  dirs <- c(system.file("extdata", "MarkdownDocs", package = "fvsOL"),
            system.file("extdata", "chatdocs", package = "fvsOL"),
            getOption("fvsOL.chatDocs", character()))
  dirs <- dirs[nzchar(dirs)]
  unique(dirs[dir.exists(dirs)])
}

chatDocFiles <- function (dirs = chatDocDirs())
{
  f <- unlist(lapply(dirs, list.files, pattern = "\\.(md|markdown|html?|txt)$",
                     ignore.case = TRUE, full.names = TRUE, recursive = TRUE))
  sort(f[!grepl("^readme", basename(f), ignore.case = TRUE)])
}

chatHelpHtml <- function ()
{
  e <- new.env()
  suppressWarnings(try(utils::data("fvsOnlineHelpRender", package = "fvsOL",
                                   envir = e), silent = TRUE))
  if (exists("fvshelp", envir = e, inherits = FALSE))
    return(paste(get("fvshelp", envir = e), collapse = "\n"))
  f <- system.file("extdata", "fvsOnlineHelp.html", package = "fvsOL")
  if (nzchar(f)) paste(readLines(f, warn = FALSE), collapse = "\n") else ""
}

chatBuildIndex <- function (files = chatDocFiles(), helpHtml = chatHelpHtml())
{
  secs <- list()
  if (nzchar(helpHtml))
  {
    s <- chatHtmlSections(helpHtml)
    if (nrow(s)) { s$source <- "fvsOL Help tab"; secs[[length(secs) + 1]] <- s }
  }
  for (f in files)
  {
    s <- tryCatch(chatReadDoc(f), error = function (e)
      { cat("chatbot: could not read", f, ":", conditionMessage(e), "\n"); NULL })
    if (NROW(s)) { s$source <- chatSourceLabel(f); secs[[length(secs) + 1]] <- s }
  }
  if (!length(secs)) secs <- list(data.frame(section = character(),
    text = character(), source = character(), stringsAsFactors = FALSE))
  secs <- do.call(rbind, secs)
  ch <- lapply(secs$text, chatChunk)
  n <- lengths(ch)
  chunks <- data.frame(source = rep(secs$source, n),
                       section = rep(secs$section, n),
                       text = unlist(ch, use.names = FALSE),
                       part = unlist(lapply(n, seq_len), use.names = FALSE),
                       stringsAsFactors = FALSE)
  # drop tables of contents (front matter dominated by page numbers) and scraps
  w <- strsplit(chunks$text, " ", fixed = TRUE)
  numFrac <- vapply(w, function (x) mean(grepl("^[0-9]+$", x)), 0)
  toc <- (chunks$section == "" | grepl("contents", chunks$section,
           ignore.case = TRUE)) & numFrac > 0.08
  chunks <- chunks[!toc & lengths(w) >= 6, , drop = FALSE]
  rownames(chunks) <- NULL
  # the section title is counted twice so a heading match ranks well
  bm <- chatBM25Build(paste(chunks$section, chunks$section, chunks$text))
  c(list(chunks = chunks, files = files), bm)
}

chatIndexKey <- function (files, helpHtml)
{
  fi <- file.info(files)
  as.character(openssl::md5(paste(c(.chatIndexVersion, files, fi$size,
    format(as.numeric(fi$mtime), digits = 15), helpHtml), collapse = "|")))
}

# Returns the (cached) index. The index is cached in memory for the R session
# and on disk under tools::R_user_dir("fvsOL","cache"); it is rebuilt whenever
# any documentation file or the help text changes.
chatGetIndex <- function (rebuild = FALSE)
{
  files <- chatDocFiles()
  help <- chatHelpHtml()
  key <- chatIndexKey(files, help)
  if (!rebuild && !is.null(.chatEnv$index) && identical(.chatEnv$index$key, key))
    return(.chatEnv$index)
  cdir <- tools::R_user_dir("fvsOL", "cache")
  cfile <- file.path(cdir, "chatindex.rds")
  if (!rebuild && file.exists(cfile))
  {
    ix <- tryCatch(readRDS(cfile), error = function (e) NULL)
    if (!is.null(ix) && identical(ix$key, key)) { .chatEnv$index <- ix; return(ix) }
  }
  cat("chatbot: building documentation index from", length(files), "files\n")
  ix <- chatBuildIndex(files, help)
  ix$key <- key
  try({ dir.create(cdir, recursive = TRUE, showWarnings = FALSE)
        saveRDS(ix, cfile) }, silent = TRUE)
  .chatEnv$index <- ix
  ix
}

# Search the index. context is extra text (current tab, last error, previous
# question) that nudges the ranking but cannot by itself make a result relevant.
chatRetrieve <- function (index, query, k = 4, context = NULL, minScore = 3)
{
  none <- index$chunks[0, , drop = FALSE]
  none$score <- numeric()
  qt <- unique(chatTokens(query))
  if (!length(qt) || !index$N) return(none)
  ct <- setdiff(unique(chatTokens(context)), qt)
  qOnly <- chatBM25Score(index, qt)
  sc <- qOnly + if (length(ct)) chatBM25Score(index, ct, rep(0.25, length(ct))) else 0
  # the opening passage of a section usually holds its definition
  sc <- sc * ifelse(index$chunks$part == 1, 1.15, 1)
  ord <- order(sc, decreasing = TRUE)
  top <- max(qOnly)
  ord <- ord[qOnly[ord] >= max(minScore, 0.35 * top)]
  if (!length(ord)) return(none)
  key <- paste(index$chunks$source[ord], index$chunks$section[ord])
  ord <- ord[!duplicated(key)]
  ord <- ord[seq_len(min(k, length(ord)))]
  res <- index$chunks[ord, , drop = FALSE]
  res$score <- sc[ord]
  res
}

## ----------------------------------------------------------------- app state

# Read-only snapshot of where the user is in the app. Must be called from a
# reactive context or isolate()d (it is called from an observer).
chatAppState <- function (input, globals, notes = NULL)
{
  isolate({
    top <- input$topPan
    sub <- switch(if (is.null(top)) "" else top,
      "Simulate" = c(input$rightPan,
                     if (identical(input$rightPan, "Components")) input$compTabSet),
      "View Outputs" = c(input$leftPan,
                     if (identical(input$leftPan, "Explore")) input$outputRightPan),
      "Manage Projects" = c(input$toolsPan,
                     if (identical(input$toolsPan, "Import input data")) input$inputDBPan),
      NULL)
    run <- tryCatch(globals$fvsRun, error = function (e) NULL)
    g <- function (x) if (length(x) && nzchar(x[1])) x[1] else NULL
    list(tabPath  = c(top, sub),
         runTitle = g(tryCatch(run$title, error = function (e) NULL)),
         nStands  = tryCatch(length(run$stands), error = function (e) NULL),
         program  = g(tryCatch(run$FVSpgm, error = function (e) NULL)),
         startyr  = g(tryCatch(run$startyr, error = function (e) NULL)),
         endyr    = g(tryCatch(run$endyr, error = function (e) NULL)),
         projectDir = getwd(),
         lastDialog  = if (!is.null(notes)) notes$lastDialog,
         lastErrScan = if (!is.null(notes)) notes$lastErrScan)
  })
}

# Record the title/body text of a modal dialog so the assistant can refer to it.
chatNoteModal <- function (notes, ui)
{
  try({
    doc <- xml2::read_html(paste0("<html><body>", as.character(ui), "</body></html>"))
    tt <- xml2::xml_find_first(doc, "//*[contains(@class,'modal-title')]")
    bd <- xml2::xml_find_first(doc, "//*[contains(@class,'modal-body')]")
    title <- if (inherits(tt, "xml_missing")) "" else chatSquish(xml2::xml_text(tt))
    body  <- if (inherits(bd, "xml_missing")) "" else chatSquish(xml2::xml_text(bd))
    notes$lastDialog <- list(title = title, text = substr(body, 1, 400),
                             time = Sys.time())
  }, silent = TRUE)
  invisible()
}

chatNoteErrScan <- function (notes, errScan, runTitle)
{
  try({
    txt <- paste(unlist(errScan), collapse = "\n")
    txt <- chatSquish(gsub("<br>", "\n", txt, fixed = TRUE))
    notes$lastErrScan <- list(run = paste(runTitle, collapse = " "),
                              text = substr(txt, 1, 600), time = Sys.time(),
                              ok = identical(txt, "No errors found"))
  }, silent = TRUE)
  invisible()
}

chatStateText <- function (st)
{
  if (!length(st)) return("")
  out <- character()
  if (length(st$tabPath))
    out <- c(out, paste0("Current screen: ", paste(st$tabPath, collapse = " > ")))
  if (length(st$runTitle))
    out <- c(out, paste0("Selected run: \"", st$runTitle, "\"",
      if (length(st$nStands)) paste0(" with ", st$nStands, " stand(s)"),
      if (length(st$program)) paste0(", program ", st$program),
      if (length(st$startyr) && length(st$endyr))
        paste0(", years ", st$startyr, "-", st$endyr)))
  if (length(st$projectDir)) out <- c(out, paste0("Project folder: ", st$projectDir))
  if (length(st$lastErrScan))
    out <- c(out, paste0("Last FVS error scan (run \"", st$lastErrScan$run, "\"): ",
                         st$lastErrScan$text))
  if (length(st$lastDialog))
    out <- c(out, paste0("Last dialog shown: ", st$lastDialog$title,
      if (nzchar(st$lastDialog$text)) paste0(" - ", st$lastDialog$text)))
  paste(out, collapse = "\n")
}

chatStateHtml <- function (st)
{
  txt <- chatStateText(st)
  if (!nzchar(txt)) return("")
  lines <- strsplit(txt, "\n", fixed = TRUE)[[1]]
  paste0("<div class='fvschat-state'>",
         paste(chatHtmlEscape(lines), collapse = "<br>"), "</div>")
}

## ---------------------------------------------------------- optional local LLM

chatModelPath <- function ()
{
  p <- getOption("fvsOL.chatModel", Sys.getenv("FVSOL_CHAT_MODEL", ""))
  if (length(p) && nzchar(p) && file.exists(p)) return(normalizePath(p))
  d <- file.path(tools::R_user_dir("fvsOL", "data"), "models")
  g <- list.files(d, pattern = "\\.gguf$", full.names = TRUE, ignore.case = TRUE)
  if (length(g)) g[1] else ""
}

# "custom": user supplied options(fvsOL.chatGenerate=function(messages) ...)
# "localLLM": localLLM installed and a .gguf model found
# "none": documentation search only
chatLLMMode <- function ()
{
  if (isTRUE(.chatEnv$llmDisabled)) return("none")
  if (is.function(getOption("fvsOL.chatGenerate"))) return("custom")
  if (nzchar(chatModelPath()) && requireNamespace("localLLM", quietly = TRUE))
    return("localLLM")
  "none"
}

chatModeLabel <- function ()
{
  switch(chatLLMMode(),
    custom   = "Local model (custom)",
    localLLM = paste0("Local model: ", basename(chatModelPath())),
    "Docs search")
}

# Call fn passing only the arguments it declares (localLLM's argument names
# have changed between versions); the first argument is passed by position.
chatCall <- function (fn, first, args = list())
{
  fa <- setdiff(names(formals(fn)), "...")
  do.call(fn, c(list(first), args[names(args) %in% fa]))
}

chatLLMGenerate <- function (messages, maxTokens = 450L)
{
  f <- getOption("fvsOL.chatGenerate")
  if (is.function(f)) return(paste(as.character(f(messages)), collapse = ""))
  ns <- asNamespace("localLLM")
  path <- chatModelPath()
  if (is.null(.chatEnv$llm) || !identical(.chatEnv$llmPath, path))
  {
    cat("chatbot: loading local model", path, "\n")
    .chatEnv$llm <- chatCall(get("model_load", ns), path,
      list(n_gpu_layers = 0L, show_progress = FALSE, verbosity = 0L))
    .chatEnv$llmPath <- path
  }
  nthr <- max(1L, as.integer(parallel::detectCores(logical = FALSE)) - 1L,
              na.rm = TRUE)
  ctx <- chatCall(get("context_create", ns), .chatEnv$llm,
    list(n_ctx = 4096L, n_threads = nthr, verbosity = 0L))
  prompt <- chatCall(get("apply_chat_template", ns), .chatEnv$llm,
    list(messages = messages, add_assistant = TRUE))
  out <- chatCall(get("generate", ns), ctx,
    list(prompt = prompt, max_tokens = as.integer(maxTokens),
         temperature = 0.2, top_p = 0.9, seed = 1234L, clean = TRUE))
  paste(as.character(out), collapse = "")
}

chatSystemPrompt <- paste(
  "You are the built-in help assistant for the Forest Vegetation Simulator (FVS)",
  "and its fvsOL user interface. Answer ONLY from the numbered documentation",
  "excerpts and the app state provided in the user's message. If they do not",
  "contain the answer, say that you could not find it in the documentation and",
  "suggest where in the interface or which guide to look. Never invent FVS",
  "keywords, keyword fields, table names, or menu items. Cite excerpts as [1],",
  "[2], etc. Keep answers under 200 words.")

chatLLMMessages <- function (q, hits, st, history)
{
  ex <- if (nrow(hits)) paste0("[", seq_len(nrow(hits)), "] ", hits$source,
          ifelse(nzchar(hits$section), paste0(" - ", hits$section), ""),
          ":\n", hits$text, collapse = "\n\n") else "(no matching excerpts)"
  user <- paste0("App state:\n", chatStateText(st), "\n\nDocumentation excerpts:\n",
                 ex, "\n\nQuestion: ", q)
  # last three exchanges, plain text only, for follow-up questions
  hist <- Filter(function (m) !is.null(m$text) && m$role %in% c("user", "bot"),
                 history)
  hist <- utils::tail(hist, 6)
  hist <- lapply(hist, function (m) list(
    role = if (m$role == "user") "user" else "assistant",
    content = substr(m$text, 1, 1200)))
  c(list(list(role = "system", content = chatSystemPrompt)), hist,
    list(list(role = "user", content = user)))
}

chatMarkdownSafe <- function (txt)
{
  # escape any raw HTML from the model, then render its markdown
  commonmark::markdown_html(chatHtmlEscape(txt), extensions = TRUE)
}

## ---------------------------------------------------------------- responses

chatGreetingHtml <- function ()
{
  paste0("<p>Hi! I can answer questions about FVS and this interface using ",
    "the Help tab and the bundled FVS guides (Essential FVS, the Keyword ",
    "Reference, DBS, Fire and Fuels, Economics, the Event Monitor, and the ",
    "variant overviews). I can also see which screen you are on, the selected ",
    "run, and the last error scan.</p><p>Try: <i>What does THINBBA do?</i>, ",
    "<i>What is in the FVS_Summary table?</i>, or <i>Why did my run fail?</i></p>",
    "<p style='font-size:11px;color:#666'>Everything runs on this computer; ",
    "nothing is sent over the network.</p>")
}

chatSnippetHtml <- function (text, qt, n = 60)
{
  w <- strsplit(text, " ", fixed = TRUE)[[1]]
  hit <- chatStem(gsub("[^a-z0-9_]", "", tolower(w))) %in% qt
  s <- 1
  if (length(w) > n)
  {
    cs <- cumsum(c(0, hit))
    m <- length(w) - n + 1
    win <- cs[(1:m) + n] - cs[1:m]
    # prefer the start of the passage unless a later window is clearly better
    s <- if (win[1] >= 0.6 * max(win)) 1 else which.max(win)
  }
  e <- min(length(w), s + n - 1)
  ww <- chatHtmlEscape(w[s:e])
  hh <- hit[s:e]
  ww[hh] <- paste0("<mark>", ww[hh], "</mark>")
  paste0(if (s > 1) "… ", paste(ww, collapse = " "),
         if (e < length(w)) " …")
}

chatSourcesHtml <- function (hits, qt, numbered = FALSE)
{
  if (!nrow(hits)) return("")
  cards <- vapply(seq_len(nrow(hits)), function (i)
  {
    lab <- paste0(if (numbered) paste0("[", i, "] "),
                  chatHtmlEscape(hits$source[i]),
                  if (nzchar(hits$section[i]))
                    paste0(" › ", chatHtmlEscape(hits$section[i])))
    paste0("<div class='fvschat-src'><div class='fvschat-src-title'>", lab,
           "</div><div>", chatSnippetHtml(hits$text[i], qt), "</div>",
           "<details><summary>Show full passage</summary><div>",
           chatHtmlEscape(hits$text[i]), "</div></details></div>")
  }, "")
  paste(cards, collapse = "")
}

chatIsErrorQuestion <- function (q)
  grepl("\\b(error|errors|fail|failed|failure|wrong|problem|crash|warning|didn.?t work|not work)",
        q, ignore.case = TRUE)

chatIsStateQuestion <- function (q)
  grepl(paste0("where am i|which (tab|screen|page|run)|what (tab|screen|page|run)",
               "|current (tab|screen|run|state|status|project)|my (current )?(run|project) (is|name)"),
        q, ignore.case = TRUE)

# Build the answer for question q. Returns list(html=, text=).
chatRespond <- function (q, st = list(), history = list())
{
  if (grepl("^\\s*(hi|hello|hey|help|\\?)\\W*$", q, ignore.case = TRUE))
    return(list(html = chatGreetingHtml(), text = "Hello."))
  if (chatIsStateQuestion(q))
  {
    txt <- chatStateText(st)
    return(list(html = if (nzchar(txt)) paste0("<p>Here is what I can see:</p>",
                  chatStateHtml(st)) else "<p>I can't read the app state right now.</p>",
                text = txt))
  }
  errQ <- chatIsErrorQuestion(q)
  qt <- unique(chatTokens(q))
  prevQ <- Filter(function (m) m$role == "user", history)
  ctx <- c(st$tabPath,
           if (errQ && length(st$lastErrScan) && !isTRUE(st$lastErrScan$ok))
             st$lastErrScan$text,
           if (errQ && length(st$lastDialog)) st$lastDialog$title,
           if (length(qt) <= 3 && length(prevQ)) utils::tail(prevQ, 1)[[1]]$text)
  # a terse error question ("why did it fail?") searches on the error text itself
  query <- if (errQ && length(qt) <= 3 && length(st$lastErrScan) &&
               !isTRUE(st$lastErrScan$ok)) paste(q, st$lastErrScan$text) else q
  ix <- chatGetIndex()
  hits <- chatRetrieve(ix, query, k = 4, context = paste(ctx, collapse = " "))
  qtHi <- unique(chatTokens(query))
  stateBox <- if (errQ) chatStateHtml(st[c("tabPath", "runTitle", "lastErrScan",
                                           "lastDialog")]) else ""
  mode <- chatLLMMode()
  if (mode != "none")
  {
    ans <- tryCatch(chatLLMGenerate(chatLLMMessages(q, hits, st, history)),
      error = function (e)
      {
        cat("chatbot: local model failed:", conditionMessage(e), "\n")
        .chatEnv$llmError <- conditionMessage(e)
        NULL
      })
    if (!is.null(ans) && nzchar(trimws(ans)))
    {
      html <- paste0(stateBox, chatMarkdownSafe(ans),
        if (nrow(hits)) paste0("<div class='fvschat-srchead'>Sources</div>",
                               chatSourcesHtml(hits, qtHi, numbered = TRUE)))
      return(list(html = html, text = ans))
    }
  }
  # documentation search answer
  if (!nrow(hits))
  {
    html <- paste0(stateBox, "<p>I couldn't find that in the FVS documentation ",
      "or the Help tab. Try different words, or a specific keyword or table name ",
      "(for example <i>THINDBH</i> or <i>FVS_TreeList</i>).</p>")
    return(list(html = html, text = "No matching documentation found."))
  }
  lead <- if (length(st$tabPath))
    paste0("<p>Here is what I found in the documentation (you are on <b>",
           chatHtmlEscape(paste(st$tabPath, collapse = " › ")), "</b>):</p>")
    else "<p>Here is what I found in the documentation:</p>"
  html <- paste0(stateBox, lead, chatSourcesHtml(hits, qtHi))
  text <- paste0(hits$source, ": ", hits$section, collapse = "; ")
  list(html = html, text = text)
}

## -------------------------------------------------------------- Shiny module

chatUI <- function (id)
{
  ns <- NS(id)
  tagList(
    tags$button(id = ns("toggle"), type = "button", class = "fvschat-toggle",
      title = "Ask the FVS help assistant",
      onclick = sprintf("fvsChatToggle('%s')", id), "Ask FVS"),
    div(id = ns("panel"), class = "fvschat-panel", style = "display:none;",
      div(class = "fvschat-header",
        span("FVS Help Assistant"),
        uiOutput(ns("mode"), inline = TRUE),
        tags$button(type = "button", class = "fvschat-close", title = "Close",
          onclick = sprintf("fvsChatToggle('%s')", id), HTML("&times;"))),
      div(id = ns("log"), class = "fvschat-log",
        uiOutput(ns("messages")),
        div(id = ns("pending"))),
      div(class = "fvschat-input",
        tags$textarea(id = ns("q"), class = "form-control fvschat-q", rows = 2,
          `data-chat-id` = id,
          placeholder = "Ask about FVS keywords, outputs, or this screen…"),
        div(class = "fvschat-buttons",
          tags$button(type = "button", class = "btn btn-default",
            onclick = sprintf("fvsChatSend('%s')", id), "Send"),
          tags$button(type = "button", class = "btn btn-default",
            onclick = sprintf("fvsChatClear('%s')", id), "Clear"))),
      div(class = "fvschat-foot",
        "Runs entirely on this computer. Answers come from the Help tab and the bundled FVS guides.")))
}

chatServer <- function (id, stateFn = function () list())
{
  moduleServer(id, function (input, output, session)
  {
    greeting <- list(list(role = "bot", html = chatGreetingHtml()))
    msgs <- reactiveVal(greeting)

    output$mode <- renderUI({
      input$ask
      span(class = "fvschat-mode", chatModeLabel())
    })

    output$messages <- renderUI({
      tagList(lapply(msgs(), function (m)
        div(class = paste("fvschat-msg", m$role),
            if (m$role == "user") m$text else HTML(m$html))))
    })

    observeEvent(input$opened, {
      if (is.null(.chatEnv$index))
      {
        nid <- showNotification(
          "Preparing the documentation index (first use only)...",
          duration = NULL, type = "message")
        on.exit(removeNotification(nid))
        try(chatGetIndex())
      }
    }, once = TRUE)

    observeEvent(input$clear, msgs(greeting))

    observeEvent(input$ask, {
      q <- substr(trimws(paste(input$ask$q, collapse = " ")), 1, 1000)
      if (!nzchar(q)) return()
      st <- tryCatch(stateFn(), error = function (e) list())
      hist <- msgs()
      ans <- tryCatch(chatRespond(q, st, hist), error = function (e)
        list(html = paste0("<p>Sorry, something went wrong: ",
               chatHtmlEscape(conditionMessage(e)), "</p>"), text = "Error."))
      msgs(c(hist, list(list(role = "user", text = q),
                        list(role = "bot", html = ans$html, text = ans$text))))
      session$sendCustomMessage("fvsChatDone", id)
    })
  })
}
