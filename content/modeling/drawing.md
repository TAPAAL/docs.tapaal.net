---
title: Drawing
weight: 30
lastmod: 2026-08-29
description: Place nodes, connect them with arcs, and use drawing shortcuts in the editor.
---

Select a drawing tool from the toolbar or use its shortcut. Click the canvas to place a place, transition, or annotation. To draw an arc, select an arc tool, click its source, and click a valid target.

![Draw toolbar](/gui/editor/draw-tools.png)

| Tool | Feature | Shortcut |
| --- | --- | --- |
| Select | Any | `S` |
| Place | Any | `P` |
| Transition | Any | `T` |
| Urgent transition | Timed | `Y` |
| Uncontrollable transition | Game | `L` |
| Uncontrollable urgent transition | Game and timed | `O` |
| Arc | Any | `A` |
| Transport arc | Timed | `R` |
| Inhibitor arc | Timed | `I` |
| Annotation or note | Any | `N` |

For the semantics of each element, see [Petri net concepts](/concepts/petri-nets/), [timed-arc semantics](/concepts/timed-arc-petri-nets/), and [modeling features](/concepts/modeling-features/).

{{% notice warning %}}
**TODO — screenshot:** Replace or supplement the toolbar image with an annotated screenshot from the current release. Label each tool in the image and confirm that the shortcut table and feature prerequisites still match the GUI on all supported platforms.
{{% /notice %}}

## Draw a net

Select **Select** or press `S` to return to selection mode. TAPAAL validates the structure while you draw and prevents changes that are invalid for the current feature combination.

![Drawing](/gui/editor/draw.gif)

When connecting an arc to a target, hold `Ctrl` while clicking the target to continue drawing from that location. You can also hold `Ctrl` and click the canvas to create a new place or transition and connect the arc to it.

![Quick Draw](/gui/editor/quickdraw.gif)

{{% notice warning %}}
**TODO — GIF:** Add a current Quick Draw recording that shows both workflows: continuing an arc from an existing target with `Ctrl`, and creating a new place or transition while holding `Ctrl`. Explain what happens when the proposed target is invalid.
{{% /notice %}}

## Draw curved arcs

Click the canvas while drawing an arc to add a path point. By default, the point creates a straight corner; hold `Shift` to create a curved corner instead. See [Editing](../editing/) for changing a path after the arc is drawn.

{{% notice warning %}}
**TODO — content/review:** Add short examples for drawing each feature-specific element—urgent, uncontrollable, transport, and inhibitor—showing valid source/target combinations and the error message for an invalid combination. Confirm the rules against the model validator and formal semantics.
{{% /notice %}}
