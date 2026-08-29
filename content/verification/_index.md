---
title: Verification
weight: 50
pre: "<b>5. </b>"
lastmod: 2026-08-29
disableToc: true
---

Verification checks a property against the behaviors represented by a model, rather than exploring only one manually chosen simulation path. In TAPAAL, you express the property as a query, choose an analysis engine and options, run the query, and then inspect the result and any generated trace.

This is one of TAPAAL's central workflows. The available query families include reachability, CTL, LTL, HyperLTL, and stochastic model checking; an optional UPPAAL backend is also available. The exact subset still depends on the model, query category, engine, and release.

{{% notice note %}}
This chapter is a draft reference checked against the TAPAAL GUI source on 2026-08-29. The query language and available options depend on the selected query category, model features, and engine.
{{% /notice %}}

{{% children style="li" description="true" %}}

For a guided first check, start with [First verification](first-verification/). For the complete workflow, continue to [Verification from the GUI](gui-workflow/), then use the reference pages as needed.
