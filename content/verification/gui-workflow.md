---
title: Verification from the GUI
weight: 5
lastmod: 2026-08-29
---

# Verification from the GUI

This is the practical path from a model on the canvas to a result you can inspect. For the meaning of the operators, see [Queries and syntax](../queries/). For engine-specific behavior, see [Engines and options](../engines/).

## Before you verify

1. Save the model so that the result can be reproduced.
2. Check the feature indicator. A timed, colored, game, or stochastic model may require a particular engine or analysis mode.
3. Use **View** to show token ages, intervals, enabled transitions, future-enabled transitions, components, and constants while debugging.
4. Run a short simulation. Confirm that the initial marking, arc directions, interval endpoints, and urgent transitions behave as intended.

## Create or edit a query

1. In the query pane, select **Create new query**. To revise an existing property, select it and choose **Edit selected query**.
2. Enter a descriptive query name. Names such as `Target reachable` or `Buffer safe` make result lists easier to read.
3. Select the query category. Use the default CTL-style category for a first reachability or safety check. Select LTL or HyperLTL when the property is about paths or relationships between paths. Stochastic models use SMC settings.
4. Build the property with the query editor. Select a path operator, state operator, place or transition, comparison, and constant. The editor keeps the current subexpression selected so that operators can be inserted at the intended position.
5. Read the complete formula before saving. In particular, check the path quantifier, comparison direction, place/component name, and parentheses.

## Choose analysis settings

The lower part of the dialog contains settings that vary with the selected category and engine:

- **Extra tokens** controls the capacity used by the analysis. Select **Check boundedness** when you need to justify the capacity.
- **Verification engine** selects the backend. If an engine is unavailable, configure it under **Tools > Engine selection**.
- **Trace options** select no trace, some trace, or a fastest trace where supported.
- **Reduction and search options** trade analysis time and memory against diagnostic detail. Keep the defaults until you have a reason to change them.
- Colored models may show unfolding options such as partitioning, color fixpoint analysis, and symmetric-variable handling.
- SMC models expose time and step bounds, confidence, precision, hypothesis thresholds, and trace settings.

{{% notice warning %}}
Expert review needed: this page documents the current controls and their tooltips, but the relationship between every option and every engine should be confirmed by a verification specialist before release.
{{% /notice %}}

## Run the query

Select **Save and verify** in the query dialog, or save the query and select **Verify selected query** in the query pane. You can also use **Tools > Verify query** for the selected query.

While verification is running, do not treat an unfinished or canceled run as a model result. When it completes, read the result message and any engine diagnostics before opening a trace.

## Investigate the result

- If the query is satisfied and a trace was requested, open the trace in the simulator and step through the witness.
- If a universal property is not satisfied, inspect the counterexample trace to find the first marking where the property fails.
- If the result is inconclusive or the engine reports an error, check the engine path, query category, model features, extra-token capacity, and unsupported options.
- Save useful traces with the model and query. An exported trace is easier to discuss with a student, reviewer, or collaborator than a screenshot of the final marking.
