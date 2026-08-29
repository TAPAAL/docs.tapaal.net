---
title: Overview
weight: 10
---

This introduction assumes that you are already familiar with the basic concepts of Petri nets. If not,
please consider starting with the Introduction to Petri Nets section. TODO:

The TAPAAL main window consists of the following components (see figure):

  1. Main menu
  2. Toolbar
  3. Open tabs
  4. Side menu
  5. Drawing canvas
  6. Feature indicator

The content of each area adapts to the selected Petri net features in the New Net dialog.

![TAPAAL main window](/gui/tapaal-main-window.png)

The GUI consists of two main modes: editor mode (also called normal mode, shown above) and simulation mode (see the Simulation section). The current mode is indicated by the ![Simulation Mode](/gui/simulation-indicator.png?classes=inline) button in the toolbar. When the button is pressed, as shown, the GUI is in simulation mode.

In the following sections, we will break down each of the main areas further.

## Main Menu 

The main menu contains links to all features in the program and is useful for looking up shortcut keys (shown to the left of each action).

  1. Main Menu \
     Contains actions for opening and saving nets and for importing and exporting. The menu also contains the Example Nets section, which contains a number of models demonstrating TAPAAL's features.
  2. Edit & Draw Menu \
     Contains features for drawing and changing nets. See the Editor section for more details. TODO:
  3. Simulation Menu \
     Contains features used for simulating nets. See the Simulation section for more details. TODO:

![View Menu](/gui/view-menu.png)

  4. View Menu
     1. Zoom: Controls the zoom level of the canvas.
     2. Node Spacing: Adds or removes spacing between all elements on the canvas.
     3. Grid: Cycles through the grid sizes, including the option to disable the grid. Align to Grid moves all elements so that they align with the grid.
     4. Display: Shows or hides specific elements in the side menu or drawing canvas.
     5. Change Visibility: Quickly changes the visibility settings for all or selected parts of the current net.
     6. Workspace: Simple Workspace is useful for beginners who want to hide as much complexity as possible. Advanced Workspace shows all settings. Save Workspace makes TAPAAL remember your choices.

![Tools Menu](/gui/tools-menu.png)

   5. Tools Menu
      1. Verify Query: Verifies the selected query. See the Verification section. TODO:
      2. Net Statistics: Counts the number of places, transitions, arcs, etc. in the net.
      3. Workflow Analysis: Opens workflow mode. See the Workflow Nets section. TODO:
      4. Automatic Net Layout: Opens a dialog to automatically lay out the components of the net.
      5. Merge Net Components: Combines elements from components into a single component. See the Editor section for details about components. TODO:
      6. Unfold Nets: (Colors and Games only) Opens a new net in which color and/or game features are unfolded.
      7. Batch Processing: Opens a specialized tool to run verification for several nets at the same time. See the Batch Verification section. TODO:
      8. Engine Selection: Selects a specific engine for verification. If you use UPPAAL for verification, you must specify the path to `verifyta` here.
      9. Clear All Preferences: Removes all stored preferences. On the next start, all settings will be restored to their defaults.
   6. Help Menu \
      Contains useful links to external resources related to TAPAAL, including this documentation, developer credits, and an automatic version check.

## Toolbar

The toolbar provides a quick alternative to using the Main Menu for several frequently used tasks.

The toolbar can be divided into five main sections: 

![TAPAAL Toolbar](/gui/toolbar.png)

 1. Section 1
    1. New net...
    2. Open net...
    3. Save net
    4. Save net as...
 2. Section 2
    1. Print
    2. Cut selection
    3. Copy selection
    4. Paste the contents of the copy/paste buffer
 3. Section 3
    1. Delete Selection
    2. Undo the last action
    3. Redo the previous undone action
    4. Zoom Out
    5. Select zoom level
    6. Zoom In
 4. Section 4
    1. Select grid size/disable grid
    2. Start/stop animation mode
 5. Section 5 \
    Drawing tools; see the Editor section for details. TODO:

## Open tabs

Contains tabs for each open model. Switch between models by clicking a tab. Use the (x) to close a tab.

## Side menu / Workspace

The side menu's content depends on the current mode (shown here in edit mode) and the selected modeling features.
The menu consists of a number of widgets. Specific widgets can be shown or hidden from the `View` menu to fit your needs.

In general, a widget is marked by a border. The top drop-down menu allows you to select between different modes or values. Below it is a list of values.
![Constant Widget](/gui/side-panel-component.png)
In the button row, you can add, edit, or create new elements by selecting an element and pressing the appropriate button.

You can resize a widget to fit your needs by dragging its border with the mouse.

![Resize widget](/gui/resize-widget.gif)

You can change the order of a list by selecting an element and using the up and down arrows to rearrange the elements. You can sort the list alphanumerically by selecting the ![Sort](/gui/sort-btn.png?classes=inline) icon. Note that the sort icon might be hidden on smaller screens.

![Reorder widget](/gui/reorder-widget.gif)

For more details about the features of individual widgets, please consult the following sections: Editor, Simulation, Verification, Components, and Constants. TODO:

## Drawing Canvas

This is where you can draw and simulate Petri nets. In editor mode, you can select a place or transition tool from the toolbar and click the canvas to place the corresponding element.

To connect a place and a transition with an arc, select an arc tool from the toolbar, then click the place and the transition.
To edit the properties of a specific place, transition, or arc, you can double-click it, or right-click it and select `Edit`.

### Navigation
If the net is larger than the current canvas, you can use the scrollbars below and to the right of the canvas to move around. You can also navigate using the mouse scroll wheel or by right-clicking and dragging on the canvas.

### Zoom
You can increase or decrease the size of elements on the canvas by using the zoom controls. Select a zoom level from the toolbar or main menu, or zoom using the `Ctrl + mouse wheel`, `Ctrl + J`, or `Ctrl + K` shortcuts.

### Grid
By default, TAPAAL aligns all components to the grid. You can customize the grid size using the `View - Cycle Grid` menu option or by pressing the `G` hotkey.
The grid cycles through three grid sizes and no grid. When a grid is enabled, elements automatically snap to it. You can also force all elements to align with the grid by selecting `View - Align to Grid`.

See the Editor section for more details. TODO:

## Feature indicator

The feature indicator displays the current modeling features and semantics for the open net.
At any time, you can change the available features by clicking the feature indicator. A new net will be opened with the required modeling features enabled or disabled.

If you remove a feature, you will be prompted to confirm, and any use of that feature will be removed from the net to the best of TAPAAL's ability.
