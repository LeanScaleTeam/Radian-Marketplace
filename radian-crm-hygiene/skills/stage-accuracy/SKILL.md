---
name: stage-accuracy
description: Detect when opps are in the wrong pipeline stage based on actual evidence — and flag for cleanup. Use weekly, before forecast review, or when stage conversion rates look implausible.
---

# stage-accuracy

## When to use

- Weekly pipeline hygiene pass
- Before forecast review (clean stages = trustworthy forecast)
- Quarterly recalibration of stage definitions
- When AI scoring / forecasting models perform poorly (often a stage data quality issue)

## Core principle

**Stage advancement is the primary input for nearly every deal-scoring and forecasting model.** Stages don't match reality → all downstream metrics break. Most stage drift happens at end-of-quarter when reps push opps forward to look good.

## Scope distinction

- For **mature B2B orgs running methodology** (MEDDPICC, etc.): stage accuracy is often a byproduct of qualification adherence — use `radian-sales-ops::sales-qualification-adherence` instead
- For **SMB / less mature orgs**: stage accuracy stands on its own as a CRM hygiene problem (this skill)

## Workflow

1. Pull all open opps
2. For each opp, pull stage exit criteria evidence:
   - Activity history (calls, emails, meetings in last 21d)
   - Field completeness (champion, EB, success criteria, etc.)
   - Call transcript signals (where stage-relevant moments would appear)
3. Compute "evidence stage" — what the data says the opp should be in
4. Compare to recorded stage
5. Flag mismatches:
   - **Severe (>=2 stages ahead of evidence):** likely forecast inflation
   - **Moderate (1 stage ahead):** stage drift
   - **Stale (no activity in stage 21d+):** stuck opp
6. Recommend stage corrections + owner outreach
7. Weekly report to RevOps

## Output format

```markdown
*Stage Accuracy — week of [date]*

*Total open opps:* N
*Stage mismatches:* M (P% of pipeline value)

*Severe (≥2 stages ahead) — $X at risk:*
| Account | Recorded stage | Evidence stage | Owner | Missing |
|---|---|---|---|---|

*Moderate — $Y at risk:*
...

*Stale opps (>21d in stage):*
...

*Recommended actions:*
- [Owner] / [Account]: roll back to [stage] — no [evidence] in CRM
- [Owner] / [Account]: provide [evidence] in 48h or roll back
```

## Connectors

- CRM (required)
- Gong / Fireflies (call evidence)
- Slack (delivery)

## Gotchas

- Reps will push back — that's why the report shows evidence, not just claims
- Configure stage exit criteria per portco — defaults are reference
- Don't apply to closed deals — only open pipeline
- Time-in-stage is a leading indicator — track it independently
