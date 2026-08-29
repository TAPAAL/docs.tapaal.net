---
title: Queries and syntax
weight: 20
lastmod: 2026-08-29
description: Construct reachability, safety, temporal, and stochastic queries in the query pane.
---

{{% notice warning %}}
Expert review needed: the examples and operator summaries are intended as user-facing guidance, not as the final formal logic specification. Confirm category-specific grammar and semantics before release.
{{% /notice %}}

## Create a query

Use the query pane to create a query, edit the selected query, remove a query, change its order, or verify it. The [GUI workflow](../gui-workflow/) page gives the complete click-by-click path. In the query dialog:

1. Give the query a descriptive name.
2. Choose a query category: the default CTL-style category, LTL, HyperLTL, or SMC where supported by the model and engine.
3. Build the property with the query controls, or enter the supported textual form.
4. Choose the extra-token capacity, engine options, and trace option.
5. Select **Save and verify**, or save the query and choose **Tools > Verify query**.

The controls hide or disable combinations that the selected engine cannot handle. If a formula is rejected, check the category first, then check names, operators, parentheses, and the selected engine.

## Basic state properties

The default query language compares place expressions with constants or arithmetic expressions. Examples:

```text
EF Target >= 1
AG Buffer <= 1
EF (Ready >= 1 and Busy = 0)
EF deadlock
```

These examples use places named `Target`, `Buffer`, `Ready`, and `Busy`:

- `>=`, `<=`, `=`, `==`, `>`, `<`, and `!=` compare expressions.
- `and`, `or`, and `not` combine properties. `&&`, `||`, and `!` are accepted aliases where the category supports them.
- Arithmetic expressions can use `+`, `-`, and `*`.
- `true`, `false`, and `deadlock` are built-in predicates.
- A place can be qualified with a component/template name, such as `Server.Queue`.
- In a colored query, a place can be qualified with a color, such as `Queue.red`, subject to the color syntax used by the model.

Use parentheses whenever a property combines several comparisons. Names are case-sensitive and must match the model.

## CTL-style path operators

The default category supports the following common reachability and safety forms. TAPAAL also exposes the long-form temporal operators through the query editor for categories and engines that support them.

| Form | Meaning |
| --- | --- |
| `EF p` or `E<> p` | Some reachable path eventually reaches a marking satisfying `p`. |
| `EG p` or `E[] p` | There is a path on which `p` remains true. |
| `AF p` or `A<> p` | Every maximal path eventually reaches a marking satisfying `p`. |
| `AG p` or `A[] p` | Every reachable marking satisfies `p`. |
| `E`, `A` | Existential and universal path quantifiers used by the structured query editor. |
| `X`, `F`, `G`, `U` | Next, eventually, globally, and until operators exposed for supported temporal logics. |

For example, `AG Buffer <= 1` is a safety property: no reachable marking may contain more than one token in `Buffer`. `EF Target >= 1` is a reachability property: at least one execution can reach a marking with a token in `Target`.

## Boundedness and deadlocks

The query dialog includes an **extra tokens** setting. It is the capacity used by the chosen analysis. Use **Check boundedness** to determine whether the selected capacity is sufficient for an exact analysis of the net. A capacity that is too small can make the result inconclusive or prevent the intended analysis.

The `deadlock` predicate is true in a marking where no transition can become enabled after a permitted delay. Use `EF deadlock` to look for a reachable deadlock, or use a universal property such as `AG not (deadlock)` when the chosen engine supports that form and you want to check deadlock freedom.

## Logic-specific notes

- **CTL** branches over paths and is a natural starting point for reachability and safety.
- **LTL** describes behavior along paths with operators such as `G`, `F`, `X`, and `U`.
- **HyperLTL** compares multiple paths and uses trace names and path quantification.
- **SMC** estimates probabilities or tests probabilistic hypotheses by sampling runs; it is not an exhaustive proof of all behaviors.

Not every logic is available for every model or engine. If the query editor removes an operator or the engine rejects a query, consult [Engines and options](../engines/) and simplify the property to isolate the unsupported feature.
