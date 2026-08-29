---
title: Model configuration
weight: 50
lastmod: 2026-08-29
description: Enable modeling features and edit markings, timing, game properties, arcs, and colors.
---

The feature indicator at the bottom of the main window shows whether the current model uses **Timed**, **Game**, **Color**, and **Stochastic** features. Select a feature's **Yes** or **No** value to change the model configuration. TAPAAL may ask for confirmation before removing a feature because dependent elements can be changed or removed.

Start with the smallest feature set that expresses the model. Enable **Timed** when token ages or deadlines matter, and enable **Color** when many similar tokens would otherwise require duplicated structure.

{{% notice warning %}}
Expert review needed: these are implementation-guided editor instructions. Verify the formal semantics and feature interactions against the target TAPAAL release before using them as a teaching specification.
{{% /notice %}}

## Places

Double-click a place, or right-click it and choose **Edit**, to change its name and initial marking. In a timed model, the dialog also lets you set the place invariant. In a colored model, choose the place's color type and define its initial colored tokens.

Keep names short and unique within their component. Use the same names in queries; the query editor can qualify a place with its component or template when names are duplicated.

## Transitions

Edit a transition to change its name and, when enabled, its timing or game properties. The drawing toolbar provides separate tools for urgent, uncontrollable, and uncontrollable-urgent transitions.

An urgent transition prevents time from advancing while it is enabled. An uncontrollable transition represents an action that a controller cannot choose or prevent in a game model. Use these types only when they reflect the system being modeled.

## Standard and timed arcs

Create a standard arc between a place and a transition, then edit it to set its weight. In a timed model, edit an input arc's time interval to restrict which token ages can be consumed. The default unrestricted interval is `[0, inf)`.

Square brackets include an endpoint; parentheses exclude it. For example, `[2, 5)` accepts ages from 2 up to, but not including, 5. Declared constants can be used in intervals.

## Transport and inhibitor arcs

Use the **Transport Arc** tool to draw a paired route through a transition. TAPAAL keeps the input and output sides together; edit the pair when changing its weight, interval, or colored expression.

Use the **Inhibitor Arc** tool to add a negative enabling condition. Edit its weight to control how many source tokens prevent the transition from firing. If an arc cannot be drawn, read the validation message and check the active feature combination.

## Colored expressions

When **Color** is enabled, open **Tools > Show color types/variables/constants** to inspect the global definitions. Assign a color type to a place, then use arc expressions to describe the colors consumed and produced by a firing. Declare variables with a color type before using them in expressions.

For a first colored model, use one of the colored examples under **File > Example nets**. Keep the model small while learning how bindings affect enabled transitions. Use [Unfolding](/tools/unfolding/) when you need to inspect the corresponding uncolored representation.

For the underlying notation, see [Timed-arc Petri nets](/concepts/timed-arc-petri-nets/) and [Modeling features](/concepts/modeling-features/).
