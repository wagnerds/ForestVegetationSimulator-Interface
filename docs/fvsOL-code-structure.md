# fvsOL code structure

This is a guide for developers working on the fvsOL Shiny interface (`fvsOL/R`). It explains how the server and UI code are organized and how to add to them.

## Server

`FVSOnlineServer(input, output, session)` is one large Shiny server function. It used to be a single 9,000-line `server.R`. It is now split by feature area into the files below.

| File | Section object | What it handles |
|---|---|---|
| `server.R` | – | `fvsOL()` entry point; `FVSOnlineServer` start-up: logging, globals, project databases, lock file, session end |
| `serverGlobals.R` | – | Reference classes (`mkfvsRun`, `mkGlobals`, …), constants (`cbbPalette`, `zipList`, …), run scripts |
| `serverOutputLoad.R` | `srvOutputLoad` | View Outputs > Load: run selection, composite output tables, stand/stock tables |
| `serverExplore.R` | `srvExplore` | View Outputs > Explore: filtering and the output table |
| `serverGraphs.R` | `srvGraphs` | View Outputs > Graphs: graph settings, facets, plot rendering |
| `serverStands.R` | `srvStands` | Simulate > Stands: stand/group selection, group modification |
| `serverRuns.R` | `srvRuns` | Runs: new, save, duplicate, reload; run contents; adding stands |
| `serverComponents.R` | `srvComponents` | Components: edit/cut/copy/paste, freeform editing, thinning windows, scheduling |
| `serverRunExec.R` | `srvRunExec` | Time settings, Save and Run, background runs |
| `serverDownloads.R` | `srvDownloads` | Download handlers |
| `serverKCP.R` | `srvKCP` | Components > Editor: keyword component (KCP) files |
| `serverSVS.R` | `srvSVS` | Visualize: Stand Visualization System |
| `serverMaps.R` | `srvMaps` | View On Maps |
| `serverProjectTools.R` | `srvProjectTools` | Delete runs/outputs, zip backups, restore, delete project, help |
| `serverInputDB.R` | `srvInputDB` | Import input data: upload/install databases, append CSV |
| `serverInputEdit.R` | `srvInputEdit` | Stand/tree upload, Climate-FVS upload, view/edit tables |
| `serverMapUpload.R` | `srvMapUpload` | Upload map (spatial) data |
| `serverImport.R` | `srvImport` | Import runs, components, graph settings from other projects |
| `serverProjects.R` | `srvProjects` | Project selection/new/open, change directory, `saveRun` |

### How the sections are loaded

Each section file defines a quoted expression, not a function:

```r
srvKCP <- quote({
  observe({ ... })
  ...
})
```

At the end of `FVSOnlineServer`, each section is evaluated inside the server function's own environment, in a fixed order:

```r
srvEnv <- environment()
for (srvSection in list(srvOutputLoad, srvExplore, ..., srvProjects))
  eval(srvSection, envir = srvEnv)
```

As a result, a section behaves exactly as if its code were written inline in `FVSOnlineServer`:

- `input`, `output`, `session`, `globals`, `dbGlb`, `fvsOutData`, `modGroupGlb` and `dbDrv` are all in scope.
- A helper defined in one section (for example `saveRun`, `closeCmp`, `renderComponent`, `updateProjectSelections`, `initNewInputDB`) is visible to every other section. The helper closes over the session's `output` and `session` just as before.

Two reasons for using quoted expressions rather than functions:

1. **Behavior.** The split is a pure move with no change in behavior. Turning sections into functions would mean passing state around explicitly and finding every cross-section helper.
2. **R CMD check.** Its code analysis looks inside functions but not quoted expressions. Functions would produce hundreds of "no visible binding" notes. The cost is that check no longer reports undefined names inside the section code. Test changes to section code in the running app.

### Adding server code

- Put a new observer or output in the section file for its feature area.
- For a new section file:
  1. define `srvNewThing <- quote({ ... })`;
  2. add it to the `list(...)` at the end of `FVSOnlineServer` in `server.R`;
  3. add it to the table above and to the map at the top of `server.R`.
- Order matters only when top-level code in a section *calls* something defined in a later section while the session is starting. Observers and helpers run later, after every section has been evaluated.
- Package load order doesn't matter: the files only define objects, and DESCRIPTION has no `Collate:` field. The exception is `serverGlobals.R`. It sources `runScripts.R` when the package is built, which needs objects defined earlier in the same file, so keep that block together.

## User interface

`FVSOnlineUI` is built in `ui.R`. That file holds the page header (title, logos, project information, custom JavaScript) and the top-level tabset. Each tab is built by a function in a `tab*.R` file:

| File | Functions | What they build |
|---|---|---|
| `tabSimulate.R` | `tabSimulate`, `tabStands`, `tabTime`, `tabComponents`, `tabSelectOutputs`, `tabRun` | Simulate tab: run selection and contents, and its sub-tabs. `tabRun` is the tab whose title is the `contChange` output ("Run"/"\*Run\*") |
| `tabViewOutputs.R` | `tabViewOutputs`, `tabGraphs` | View Outputs: Load/Explore panes, Tables and Graphs |
| `tabVisualize.R` | `tabVisualize`, `tabMaps` | Visualize (SVS) and View On Maps |
| `tabManageProjects.R` | `tabManageProjects`, `tabManageProject`, `tabImportInputData`, `tabImportRuns`, `tabDownloads` | Manage Projects and its sub-tabs |

The Help tab is small, so it stays inline in `ui.R`.

The server finds UI elements by their input/output IDs, not by which file defines them. Moving a widget between tab files therefore needs no server change.

### Load order

`FVSOnlineUI` is a value, not a function, and it is built when the package loads. R sources the files in `R/` in alphabetical order (C locale), so every function `ui.R` calls must be defined in a file that sorts **before** `ui.R`. That is why the tab files are named `tab*.R`; a name like `uiSimulate.R` would sort after `ui.R`. If a new UI file sorts too late, the package fails to load with a "could not find function" error.

### Adding UI

- Add widgets inside the relevant `tab*()` function.
- For a large new sub-tab, add a function to the same file and call it where the `tabPanel(...)` would have gone.
- For a new top-level tab, create a new `tab*.R` file and add its call to the `tabsetPanel(id = "topPan", ...)` in `ui.R`.

## Running from source

1. Generate the git-ignored data files once: run `make data/prms.RData data/fvsOnlineHelpRender.RData` in `fvsOL/`. Without `prms`, opening any component window fails with "object 'prms' not found".
2. Start the app:
   ```r
   pkgload::load_all("fvsOL")
   fvsOL(prjDir = "<project dir>", fvsBin = "<dir with FVS*.so libraries>")
   ```
   The app stops when its browser tab is closed.
