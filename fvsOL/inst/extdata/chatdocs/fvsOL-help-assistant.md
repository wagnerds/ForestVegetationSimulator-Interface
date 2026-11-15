# Ask FVS help assistant

## What the help assistant is

The **Ask FVS** help assistant is available in the FVSOnlocal configuration of
fvsOL. Open it with the **Ask FVS** tab on the right edge of the window; it
docks beside the page so you can keep working on the current screen. Close it
with the × in its title bar.

The assistant answers questions from the Help tab and from the FVS guides that
are installed with fvsOL: Essential FVS, the Keyword Reference Guide, the
Database Extension (DBS) User Guide, the Fire and Fuels Extension guide, the
Economic Analysis Extension guide, the Event Monitor guide, and the variant
overviews.

## Privacy and network use of the help assistant

The help assistant runs entirely on your computer inside the fvsOL R session.
It does not send your questions, your data, or your runs over the network, and
it never downloads anything.

## What the help assistant can see

The assistant can read, but not change, the following about your session:
the screen (tab) you are on, the selected run and how many stands it has,
the project folder, the most recent FVS error scan, and the most recent dialog
message the interface showed you. Ask "why did my run fail?" after a run to
have it look up the messages from the last error scan.

## Optional local language model

By default the assistant answers with the most relevant documentation
passages. It can instead write conversational answers based on those passages
using a small language model that runs on your computer:

1. Install the R package `localLLM` and its backend library, following that
   package's instructions.
2. Copy a GGUF model file to your computer. Small instruction-tuned models of
   1 to 4 billion parameters with Q4 quantization work on ordinary laptops.
3. Before starting fvsOL, run `options(fvsOL.chatModel = "path/to/model.gguf")`
   or set the environment variable `FVSOL_CHAT_MODEL`. Alternatively, put the
   file in the `models` folder of `tools::R_user_dir("fvsOL", "data")`.

The badge in the assistant's title bar shows "Docs search" or the name of the
model in use. If the model cannot be loaded, the assistant falls back to
documentation search.

## Adding documents to the help assistant

Markdown, HTML, and text files placed in the `chatdocs` folder of the installed
fvsOL package are searched along with the bundled guides. More folders can be
added with `options(fvsOL.chatDocs = "path/to/folder")` before starting fvsOL.
