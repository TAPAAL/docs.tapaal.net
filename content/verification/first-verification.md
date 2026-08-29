---
title: First verification
weight: 5
lastmod: 2026-08-29
description: Run a first reachability check with the intro-example model and inspect its witness trace.
---

This short exercise takes a model from the canvas to a concrete verification result. It uses the official `intro-example.tapn` model so that the names in the example query match the supplied file.

## Open the example

Download [`intro-example.tapn`](https://download.tapaal.net/tapaal/resources/intro-example.tapn), or open it from **File > Example nets > Timed-Arc Petri nets > intro-example**. Save a copy before editing it.

The example includes a reachability query. Read the model's description and inspect the initial marking before running the query. If you are unfamiliar with the notation, review [Petri net concepts](/concepts/petri-nets/) and [timed-arc semantics](/concepts/timed-arc-petri-nets/) first.

## Run a reachability check

1. Open the query pane and select the example's reachability query, or create a new query.
2. Give the query a descriptive name, such as `Target reachable`.
3. Enter a property such as:

   ```text
   EF Target >= 1
   ```

   Here, `EF` asks whether at least one reachable execution can reach a marking with one or more tokens in `Target`.
4. Select **Some trace** while learning. A witness makes the result easier to inspect.
5. Select **Save and verify**, or save the query and choose **Tools > Verify query**.
6. Read the result status and diagnostics. If the query is satisfied, open the generated witness in the simulator and step through it in **Simulation History**.

The exact engine and options available depend on the model and installed verifier. If the query cannot run, see [Verification from the GUI](../gui-workflow/) and [Engines and options](../engines/).

## Inspect the witness

At each step, check the marking, token ages, transition firings, and time delays. A witness demonstrates one execution that satisfies an existential query; it is not a claim that every execution behaves that way.

Next, try changing the target place or comparison and predict the result before verifying. A failed universal property normally produces a counterexample trace. [Results and traces](../results/) explains how to distinguish witnesses, counterexamples, and incomplete runs.

{{% notice note %}}
This guided path is a draft checked against the TAPAAL GUI source and public documentation on 2026-08-29. Menu labels and the example's contents may change between releases.
{{% /notice %}}
