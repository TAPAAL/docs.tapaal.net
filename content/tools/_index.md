---
title: Tools and workflows
weight: 60
pre: "<b>6. </b>"
chapter: true
lastmod: 2026-08-29
aliases:
  - /gui/tools/
---

# Tools and workflows

This page summarizes the major actions in the **Tools** and **File** menus. Availability depends on the model features and current workspace.

## Workflow analysis

Choose **Tools > Workflow analysis** to analyze the current net as a timed-arc workflow net (TAWFN). Use this for models with a clear workflow structure: an initial state, task flow, and a final state. The analysis can expose deadlocks and other workflow problems that may not be obvious from a single simulation.

Workflow analysis is a specialized analysis, not a replacement for ordinary reachability and safety queries. First confirm that the model satisfies the assumptions of a workflow net, then use the report to decide which query or model change to investigate.

## Batch processing

**Tools > Batch processing** verifies multiple nets and queries in one run. Prepare a consistent set of model/query files, select the batch inputs, and review the per-case results. Keep the engine version and settings with the batch output so that a result can be reproduced.

For scripts or another machine, use **File > Export > Batch Export of model and queries**. This produces the model and query artifacts needed for command-line engine use. See the [Command Line](/command-line/) chapter.

## Unfolding

**Tools > Unfold nets** creates an unfolded net for models that use colors or game-related features. Unfolding expands compact colored behavior into an uncolored representation that a selected verification engine can analyze. The unfolded net can be much larger than the original, so inspect the reported size before opening it.

Unfolding options can include color partitioning, color fixpoints, and symmetric-variable handling. Keep a copy of the original model; the unfolded net is an analysis artifact.

## Engine selection

Open **Tools > Engine selection** to configure paths to `verifytapn`, `verifydtapn`, `verifypn`, and optional UPPAAL `verifyta` installations. The dialog displays the detected location and version. See [Engines and options](/verification/engines/) for selection guidance.

## Constants, color types, and variables

The constants pane manages global constants and, for colored models, color types and variables. Use constants for values that you expect to vary between verification runs, such as a capacity or deadline. Give each constant a descriptive name and use it consistently in arc intervals, invariants, and queries.

Use the display controls to show or hide constants, color types, variables, colored tokens, token ages, intervals, enabled transitions, and future-enabled transitions. Hiding a label changes the view, not the model semantics.

## Import and export

The current GUI provides these common file actions:

- import an untimed PNML net;
- import SUMO queries from plain-text `.txt` files;
- import MCC queries from `.xml` files;
- export a net as PNG, PostScript, TikZ, or PNML;
- export queries as XML;
- export and import simulation traces;
- export a batch of model and query files for command-line use.

Confirm the target format before exporting. Untimed PNML cannot represent every timed, colored, game, or stochastic feature, so inspect the exported file when moving a model between tools.

## Layout and components

**Automatic net layout** rearranges model elements to improve readability. **Merge net components** combines the current components into one component. Save the original file before using either action if component structure or hand-placed layout matters to your work.
