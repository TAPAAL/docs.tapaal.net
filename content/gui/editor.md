---
title: Editor
weight: 20
---

To start editing a Petri net, open an existing net using the Open dialog, open an example net from the `File - Example Net` menu, or create a new net by selecting `File - New net`.

If you create a new net, select the modeling features you want to use. Depending on the features you select, the GUI will adapt its available options.

Normally, you select a drawing tool from the toolbar or use a hotkey. You can look up the hotkeys in the Draw menu.

![Draw Toolbar](draw-tools.png)


| Icon | Tool   | Feature  | Hotkey  |
|------|--------|----------|---------|
| ![select](icons/select.png?classes=inline)     | Select | Any      | S       |
| ![place](icons/place.png?classes=inline)     | Place  | Any      | P   |
| ![transition](icons/transition.png?classes=inline)     | Transition  | Any  | T   |
| ![urgent transition](icons/urgent-transition.png?classes=inline)     | Urgent Transition | Timed | Y |
| ![Uncontrollable Transition](icons/uncontrollable-transition.png?classes=inline)     | Uncontrollable Transition | Game | L |
| ![Uncontrollable Urgent Transition](icons/uncontrollable-urgent-transition.png?classes=inline)     | Uncontrollable Urgent Transition | Game + Time | O | 
| ![arc](icons/arc.png?classes=inline)    | Arc    | Any | A |
| ![transport arc](icons/transport-arc.png?classes=inline)    | Transport Arc | Timed | R | 
| ![inhibitor arc](icons/inhibitor-arc.png?classes=inline)     | Inhibitor Arc | Timed | I | 
| ![annotation](icons/annotation.png?classes=inline)     | Annotation/Note | Any | N | 

For details about the semantics of each element, please refer to the corresponding semantics section: TODO

## Draw 
To start drawing, select a drawing tool from the toolbar or use a hotkey.
To place a place, transition, or annotation, click anywhere on the canvas to place the element.
For arcs, click a suitable place or transition to start, then click again to finish drawing the arc. The arc will automatically snap to any valid target component.

![Drawing](draw.gif)

TAPAAL always ensures that the net is syntactically correct, eliminating the need to perform additional syntax checks. TAPAAL prevents you from adding invalid structures and displays a warning if you try to violate the syntax.

Press `Select` or `S` at any time to go back to selection mode. 


### Quick Draw
When connecting an arc to a target, you can continue drawing an arc from the target location by holding `Ctrl` while clicking the target.
You can also click the canvas while holding `Ctrl` to create a new place or transition and connect the arc to it.

![Quick Draw](quickdraw.gif)

## Edit Elements

Places and transitions, including their text labels, can be moved by moving the pointer over them, holding down the left mouse button, and dragging.

In selection mode, you can select a single element by clicking it or select multiple elements by holding down the left mouse button and dragging the mouse. You can further manipulate the selected elements by holding `Shift` and selecting individual elements, adding or removing them from the current selection.
Use the `Ctrl + A` hotkey to select all elements.

You can delete the current selection by pressing `Backspace` or `Delete`, or by selecting `Delete` from the menu. You can move all selected elements by holding down the left mouse button and moving the mouse.

![Select, move and delete](moveAndDelete.gif)

Click anywhere in the canvas to deselect all elements. 

Text labels associated with places, transitions, and arcs can be repositioned by dragging them. They will maintain their position relative to the parent object.
Place and transition names can also be hidden by right-clicking and selecting `Hide Name`.

![Move and Hide Labels](movelabels.gif)

You can edit a place, transition, or arc by right-clicking it and selecting `Edit` from the pop-up menu, or by double-clicking it.
This will open a menu that allows you to change the properties of the element. The available options depend on the selected modeling features.

![Edit place transition or arc](edit.gif)


### Arc Path
When drawing an arc, you can curve its path by clicking the canvas. By default, this creates a straight corner; holding `Shift` creates a curved corner.

![Arc Path](arcpath.png)

After an arc is drawn, a new path point can be inserted by double-clicking the arc while holding down `Ctrl`, or by right-clicking the arc and selecting `Insert point`.

By default, arc points are hidden. They are displayed when you move the pointer over an arc or select an arc. You can select and drag a path point to change the path of the arc.
Right-clicking a path point allows you to remove it or change the curve type.

![Edit arc path](edit-arcpath.png)


## Components 
TAPAAL allows you to decompose larger models into components. Components are connected via shared places and transitions, which are drawn with a hairline:

![Shared place and transition](shared-pt.png) 

A shared place or transition can be added to any number of components, thereby connecting those components.

New components can be created in the Components section of the side menu:

![Components](components.png)

Select `new` to create a new component, or select `copy` to create a new component based on the current component. 

You can create new shared places and transitions from the `Shared places and transitions` section of the side menu. From the drop-down menu, select either a shared place or a shared transition, then select `new`.

To add an existing shared place or transition to a component, add a place or transition, right-click it, and select `Edit`. Check the `Shared` box and select a shared element from the drop-down menu. A new shared place or transition can also be created directly by pressing the `make shared` button.

![Shared place](shared-place.png)

A component can be disabled by removing the check mark in the Components section. Disabled components are ignored during verification and simulation. This can be useful for creating different implementations of a part of the system and switching between them.

Shared components can be merged into a single component by selecting `Merge net components` from the `Tools` menu.






