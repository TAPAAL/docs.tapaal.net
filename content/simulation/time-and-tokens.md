---
title: Time and token selection
weight: 30
lastmod: 2026-08-29
description: Advance time, choose a delay mode, inspect token ages, and control which tokens a firing consumes.
---

Timed models let you perform time-delay actions as well as fire transitions. A delay increases the age of every token, subject to the place invariants and the enabled urgent transitions.

## Advance time

Use the **Time delay** control in the **Simulation Control** widget. Enter a nonnegative delay in the text field and select **Time delay**, or use the slider. The `-` and `+` buttons change the slider range.

![Time Delay](/gui/simulation/time-delay.png)

After a delay, TAPAAL updates every token age and records the delay in **Simulation History**. With one or two tokens in a place, their ages are shown directly to one decimal place. Hover over a place to inspect all token ages and full precision.

Transitions that are enabled immediately are highlighted in red. When **Display future-enabled transitions** is enabled, transitions that can become enabled after a delay are highlighted in yellow.

![Enabled Transitions Timed](/gui/simulation/enabled-transitions-timed.png)

Selecting a future-enabled transition can perform the required delay and then fire the transition. TAPAAL records both actions in the history.

![Fire future-enabled transition](/gui/simulation/d-enabled.gif)

## Choose a delay mode

Open **Settings** in the **Enabled Transitions** widget to configure the delay controller. TAPAAL provides these modes:

- **Shortest delay** uses the minimum delay needed to enable the selected transition. This is the default.
- **Random delay** chooses a delay from the transition's future-enabled interval. For an unbounded upper interval, the simulator samples a delay using its random distribution.
- **Manual delay** opens a dialog where you choose a delay from the available interval.

The delay granularity controls the precision used by random delays and the increment used after a strict lower bound. For example, with granularity `0.01`, the first representable value after `(5, inf)` is `5.01`.

![Delay mode](/gui/simulation/delay-mode.png)

## Choose tokens for a firing

When several tokens satisfy an input arc's interval, choose the **Token selection** mode in the **Simulation Control** widget:

- **Random** selects eligible tokens at random;
- **Oldest** selects the oldest eligible tokens;
- **Youngest** selects the youngest eligible tokens;
- **Manual** opens a dialog so you can select the tokens.

The manual dialog may not appear when all choices produce the same resulting marking or when only one choice is available.

![Token Selection](/gui/simulation/token-selection.png)

![Select tokens](/gui/simulation/select-token.gif)

For the underlying interval and invariant rules, see [Timed-arc Petri nets](/concepts/timed-arc-petri-nets/). For automatic firing, see [Automatic random simulation](../automatic-simulation/).
