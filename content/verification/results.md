---
title: Results and traces
weight: 30
lastmod: 2026-08-29
---

# Results and traces

## Read the result first

The result belongs to the exact query and configuration that was run. Record the query name, formula, engine, extra-token capacity, reduction settings, and trace option before comparing runs.

- **Satisfied** means the engine established the property requested by the query.
- **Not satisfied** means the engine established that the property does not hold for the analyzed model and settings.
- **Inconclusive, aborted, or failed** means that the run did not establish either truth value. Check the diagnostic text, engine path, bounds, and model/query support before interpreting it as a model result.

The meaning of a trace depends on the path quantifier:

- For an existential reachability query, a trace is normally a witness showing how to reach the requested state.
- For a universal safety query, a trace is normally a counterexample showing where the property fails.
- For deadlock queries, inspect the final marking and whether time can still advance.
- For SMC, sampled traces illustrate runs; they do not by themselves prove an exhaustive property.

## Inspect a trace

When a trace is available, TAPAAL can open it in a simulator tab. The Simulation History records time delays and transition firings. Use the history list, the step-back and step-forward controls, or the left and right arrow keys to inspect each marking.

At every step, check:

1. which places contain tokens;
2. the age of tokens used by the next firing;
3. the interval on each consumed input arc;
4. any invariant that limits further delay;
5. whether an urgent transition removes the option to delay;
6. whether the final marking actually explains the query result.

You can export the current trace from the simulation controls and import a trace later. For colored models, TAPAAL may show a trace on an unfolded net or map the result back to the original model.

## Common failure patterns

### No engine is configured

Open **Tools > Engine selection** and confirm that the selected executable exists and reports a version. For UPPAAL, select the `verifyta` executable rather than the UPPAAL GUI.

### The query is rejected

Check that place and transition names match exactly, parentheses are balanced, constants are declared, and the query category matches the syntax. Remove advanced operators until a simple query such as `EF Target >= 1` parses.

### The engine does not support a feature

Special arcs, urgent or uncontrollable transitions, colored nets, stochastic settings, and some temporal operators are not supported by every backend. Select a compatible engine or simplify the model/query for a diagnostic run.

### The analysis is too large or unbounded

Reduce the model to a small scenario, verify boundedness, increase the extra-token capacity only when justified, and try a different reduction or search strategy. A timeout is not evidence that the property is true or false.

### The trace is missing

Select **Some trace** or **Fastest trace** before verification. Some engines or query forms cannot produce a trace, and selecting **No trace** explicitly suppresses trace generation.
