---
title: Components
weight: 60
lastmod: 2026-08-29
description: Organize larger models with components and shared places or transitions.
---

TAPAAL allows you to decompose a larger model into components. Components are connected through shared places and transitions, which are drawn with a hairline.

![Shared place and transition](/gui/editor/shared-pt.png)

A shared place or transition can be added to any number of components. This lets those components exchange tokens or synchronize through a common element.

## Create components

Create or copy a component from the **Components** section of the side menu:

- select **New** to create an empty component;
- select **Copy** to create a component based on the current component.

![Components](/gui/editor/components.png)

## Create shared elements

Use the **Shared places and transitions** section of the side menu. Select either a shared place or a shared transition from the drop-down menu, then select **New**.

To add an existing shared element to a component, add a place or transition, right-click it, choose **Edit**, check **Shared**, and select the shared element. You can also select **Make shared** to create one directly.

![Shared place](/gui/editor/shared-place.png)

## Enable or disable components

Remove the check mark in the **Components** section to disable a component. Disabled components are ignored during simulation and verification. This can help compare alternative implementations of part of a system.

To combine components into one, choose **Tools > Merge net components**. Save a copy first if you need to preserve the modular structure; see [Layout and components](/tools/layout-and-components/) for related tool behavior.
