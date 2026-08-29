---
title: Your first model
weight: 20
lastmod: 2026-08-29
---

# Your first model

## Open the example

The fastest way to see a complete TAPAAL model is to open the official [`intro-example.tapn`](https://download.tapaal.net/tapaal/resources/intro-example.tapn) file. You can also open it in the application through **File > Example nets > Timed-Arc Petri nets > intro-example**.

The model contains places, transitions, standard arcs, transport arcs, weighted arcs, token ages, a place invariant, an urgent transition, and a reachability query. The example file includes a plain-language explanation of the model and its intended query.

The basic objects are:

- A **place** is a circle that stores zero or more tokens.
- A **transition** is a rectangle that can fire when its input requirements are met.
- An **arc** connects places and transitions. Its interval controls which token ages are eligible in a timed model.
- A **marking** is the current distribution of tokens and their ages.

Read [Petri net concepts](/concepts/petri-nets/) for the untimed rules and [timed-arc semantics](/concepts/timed-arc-petri-nets/) for the timing rules.

## Simulate and verify

1. Select the **Simulation Mode** button in the toolbar, or choose **Simulator > Simulation Mode**.
2. Enabled transitions are highlighted. Fire one by right-clicking it, or select it in the Enabled Transitions widget and press **Fire**.
3. For a timed transition, use **Time delay** to advance time. A delay increases every token age; TAPAAL will not allow a delay that violates a place invariant.
4. Observe the **Simulation History** widget. It records delays and transition firings, and it can later display a verification trace.
5. Return to editor mode and open the query editor from the query pane. Create a reachability query for the `Target` place, such as:

   ```text
   EF Target >= 1
   ```

   `EF` asks whether some reachable marking has at least one token in `Target`.
6. Choose **Fastest trace** if you want TAPAAL to search for a fastest witness where the selected engine supports it. Choose **Some trace** for a concrete witness without requesting the fastest one.
7. Select **Save and verify**, or save the query and use **Tools > Verify query**.
8. If a trace is produced, open it in the simulator. Use the history controls or the left and right arrow keys to move through the states and inspect token ages and transition firings.

An existential query such as `EF Target >= 1` produces a witness when it is satisfied. For a universal query, a produced trace usually demonstrates a violation and is therefore a counterexample. Treat the result label and the trace together when diagnosing a model.

## Continue learning

The official [TAPAAL exercises](https://download.tapaal.net/tapaal/resources/tapaal-exercises.pdf) build on this example. They cover elevator timing, constants, parallel workflows, train crossings, and more advanced modeling. The [verification guide](/verification/) explains how to write and troubleshoot the queries used in those exercises.
