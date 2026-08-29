---
title: Editing
weight: 40
lastmod: 2026-08-29
description: Select, move, delete, rename, and reshape places, transitions, arcs, and labels.
---

## Select and move elements

In selection mode, click an element to select it. Drag across the canvas to select multiple elements, or hold `Shift` while selecting to add or remove individual elements from the selection. Press `Ctrl + A` to select all elements.

Drag a selected element to move it. Press `Backspace` or `Delete`, or choose **Delete** from the menu, to remove the selection.

![Select, move, and delete](/gui/editor/moveAndDelete.gif)

## Edit properties and labels

Double-click a place, transition, or arc, or right-click it and choose **Edit**, to open its property dialog. The available fields depend on the modeling features enabled for the net.

Drag the text label associated with a place, transition, or arc to reposition it. Right-click a place or transition and choose **Hide Name** to hide its name.

![Move and hide labels](/gui/editor/movelabels.gif)

![Edit a place, transition, or arc](/gui/editor/edit.gif)

## Edit arc paths

When an arc is selected, its path points appear. Drag a point to change the route. Right-click a path point to remove it or change its curve type.

To insert a path point after drawing, double-click the arc while holding `Ctrl`, or right-click the arc and choose **Insert point**. Path points are hidden by default and appear when you move the pointer over the arc or select it.

![Arc path](/gui/editor/arcpath.png)

![Edit arc path](/gui/editor/edit-arcpath.png)

See [Drawing](../drawing/) for the tools used to create elements and arcs. See [Model configuration](../model-configuration/) for editing markings, intervals, invariants, and feature-specific properties.
