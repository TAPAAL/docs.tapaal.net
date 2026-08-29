---
title: Stochastic model checking
weight: 70
lastmod: 2026-08-29
description: Configure and report probability estimates, hypothesis tests, and sampled traces.
---

Stochastic model checking (SMC) uses sampled executions to estimate probabilities or test probabilistic hypotheses. It complements exhaustive verification: an SMC result is statistical evidence with stated error and confidence settings, not an exhaustive proof of every behavior.

{{% notice warning %}}
Expert review needed: confirm the statistical terminology, distribution assumptions, supported stochastic model features, and exact GUI labels against the target TAPAAL release before publication.
{{% /notice %}}

## Select an SMC query

In the query dialog, choose the SMC category and select the analysis mode that matches your goal:

- **Quantitative estimation** estimates the probability of an outcome.
- **Qualitative hypothesis testing** tests a probability claim against configured thresholds.
- **Trace generation** produces sampled executions for exploration.

The available modes and controls depend on the model and release. Start with a simple property and state the event being measured in ordinary language before interpreting the number.

## Settings to record

The SMC controls can include the following settings:

| Setting | Why it matters |
| --- | --- |
| Time or step bound | Limits how long each sampled execution is followed. |
| Precision and confidence | Controls the requested statistical accuracy and confidence. |
| False-positive and false-negative limits | Sets decision-error thresholds for hypothesis testing. |
| Indifference region | Defines a range near the hypothesis boundary where a decision may be intentionally undecided. |
| Random seed | Makes a sampling run easier to reproduce when the implementation and environment are unchanged. |
| Granularity | Controls the resolution used by the stochastic analysis where applicable. |
| Parallelism | Controls how sampling work is distributed across workers. |
| Number of traces | Determines how many executions are generated in trace-generation mode. |

Not every setting applies to every mode. Record the values shown in the query dialog together with the model, query, TAPAAL version, and verifier version.

## Interpret the result

Treat the reported estimate, confidence, precision, and decision thresholds as one result. A small difference between two estimates may be expected from sampling, while a changed seed, bound, or model can produce materially different observations. A generated trace illustrates a sampled execution; it does not prove that the execution is typical or unique.

Current GUI behavior restricts SMC for some model features, including stochastic models with strict timing intervals. If the SMC category is unavailable, check the model features and the diagnostic message before changing the query.

For a formal report, state the event, sampling mode, bounds, statistical thresholds, seed, parallelism, number of traces, and result. Do not present an SMC estimate as an exact reachability or safety proof.

See [Verification from the GUI](../gui-workflow/) for the query-dialog workflow and [Results and traces](../results/) for common incomplete-run messages.
