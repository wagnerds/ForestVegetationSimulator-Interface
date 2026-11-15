# chatdocs: extra documents for the fvsOL help assistant

Files placed here are searched by the **Ask FVS** help assistant (FVSOnlocal only,
see `R/chatbot.R`), in addition to the Help tab and the guides in
`inst/extdata/MarkdownDocs`.

- Supported formats: `.md`, `.html`/`.htm`, `.txt`. Files whose names start with
  `README` (like this one) are not indexed.
- Use headings. Each heading starts a new section, and the assistant cites
  answers as *Document › Section*, so short, focused sections with descriptive
  headings give the best results.
- In `.txt` files, blank lines separate passages.
- The search index is rebuilt automatically the next time the assistant is
  opened after any document changes. It is cached in
  `tools::R_user_dir("fvsOL", "cache")`.
- More folders can be added at run time with
  `options(fvsOL.chatDocs = c("/path/to/folder", ...))` before calling `fvsOL()`.
