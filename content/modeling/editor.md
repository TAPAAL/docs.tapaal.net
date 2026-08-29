---
title: Editor
weight: 20
lastmod: 2026-08-29
description: Use the focused editor references to draw, edit, configure, and compose a TAPAAL net.
aliases:
  - /gui/editor/
---

The TAPAAL editor is where you create and refine a net. Open an existing model from **File > Open**, choose an example from **File > Example nets**, or select **File > New net** to create a model with the features you need.

Use the pages below as a task-oriented path through the editor:

- [Drawing](../drawing/) — place nodes, connect them with arcs, and use Quick Draw.
- [Editing](../editing/) — select, move, delete, rename, and reshape model elements.
- [Model configuration](../model-configuration/) — enable features and edit places, transitions, arcs, and colored expressions.
- [Components](../components/) — organize a larger model with components and shared places or transitions.

## A typical modeling workflow

1. Review the [main window](../overview/) and choose a suitable workspace.
2. Create the required places and transitions, then connect them with arcs.
3. Edit names, markings, intervals, invariants, and other properties.
4. Add components or shared elements when the model benefits from modular structure.
5. Run a short [simulation](/simulation/) before writing [verification queries](/verification/).

TAPAAL prevents invalid structures during editing and displays a warning when an attempted change is not valid for the current feature combination. For the underlying notation and semantics, see [Petri net concepts](/concepts/petri-nets/), [timed-arc semantics](/concepts/timed-arc-petri-nets/), and [modeling features](/concepts/modeling-features/).

{{% notice warning %}}
**TODO — GIF:** Add a short, versioned end-to-end editor walkthrough: create a new net, draw a minimal model, edit one property, and switch to simulation mode. Keep it under one minute and annotate the keyboard shortcuts used in the recording.
{{% /notice %}}

{{% notice warning %}}
**TODO — content/review:** Add a small "Which page should I use?" decision table for beginners and verify that the workflow and menu labels match the current release on Windows, macOS, and Linux.
{{% /notice %}}

## Components

For compatibility with existing links, the components topic is also available from this heading: see [Components](../components/).
