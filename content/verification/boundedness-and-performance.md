---
title: Boundedness and performance
weight: 50
lastmod: 2026-08-29
description: Understand extra-token capacity, boundedness checks, reductions, approximations, and timeouts.
---

Verification can become expensive when a model has many reachable markings, unbounded token production, detailed timing, or a large colored unfolding. Capacity and reduction settings affect both runtime and what a result establishes.

{{% notice warning %}}
Expert review needed: the exact guarantees of boundedness checks, approximations, reductions, and engine-specific limits must be confirmed for the target release before publication.
{{% /notice %}}

## Extra-token capacity

The query dialog's **Extra tokens** setting provides a finite capacity for the analysis. A capacity that is too small can exclude reachable behavior or make the analysis inconclusive. A larger capacity can make the state space grow substantially.

Do not treat a successful run at an arbitrary capacity as an exact result for an unbounded model. Record the capacity with the query and result, and use **Check boundedness** when you need evidence that the selected capacity is sufficient.

## A practical tuning order

When verification is slow or fails, change one factor at a time:

1. Run a small reachability or safety query to confirm that the model and engine are configured correctly.
2. Check boundedness and inspect the number of tokens that the model can produce.
3. Request **No trace** if you only need a status and do not need a witness or counterexample.
4. Keep the default reductions and search strategy for a baseline run.
5. Try a compatible reduction or search option, recording the change and its effect.
6. Reduce the model to the smallest scenario that still demonstrates the behavior.
7. Increase capacity only when the model or boundedness analysis justifies it.

## Reductions and approximations

Depending on the query category, model features, and engine, TAPAAL may expose symmetry, discrete-inclusion, time-dart, GCD, stubborn or partial-order, structural, colored-structural, query, and trace-abstraction reductions. Some options are mutually exclusive or apply only to particular query forms; the GUI disables combinations it cannot use.

An underapproximation can be useful for finding a behavior in a restricted state space, but failure to find a behavior in an underapproximation does not establish that the behavior is impossible in the full model. Report the approximation mode with the result.

## Timeouts and memory limits

A timeout, memory exhaustion, aborted run, or unsupported-feature message is an analysis outcome, not a proof that the property holds or fails. Keep the diagnostic output, then check the [engine configuration](../engines/), capacity, reductions, and trace setting.

## What to record

For a result that needs to be reproduced, save:

- the model and complete query;
- TAPAAL and engine versions;
- extra-token capacity and boundedness result;
- reduction, search, unfolding, and trace settings;
- timeout, memory, and parallelism settings where applicable;
- the final status, diagnostics, and trace.

See [Results and traces](../results/) for guidance on interpreting the status and evidence.
