---
title: Ordinary Petri nets
weight: 10
lastmod: 2026-08-29
---

# Ordinary Petri nets

An ordinary (untimed, uncolored) Petri net has places, transitions, arcs, and tokens. It represents the possible states and discrete changes of a system.

## The notation

- **Places** are circles. They hold tokens.
- **Transitions** are rectangles. They represent events or actions.
- **Input arcs** connect places to transitions.
- **Output arcs** connect transitions to places.
- A **marking** is the current number of tokens in every place.

In an ordinary net, tokens have no age. A transition is enabled when every input place contains enough tokens for its incoming arcs. Firing consumes the required input tokens and produces tokens on the output places. If an arc has weight 3, firing consumes or produces three tokens along that arc.

The marking after a firing is the next state of the model. A model can have several enabled transitions, so it can branch into several possible behaviors. A transition can also be disabled because one of its input places lacks enough tokens.

## Modeling advice

Use places for conditions, resources, or locations, and transitions for events that change those conditions. Keep the meaning of a token explicit: for example, a token in `Ready` might represent an available worker, while a token in `Waiting` might represent a request.

Start with an untimed model when you are checking control flow. Add timing, colors, or game behavior only when the property you want to study needs them. This keeps the first query and its result easier to interpret.

TAPAAL extends this notation with token ages, arc intervals, invariants, and optional arc and transition types. Those extensions are described in the [timed-arc semantics](../timed-arc-petri-nets/) and [modeling features](../modeling-features/) pages.
