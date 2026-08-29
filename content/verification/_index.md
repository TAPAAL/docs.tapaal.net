---
title: Verification
weight: 40
pre: "<b>4. </b>"
chapter: true
lastmod: 2026-08-29
---

Verification checks a property against the behaviors represented by a model, rather than exploring only one manually chosen simulation path. In TAPAAL, you express the property as a query, choose an analysis engine and options, run the query, and then inspect the result and any generated trace.

This is one of TAPAAL's central workflows. The official feature overview lists reachability analysis, CTL, LTL, and HyperLTL verification, along with stochastic model checking and an optional UPPAAL backend. The available subset still depends on the model, query category, engine, and release.

{{% notice note %}}
This chapter is a draft reference checked against the TAPAAL GUI source on 2026-08-29. The query language and available options depend on the selected query category, model features, and engine.
{{% /notice %}}

- [Queries and syntax](queries/): construct properties and choose a logic.
- [Verification from the GUI](gui-workflow/): follow the query-dialog workflow from model to result.
- [Engines and options](engines/): select a backend, set bounds, and choose reductions and search behavior.
- [Results and traces](results/): interpret status messages, witnesses, counterexamples, and inconclusive results.

## What question do you want to answer?

| Question | A useful first query or workflow |
| --- | --- |
| Can the model reach a marking? | Use a reachability query such as `EF Target >= 1`. |
| Can a place exceed a limit? | Use a safety query such as `AG Buffer <= 1`. |
| Can the model deadlock? | Use `EF deadlock`, then inspect the final marking and the trace. |
| Is the model deadlock-free? | Try `AG not (deadlock)` when the selected category and engine support it. |
| Does every execution eventually do something? | Use a universal eventuality query such as `AF Done >= 1`; confirm the intended fairness and maximal-path semantics with an expert. |
| How likely is an outcome? | Use stochastic model checking (SMC) with explicit time, step, confidence, and precision settings. |
| Do several executions satisfy a relationship? | Use LTL or HyperLTL when the property concerns paths rather than only individual markings. |

## The verification loop

The same loop works for a small classroom model and a larger research model:

1. **Prepare the model.** Save it, check its features, and use simulation to catch obvious modeling mistakes.
2. **Write one focused query.** Start with a simple reachability or safety property whose expected result you can explain.
3. **Select the engine and capacity.** Choose a backend that supports the model and query. If a finite extra-token capacity is being used, check whether it is sufficient.
4. **Request a trace while developing.** A witness or counterexample is often the quickest way to understand an unexpected result.
5. **Verify and read the status.** A timeout, aborted run, unsupported feature, or inconclusive approximation is not a proof that the property holds.
6. **Inspect and record the evidence.** Keep the formula, engine, capacity, options, result, and trace together when the result will be reviewed or reproduced.

## What verification does—and does not—establish

The result applies to the exact model, query, engine, bounds, and reduction settings used for that run. A successful finite-state analysis can establish the requested property for the analyzed state space; a bounded approximation or stochastic estimate needs to be reported as such. In particular, simulation is useful for exploration but does not replace verification.

TAPAAL also supports analysis of unbounded nets through techniques described by the project, including automatic boundedness checks and underapproximation. Because the strength and limitations of these techniques are query- and engine-dependent, treat the result status and diagnostic text as part of the result rather than relying on the headline alone.

{{% notice warning %}}
Expert review needed: the table above is an orientation guide, not a formal semantics specification. Confirm the exact temporal, timed, boundedness, reduction, and stochastic claims against the target TAPAAL release before publishing this chapter as normative reference.
{{% /notice %}}

## Public references

- [TAPAAL feature overview](https://www.tapaal.net/features/) — supported verification families, model extensions, boundedness notes, and the UPPAAL backend.
- [TAPAAL project page](https://www.tapaal.net/) — high-level description of timed-arc Petri-net verification and the available engines.
- [TAPAAL GUI source](https://github.com/TAPAAL/tapaal-gui) — query dialog, engine selection, trace options, and result handling used by the GUI.
- [VerifyTAPN](https://github.com/TAPAAL/verifytapn), [VerifyDTAPN](https://github.com/TAPAAL/verifydtapn), and [VerifyPN](https://github.com/TAPAAL/verifypn) — public standalone engine repositories.

The quickest first verification is the reachability query in the [`intro-example.tapn`](https://download.tapaal.net/tapaal/resources/intro-example.tapn) example. Start with [Your first model](/start-here/first-model/) if you have not run it yet.
