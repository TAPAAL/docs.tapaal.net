---
title: Editor
weight: 20
lastmod: 2026-08-29
---

To start editing a Petri net, open an existing net using the Open dialog, open an example net from the `File > Example nets` menu, or create a new net by selecting `File > New net`.

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

For details about the semantics of each element, see [Petri net concepts](/concepts/petri-nets/), [timed-arc semantics](/concepts/timed-arc-petri-nets/), and [advanced modeling features](/concepts/modeling-features/).

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

## Configure the model

The feature indicator at the bottom of the main window shows whether the current model uses **Timed**, **Game**, **Color**, and **Stochastic** features. Select the feature's `Yes` or `No` value to change the model configuration. TAPAAL may ask for confirmation before removing a feature because elements that depend on it can be changed or removed.

Start with the smallest feature set that expresses your model. For example, use an untimed model for basic control flow, enable **Timed** when token ages or deadlines matter, and enable **Color** when many similar tokens would otherwise require duplicated structure.

{{% notice warning %}}
Expert review needed: the descriptions of feature semantics in this page and the Concepts chapter are implementation-guided drafts. Verify them against the formal TAPAAL semantics before using them as a teaching specification.
{{% /notice %}}

### Places

Double-click a place, or right-click it and choose `Edit`, to change its name and initial marking. In a timed model, the same dialog lets you set the place invariant. In a colored model, choose the place's color type and define the initial colored tokens.

Keep names short and unique within their component. Use the same names consistently in queries; the query editor can qualify a place with its component or template when a model contains duplicates.

### Transitions

Edit a transition to change its name and, when the feature is enabled, its timing or game properties. The toolbar also provides separate tools for urgent, uncontrollable, and uncontrollable-urgent transitions.

An urgent transition is useful when an enabled action must happen before time advances. An uncontrollable transition represents behavior that a controller cannot choose or prevent in a game model. Use these types only when they reflect the system being modeled; they change which verification questions are meaningful.

### Standard and timed arcs

Create a standard arc between a place and a transition, then edit it to set its weight. In a timed model, edit the input arc's time interval to restrict which token ages can be consumed. The default unrestricted interval is `[0, inf)`.

Use square brackets to include an endpoint and parentheses to exclude it. For example, `[2, 5)` accepts ages from 2 up to, but not including, 5. Constants can be used in intervals when they have been declared in the constants pane.

### Transport and inhibitor arcs

Select the **Transport Arc** tool to draw a paired route through a transition. TAPAAL keeps the input and output sides together; edit the pair when changing its weight, interval, or colored expression.

Select the **Inhibitor Arc** tool to add a negative enabling condition. Edit its weight to control how many source tokens prevent the transition from firing. If an arc cannot be drawn, read the validation message: TAPAAL rejects structures that are invalid for the current feature combination.

See [timed-arc semantics](/concepts/timed-arc-petri-nets/) and [modeling features](/concepts/modeling-features/) for the behavior of these elements. The formal descriptions are drafts and require expert review.

### Colored expressions

When **Color** is enabled, open **Tools > Show color types/variables/constants** to inspect the global definitions. Select a color type for a place, then use arc expressions to describe the colors consumed and produced by a firing. Variables must be declared with a color type before they can be used in expressions.

For a first colored model, use one of the colored examples under **File > Example nets**. Keep the model small while learning how bindings affect enabled transitions; use **Tools > Unfold nets** when you need to inspect the corresponding uncolored representation.


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






