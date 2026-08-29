---
title: Engines and options
weight: 20
lastmod: 2026-08-29
---

TAPAAL can invoke several verification backends. The best choice depends on whether the model is untimed, timed, colored, stochastic, or uses special arcs and transitions. TAPAAL's GUI checks the selected engine's advertised model and query support and may hide or disable incompatible controls.

## Select an engine

Open **Tools > Engine selection** to view the configured verification engines and their versions. Use the file picker to set an executable path, or reset a path to return to the default configuration.

| Backend | Typical use |
| --- | --- |
| `verifytapn` | Native continuous-time timed-arc Petri-net verification. |
| `verifydtapn` | Discrete-time timed-arc Petri-net verification. |
| `verifypn` | Untimed place/transition-net verification. |
| `verifyta` | UPPAAL verification after TAPAAL translates the model to timed automata. |

The repositories describe the engines at different levels of detail. VerifyTAPN is the native standalone timed-arc engine. VerifyDTAPN explicitly documents discrete semantics and a core set of EF, AG, EG, and AF queries, with weighted arcs and closed intervals. VerifyPN's public README describes an untimed XML reachability engine. The official TAPAAL feature page describes the untimed verification family more broadly, so treat the exact supported subset as release-dependent and use the GUI's support checks and the installed engine's help output as the final authority.

The optional `verifyta` route uses UPPAAL rather than one of TAPAAL's native engines. It can be useful when the model or analysis benefits from the UPPAAL translation, but translation-specific behavior and licensing are additional parts of the setup.

These are capabilities, not a promise that every query works with every backend. TAPAAL's query dialog uses engine support information to enable or disable options such as inhibitor arcs, urgent transitions, deadlock checks, fastest traces, and colored-net reductions.

For UPPAAL integration, install UPPAAL separately and point TAPAAL at its `verifyta` executable. The [official download page](https://www.tapaal.net/download/) describes this setup.

## Capacity and boundedness

For finite-state analysis, set **Extra tokens** in the query dialog to the capacity needed by the analysis. Use **Check boundedness** to test whether the capacity is sufficient. If the net needs more tokens than the selected bound, the reported result may not represent the original unbounded model.

Do not increase the capacity automatically when an analysis fails. A larger capacity can make the state space much larger, while a smaller capacity can change what the result means. First determine whether the net is bounded, whether the selected engine supports the required analysis, and whether an abstraction or underapproximation is being reported.

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

## Public engine references

- [VerifyTAPN](https://github.com/TAPAAL/verifytapn) — native timed-arc verification engine and build instructions.
- [VerifyDTAPN](https://github.com/TAPAAL/verifydtapn) — discrete-time semantics and its documented query/interval subset.
- [VerifyPN](https://github.com/TAPAAL/verifypn) — untimed Petri-net verification engine.
- [TAPAAL download page](https://www.tapaal.net/download/) — released verifier packages and optional UPPAAL integration.

{{% notice warning %}}
Expert review needed: backend support changes over time, and the public engine READMEs do not form a single versioned support matrix. Check the target release and test representative queries before turning this page's backend descriptions into a compatibility guarantee.
{{% /notice %}}
