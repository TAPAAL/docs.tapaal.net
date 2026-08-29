---
title: Workflow analysis
weight: 10
lastmod: 2026-08-29
description: Analyze workflow-net structure for soundness, deadlocks, and timing-related problems.
---

Choose **Tools > Workflow analysis** to analyze the current net as a timed-arc workflow net (TAWFN). Use this when the model has a clear workflow structure with an initial state, task flow, and final state.

Workflow analysis is a specialized analysis. Confirm that the model satisfies the assumptions of a workflow net before interpreting the report. Depending on the release and model, the analysis can check normal and strong soundness, provide debugging information, and compute shortest or longest execution times.

Use the report to decide which part of the model or which verification query to investigate. Workflow analysis is not a replacement for ordinary reachability, safety, or liveness queries.

{{% notice warning %}}
Expert review needed: exact soundness conditions, timing results, and supported model features should be confirmed against the target TAPAAL release.
{{% /notice %}}
