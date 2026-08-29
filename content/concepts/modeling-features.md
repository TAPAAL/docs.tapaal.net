---
title: Modeling features
weight: 30
lastmod: 2026-08-29
---

{{% notice warning %}}
Expert review needed: the feature summaries below are practical guidance derived from the current GUI and model classes. They should be checked against the authoritative formal semantics before release.
{{% /notice %}}

TAPAAL can be used as a simple Petri-net editor or as a modeling environment with timing, modularity, colors, games, and stochastic behavior. Enable only the features needed by the model; the available editor controls and verification engines depend on the selected features.

## Inhibitor arcs

An inhibitor arc expresses a negative enabling condition. It prevents a transition from firing when its source place contains the required number of matching tokens. This is useful for conditions such as “fire only while the buffer is not full” or “fire only when no request is present.” Inhibitor arcs are timed-model features in TAPAAL, so check the selected engine's support before verifying a model that uses them.

## Transport arcs

Transport arcs connect a source place to a transition and that transition to a destination place as one paired connection. The transported token keeps its age. Use them when an item changes location without becoming a new token.

## Components and shared elements

Large models can be split into components. A shared place or shared transition appears in more than one component and connects their behavior. TAPAAL draws shared elements with a hairline. Disabling a component removes it from simulation and verification, which is useful for comparing alternative implementations.

See [Components in the editor](/gui/editor/#components) for the creation workflow. **Tools > Merge net components** creates a single component containing the selected model's elements.

## Colors and variables

Colored nets attach a color to tokens and use color types, variables, and expressions to describe which tokens arcs consume or produce. Colors can compactly represent families of similar resources or data values. Verification commonly unfolds a colored model into an equivalent uncolored representation; the unfolded net can be substantially larger than the original.

## Games

Game models distinguish controllable and uncontrollable behavior. An uncontrollable transition represents an action that the controller cannot prevent. Game queries reason about the choices of the participating players rather than only asking whether one unconstrained execution exists. The exact query and engine support depends on the game features enabled in the net.

## Stochastic behavior

Stochastic models attach probabilistic behavior to choices or delays and are analyzed by statistical model checking. TAPAAL's query editor provides quantitative estimation, qualitative hypothesis testing, and trace generation modes for supported stochastic models. Results are estimates with confidence and error settings, not the same kind of exhaustive proof returned by a finite-state reachability check.
