---
title: Components
weight: 60
lastmod: 2026-08-29
description: Organize larger models with components and shared places or transitions.
---

TAPAAL allows you to decompose a larger model into components. Components are connected through shared places and transitions, which are drawn with a hairline.

![Shared place and transition](/gui/editor/shared-pt.png)

A shared place or transition can be added to any number of components. This lets those components exchange tokens or synchronize through a common element.

{{% notice warning %}}
**TODO — screenshot:** Replace the current shared-element image with an annotated view that clearly distinguishes a local place or transition from a shared one. Include the component names and explain the hairline convention.
{{% /notice %}}

## Create components

Create or copy a component from the **Components** section of the side menu:

- select **New** to create an empty component;
- select **Copy** to create a component based on the current component.

![Components](/gui/editor/components.png)

{{% notice warning %}}
**TODO — GIF:** Add a short recording of creating a component, copying a component, adding a shared place, and attaching that shared place to a second component. Include the exact side-panel controls and the current release number.
{{% /notice %}}

## Create shared elements

Use the **Shared places and transitions** section of the side menu. Select either a shared place or a shared transition from the drop-down menu, then select **New**.

To add an existing shared element to a component, add a place or transition, right-click it, choose **Edit**, check **Shared**, and select the shared element. You can also select **Make shared** to create one directly.

![Shared place](/gui/editor/shared-place.png)

{{% notice warning %}}
**TODO — worked example:** Add a small two-component model that communicates through a shared place or transition. Show its initial marking, one simulation step, and the corresponding verification interpretation.
{{% /notice %}}

## Enable or disable components

Remove the check mark in the **Components** section to disable a component. Disabled components are ignored during simulation and verification. This can help compare alternative implementations of part of a system.

To combine components into one, choose **Tools > Merge net components**. Save a copy first if you need to preserve the modular structure; see [Layout and components](/tools/layout-and-components/) for related tool behavior.

{{% notice warning %}}
**TODO — content/review:** Document the consequences of disabling a component and merging components for simulation, queries, traces, and exported models. Confirm whether shared elements, names, and layout are preserved in the current release.
{{% /notice %}}
