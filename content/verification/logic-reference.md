---
title: Logic reference
weight: 30
lastmod: 2026-08-29
description: Compare CTL, LTL, HyperLTL, and SMC query categories and their common operators.
---

TAPAAL supports several query categories. Choose the category that matches the question you want to ask, then use the query editor and the engine support checks to construct the formula. The summaries below are an orientation guide; they are not a replacement for the formal semantics of the selected model and engine.

{{% notice warning %}}
Expert review needed: verify the grammar, precedence, path semantics, and feature restrictions against the target TAPAAL release before using this page as a normative language reference.
{{% /notice %}}

## Choose a query category

| Category | Best suited to | Typical starting point |
| --- | --- | --- |
| CTL-style queries | Reachability, safety, and branching-time questions | `EF Target >= 1` or `AG Buffer <= 1` |
| LTL | Properties of individual executions over time | A formula using `G`, `F`, `X`, or `U` |
| HyperLTL | Relationships between multiple executions | A formula with path quantification and trace identifiers |
| SMC | Probability estimates, hypothesis tests, and sampled traces | A stochastic query with explicit bounds and confidence settings |

The query category, model features, and selected engine jointly determine which operators are available. If an operator is rejected, confirm the category before changing the formula.

## State expressions

The default query language can compare place expressions with constants or arithmetic expressions. Common operators include:

- comparisons: `=`, `==`, `!=`, `<`, `<=`, `>`, and `>=`;
- arithmetic: `+`, `-`, and `*`;
- Boolean operators: `and`, `or`, and `not`, with `&&`, `||`, and `!` accepted in supported forms;
- built-in predicates: `true`, `false`, and `deadlock`.

For example:

```text
EF (Ready >= 1 and Busy = 0)
AG Buffer <= 1
```

Use parentheses when combining properties. Place and component names must match the model, including capitalization. Colored models may qualify a place with a color, subject to the color syntax used by that model.

## CTL-style operators

| Form | Use |
| --- | --- |
| `EF p` or `E<> p` | Ask whether some reachable path eventually reaches a state satisfying `p`. |
| `EG p` or `E[] p` | Ask whether a path exists on which `p` remains true. |
| `AF p` or `A<> p` | Ask whether every maximal path eventually reaches a state satisfying `p`. |
| `AG p` or `A[] p` | Ask whether `p` holds in every reachable state. |
| `EX p` | Ask whether some next state satisfies `p`. |
| `E (p U q)` or `A (p U q)` | Use an until property with existential or universal path quantification. |

For example, `EF Target >= 1` is a reachability property, while `AG Buffer <= 1` is a safety property. `EF deadlock` searches for a reachable deadlock. A deadlock-free query can be written as `AG not (deadlock)` when the selected category and engine support that form.

## LTL

LTL describes the behavior of one path using temporal operators such as:

- `G p`: `p` holds globally along the path;
- `F p`: `p` eventually holds;
- `X p`: `p` holds in the next state;
- `p U q`: `p` holds until `q` holds.

The TAPAAL query parser expects an outer path quantifier such as `A` or `E` for LTL formulas. For example:

```text
A G (Buffer <= 1)
```

Use the query editor to insert operators and parentheses rather than relying on precedence from memory.

## HyperLTL

HyperLTL is intended for properties that compare multiple executions, such as information-flow or observational relationships. Its syntax adds path quantification and trace identifiers to the temporal formula. Use the examples shipped with the target TAPAAL release and the query editor when constructing one; small differences in trace scoping can change the meaning of the property.

## Stochastic model checking

SMC estimates behavior by sampling executions. The GUI supports quantitative estimation, qualitative hypothesis testing, and trace generation, with settings for bounds, precision, confidence, error thresholds, and random seeds. See [Stochastic model checking](../stochastic-model-checking/) for how to report these results.

## Related pages

- [Queries and syntax](../queries/) — query construction and common expressions.
- [Verification from the GUI](../gui-workflow/) — the complete query-dialog workflow.
- [Engines and options](../engines/) — compatibility, bounds, reductions, and traces.
