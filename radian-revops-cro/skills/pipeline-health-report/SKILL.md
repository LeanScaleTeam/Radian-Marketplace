---
name: pipeline-health-report
description: Generate a pipeline health report — coverage, velocity, stage conversion, age, source mix. Use weekly/monthly, before board prep, or when the user says "how's pipeline", "pipeline health", or "what's our coverage".
---

# pipeline-health-report

## When to use

- Weekly RevOps standup
- Monthly board / VC update prep
- Ad-hoc "are we covered for next quarter" question
- Post-campaign / post-event measurement
- Mid-quarter recalibration

## Core principle

**Pipeline health is not one number — it's a small panel.** Reps and CROs both gravitate to coverage ratio in isolation, which is misleading. The full picture needs coverage + velocity + conversion + age + source mix to be honest.

## Core metrics

| Metric | Definition | Healthy band (default) |
|---|---|---|
| **Coverage ratio** | Open pipeline ÷ quota for the period | 3–4x for ENT, 4–5x for SMB |
| **Stage conversion** | % of opps that advance from stage N to N+1 | Stable WoW / MoM |
| **Avg deal cycle** | Days from create → close-won (last 90d) | Stable; flag rapid acceleration OR deceleration |
| **Age in stage** | Median days in current stage | < 1.5x historical median |
| **Source mix** | % pipeline by source (inbound / outbound / partner / etc.) | Diversified; flag over-concentration |
| **Win rate** | Closed-won ÷ (closed-won + closed-lost) | Stable; segment by source + size |

## Workflow

1. **Define the reporting window**
   - Default: current quarter
   - Compare against prior quarter same-point-in-quarter (not full prior quarter)

2. **Pull pipeline state from Salesforce**
   - All open opps, segmented by stage, owner, source, segment
   - All closed opps in last 90d for velocity / conversion
   - Quota by team / segment (from a separate config or SF custom object)

3. **Compute each metric**
   - Use median for age and cycle (not mean — outliers skew)
   - Segment win rate by source AND deal size (the combined cut is most actionable)

4. **Flag anomalies**
   - Coverage < 3x → flag red
   - Stage conversion dropped >15% WoW → investigate
   - Source mix shifted dramatically → marketing / SDR motion change
   - Age in stage spiking → reps holding stale opps

5. **Narrative summary on top**
   - 2–3 sentence TL;DR
   - "Pipeline is healthy / mixed / concerning because X, Y, Z"

## Output format

```markdown
*Pipeline Health Report — [Date]*

*TL;DR:* [2-sentence verdict]

*Coverage*
| Segment | Pipeline | Quota | Ratio | Status |
|---|---|---|---|---|
| ENT | $X | $Y | 3.2x | 🟢 |
| SMB | $X | $Y | 2.1x | 🔴 |

*Stage conversion (last 90d)*
| Stage transition | Rate | vs. prior 90d |
|---|---|---|
| Disco → Qual | 68% | +3pp |
| Qual → Sol | 52% | -8pp 🔴 |
| ...

*Velocity*
- Avg deal cycle: N days (vs. M last quarter)
- Median age in stage: N days

*Source mix*
- Inbound: X% ($Y)
- Outbound: X%
- Partner: X%
- [flag if concentration >70% in any single source]

*Win rate by segment × source*
- Inbound ENT: X%
- Outbound ENT: X%
- ...

*Anomalies to investigate*
1. [specific issue]
2. ...
```

## Connectors used

- Salesforce — pipeline, opp history, quota (required)
- Slack — delivery
- Optional: chart generation (Plotly / native Slack chart blocks) for visual delivery

## Gotchas

- Don't compare to "last quarter" full numbers if you're mid-quarter — compare same-point-in-quarter
- Quota data is often in a separate system; make sure it's loaded correctly
- Win rate by deal size matters more than overall win rate
- If a portco hasn't defined stage exit criteria, this report will be noisy — run `forecast-stage-validator` first
