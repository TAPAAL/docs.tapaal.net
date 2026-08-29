---
title: Import and export
weight: 60
lastmod: 2026-08-29
description: Move models, queries, images, traces, and batch jobs between TAPAAL and other tools.
---

The GUI provides these common file actions:

- import an untimed PNML net;
- import SUMO queries from plain-text `.txt` files;
- import MCC queries from `.xml` files;
- export a net as PNG, PostScript, TikZ, or PNML;
- export queries as XML;
- export and import simulation traces;
- export a batch of model and query files for command-line use.

Confirm the target format before exporting. Untimed PNML cannot represent every timed, colored, game, or stochastic feature, so inspect the exported file when moving a model between tools.

Keep the original `.tapn` model when exporting to a less expressive format. Exported artifacts may omit features that the target format cannot represent.
