---
title: Unfolding
weight: 30
lastmod: 2026-08-29
description: Expand colored or game-related models into an uncolored representation for analysis.
---

Choose **Tools > Unfold nets** to expand a colored or game-related model into an uncolored representation. Unfolding makes compact colored behavior available to engines that analyze the expanded net.

Depending on the model and release, the unfolding dialog can expose color partitioning, color fixpoint analysis, and symmetric-variable handling. The unfolded net can be much larger than the original, so inspect its size before verifying it.

Keep the original model. The unfolded net is an analysis artifact, and a trace on it may need to be mapped back to the original colored model when you explain the result.

{{% notice warning %}}
Expert review needed: confirm which game, colored, and engine combinations use explicit simulation, unfolding, or another translation in the target release.
{{% /notice %}}
