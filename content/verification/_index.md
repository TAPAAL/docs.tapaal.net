---
title: Verification
weight: 40
pre: "<b>4. </b>"
chapter: true
lastmod: 2026-08-29
---

Verification checks a query against all relevant behaviors of a model, rather than exploring one manually chosen simulation path. TAPAAL delegates this work to a selected verification engine and can show a witness or counterexample trace when the engine produces one.

{{% notice note %}}
This chapter is a draft reference checked against the TAPAAL GUI source on 2026-08-29. The query language and available options depend on the selected query category, model features, and engine.
{{% /notice %}}

- [Queries and syntax](queries/): construct properties and choose a logic.
- [Verification from the GUI](gui-workflow/): follow the query-dialog workflow from model to result.
- [Engines and options](engines/): select a backend, set bounds, and choose reductions and search behavior.
- [Results and traces](results/): interpret status messages, witnesses, counterexamples, and inconclusive results.

The quickest first verification is the reachability query in the [`intro-example.tapn`](https://download.tapaal.net/tapaal/resources/intro-example.tapn) example. Start with [Your first model](/start-here/first-model/) if you have not run it yet.
