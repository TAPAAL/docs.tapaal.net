---
title: Engines and options
weight: 20
lastmod: 2026-08-29
---

# Engines and options

TAPAAL can invoke several verification backends. The best choice depends on whether the model is untimed, timed, colored, stochastic, or uses special arcs and transitions.

## Select an engine

Open **Tools > Engine selection** to view the configured verification engines and their versions. Use the file picker to set an executable path, or reset a path to return to the default configuration.

| Backend | Typical use |
| --- | --- |
| `verifytapn` | Native continuous-time timed-arc Petri-net verification. |
| `verifydtapn` | Discrete-time timed-arc Petri-net verification. |
| `verifypn` | Untimed place/transition-net verification. |
| `verifyta` | UPPAAL verification after TAPAAL translates the model to timed automata. |

These are capabilities, not a promise that every query works with every backend. TAPAAL's query dialog uses engine support information to enable or disable options such as inhibitor arcs, urgent transitions, deadlock checks, fastest traces, and colored-net reductions.

For UPPAAL integration, install UPPAAL separately and point TAPAAL at its `verifyta` executable. The [official download page](https://www.tapaal.net/download/) describes this setup.

## Capacity and boundedness

For finite-state analysis, set **Extra tokens** in the query dialog to the capacity needed by the analysis. Use **Check boundedness** to test whether the capacity is sufficient. If the net needs more tokens than the selected bound, the reported result may not represent the original unbounded model.

## Reduction and search options

The query dialog exposes engine-dependent options, including:

- symmetry and discrete-inclusion reductions;
- time darts, PTrie, GCD, and stubborn/partial-order reduction;
- over-approximation and structural or colored structural reduction;
- siphon-trap analysis for deadlock queries;
- query reduction and state-equation analysis;
- trace abstraction refinement;
- Tarjan or nested-DFS algorithms and explicit search;
- breadth-first, depth-first, random, or heuristic search.

Start with the defaults. Change one option at a time when diagnosing performance or support problems, and record the chosen options with the result. Some reductions apply only to particular query forms; TAPAAL disables incompatible combinations.

## Trace options

- **No trace** minimizes trace-generation work when you only need a result.
- **Some trace** asks for a concrete trace whenever one is applicable.
- **Fastest trace** asks for a fastest concrete trace where supported, and can make verification slower.

Choose **Some trace** while developing a model. A trace often explains a surprising result more quickly than reading the formula again.
