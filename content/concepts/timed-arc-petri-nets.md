---
title: Timed-arc Petri nets
weight: 20
lastmod: 2026-08-29
---

{{% notice warning %}}
Expert review needed: this page summarizes the implementation-oriented semantics used by the current GUI. Please verify the formal definitions against the intended TAPAAL publication before treating this page as a specification.
{{% /notice %}}

A timed-arc Petri net adds real-time ages to tokens and time intervals to input arcs. A transition may consume a token only when the token's age belongs to the interval on the corresponding arc.

## Token ages

New tokens normally start with age 0. A delay increases the age of every token in the net by the same amount. The simulator displays token ages next to places when practical, and the full age is available from the token tooltip.

For example, an input interval `[2, 5)` accepts a token whose age is at least 2 and strictly less than 5. Square brackets include an endpoint; parentheses exclude it. `inf` can be used as an unbounded upper endpoint, as in `[2, inf)`.

The interval belongs to an input arc, not to the transition as a whole. A transition with several input arcs must have a suitable selection of tokens for every input arc at the same time.

## Place invariants

A place invariant limits how old a token may become while it remains in that place. Common examples are `<=5` and `<5`:

- `<=5` allows a token to reach age 5.
- `<5` requires the token to remain strictly younger than 5.

A time delay is allowed only when every token remains within its place invariant. This is why a net can have an enabled transition but still be unable to delay: a token may be approaching an invariant boundary, or an urgent transition may forbid further delay.

## Firing and transport

When a normal input token is consumed and a normal output token is produced, the output token is fresh and has age 0. A transport arc moves a token through a transition without resetting its age. Transport arcs are drawn as paired arcs and are useful when a token represents an item that is being routed while retaining its timing history.

Weighted arcs consume or produce multiple tokens in one firing. The transition is enabled only if the required number of eligible tokens exists.

## Urgent transitions

An urgent transition prevents time from advancing while it is enabled. Urgency does not choose which enabled transition fires; it only removes the option of delaying. If several urgent transitions are enabled, the model can still have several possible next firings.

For a complete walkthrough, open the [`intro-example.tapn`](https://download.tapaal.net/tapaal/resources/intro-example.tapn) model and compare the intervals, invariant, transport arcs, and urgent transition with the explanation included in the file.
