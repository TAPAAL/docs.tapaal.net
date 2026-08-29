---
title: Automatic random simulation
weight: 40
lastmod: 2026-08-29
description: Run a continuously advancing simulation that chooses enabled transitions automatically.
---

Automatic random simulation repeatedly fires transitions without requiring you to select each one manually. It is useful for quickly exploring a model or demonstrating one possible behavior, but it does not replace exhaustive verification.

## Start automatic simulation

1. Enter [Simulation Mode](../interactive/).
2. Open **Settings** in the **Enabled Transitions** widget.
3. Select **Enable automatic random simulation**.
4. Close the settings dialog and select **Simulate** in the **Enabled Transitions** widget.

![Simulation Control](/gui/simulation/auto-simulation-control.png)

TAPAAL opens the **Simulation controls** window while the automatic run is active. Select **Stop** to end the run. The simulator also stops advancing when there are no transitions available from the current marking.

## Configure the run

The **Simulation controller** provides these controls:

- **Choose next transition randomly** controls how the next enabled transition is selected. Automatic random simulation enables random selection automatically.
- **Set simulation speed** controls the time between automatic firing steps.
- In a timed model, the delay controller also determines how time is chosen before a future-enabled transition fires. See [Time and token selection](../time-and-tokens/).

![Random Simulation](/gui/simulation/random-sim.gif)

Automatic simulation appends each delay and firing to **Simulation History**. Use [Simulation history and traces](../history-and-traces/) to navigate the run or export it for later discussion.

{{% notice warning %}}
Random simulation samples selected executions. A run can reveal a useful behavior or modeling error, but it cannot establish that an unobserved behavior is impossible or that a property holds for every execution.
{{% /notice %}}
