---
name: health-score-calibration
description: Calibrate the customer health score against actual churn outcomes — so green customers don't surprise-churn and red customers don't waste CSM cycles. Use quarterly; on-demand when score accuracy questioned.
---

# health-score-calibration

## When to use

- Quarterly recalibration (mandatory cadence)
- When CSMs stop trusting the health score (the "we ignore it now" signal)
- After product / pricing / segment changes
- When churn outcomes don't match score predictions

## Core principle

**Most B2B health scores have <60% accuracy against actual churn** (Gainsight/Totango). Rules-based scores age badly. AI-based scoring trained on historical churn outperforms by 2-3x. Most importantly: a health score is only useful if it triggers specific plays.

## Workflow

1. Pull last 12 months of churn outcomes (churned vs. renewed)
2. Pull the health score history for each customer
3. Compute:
   - Accuracy by score band (% of "red" customers that churned, % of "green" that renewed)
   - Lead time (how many days before churn did the score detect)
   - False positive rate (green that churned)
   - False negative rate (red that renewed)
4. Identify failing signals:
   - Signals that should predict churn but don't
   - Signals that flag healthy customers as risky
5. Propose new weights / new signals / removed signals
6. Validate proposed model against historical data (out-of-sample)
7. Roll out updated model — document changes

## Output format

```markdown
*Health Score Calibration Report — [Quarter]*

*Current model accuracy:*
- True positive (red → churned): X%
- True negative (green → renewed): Y%
- False positive: Z%
- False negative: A%
- Median lead time: B days (target 60+)

*Failing signals:*
- [Signal X] — weighted 30% but correlates 0.08 with churn outcome
- [Signal Y] — never fires in our customer base (irrelevant)

*Underutilized signals:*
- [Signal Z] — strong correlation with churn (0.41) but not in current model

*Proposed model (validated on hold-out):*
- Remove: [signals]
- Add: [signals]
- Reweight: [signals]
- Predicted accuracy lift: +N percentage points

*Recommended rollout:*
- Pilot with 1 CSM cohort for 30 days
- Compare action triggers + save rate vs. old model
- Roll fleet-wide if pilot shows gains
```

## Connectors

- CRM (renewal outcomes)
- CS tool (health score history)
- Product analytics (signals)
- Optional: ML platform for AI-based scoring (Vertex / SageMaker / Databricks)
- Slack (delivery)

## Gotchas

- Don't recalibrate too often — gives time for the new model to show signal
- Health score must trigger plays, not just colors — meaningless otherwise
- Each CSM should be able to explain why a customer is red — "the model says so" is useless
- Track save rate AS WELL AS prediction accuracy — predicting churn that you can't save isn't useful
