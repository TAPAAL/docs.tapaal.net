---
title: Interactive simulation
weight: 10
lastmod: 2026-08-29
description: Enter simulation mode, inspect enabled transitions, and fire transitions manually.
---

Simulation lets you explore one execution of a Petri net. Use it to check the initial marking, follow enabled transitions, and look for simple modeling mistakes before you write verification queries.

## Enter Simulation Mode

Select the ![Simulation](/gui/simulation-indicator.png?classes=inline) button in the toolbar, or choose **Simulator > Simulation mode**. Select the button again to return to editor mode. You can also press `M` to toggle the mode.

Simulation mode replaces the editor controls in the side panel with simulation controls and disables drawing actions. The available controls depend on the modeling features enabled for the current net.

![Simulation Mode](/gui/simulation/simulationmode-gui.png)

For a colored model, TAPAAL may ask whether to simulate the net explicitly or use an unfolded net. The available choice depends on the model features. Keep the original model when experimenting with an unfolded representation.

## Fire transitions manually

Enabled transitions are highlighted in red: ![Enabled Transition](/gui/simulation/enabled-transition.png?classes=inline). Right-click an enabled transition in the canvas to fire it and update the marking.

![Transition Firing](/gui/simulation/transitions-firring.gif)

The **Enabled Transitions** widget lists enabled transitions across all active components. Double-click a transition in the list, or select it and press **Fire**, to fire it.

If the net is timed, the button may be labeled **Delay & Fire** when future-enabled transitions are displayed. Time and token-selection controls are described in [Time and token selection](../time-and-tokens/).

## Related simulation topics

- [Simulation history and traces](../history-and-traces/) — move through a run and inspect imported or verification traces.
- [Time and token selection](../time-and-tokens/) — advance time, choose delays, and select tokens.
- [Automatic random simulation](../automatic-simulation/) — let TAPAAL fire transitions automatically.
