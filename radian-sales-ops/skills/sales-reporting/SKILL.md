---
name: sales-reporting
description: Standing weekly/monthly sales report — pipeline coverage, conversion, cycle time, win rate, rep attainment. Single source of truth instead of contested Excel files. Use weekly for sales leadership; monthly for board.
---

# sales-reporting

## When to use

- Weekly sales standup
- Monthly leadership review
- Quarterly board / VC update
- Pre-forecast call

## Core principle

**Most B2B sales teams operate without a single source of truth on pipeline.** Different leaders look at different reports and reach different conclusions. Reporting consumes ~20% of sales ops capacity in poorly instrumented orgs. Locking definitions and reports prevents weekly relitigation.

## Standard sections

1. **Pipeline coverage**
   - Open pipeline ÷ quota (by segment / rep / quarter)
   - Healthy: 3-5x depending on segment

2. **Stage conversion**
   - Each stage → next stage % (vs. historical)
   - Spot collapses early

3. **Cycle time**
   - Avg + median days, deal create → close
   - By segment / size

4. **Win rate**
   - Overall + by source / by segment / by rep
   - Segment by deal size and source for actionable insight

5. **Rep attainment**
   - Per-rep quota %, both period-to-date and run rate
   - Distribution (how many over / under)

6. **Activity**
   - Calls / meetings / emails per rep
   - Activity-to-pipeline conversion

7. **Pipeline movement**
   - Created / advanced / slipped / lost this week
   - Net pipeline change

## Workflow

1. Pull from CRM (single source)
2. Apply locked definitions
3. Compute the standard panels
4. Detect anomalies (>15% WoW move on any metric)
5. Synthesize narrative TL;DR
6. Deliver Slack + email to sales leadership

## Output format

```markdown
*Sales Report — week of [date]*

*TL;DR:* [2-sentence verdict]

*Pipeline coverage:*
| Segment | Open $ | Quota $ | Ratio | Status |
| ENT | $X | $Y | 4.2x | 🟢 |
| SMB | $X | $Y | 2.1x | 🔴 |

*Stage conversion (last 30d vs. trailing 90d):*
| Stage transition | Now | T90 | Δ |
| Disco → Qual | 65% | 71% | -6pp 🟡 |
| ...

*Cycle time (median):*
- ENT: N days (vs. M baseline)
- SMB: N days

*Win rate (last 30d):*
| Source × size | Win rate |

*Rep attainment (period-to-date):*
| Rep | % of quota | Pace |
| ... |
- # at/above pace: X / N
- # below pace: Y / N

*Pipeline movement this week:*
- Created: $X (N opps)
- Advanced: $Y (M opps)
- Slipped to next quarter: $Z
- Lost: $A

*Anomalies:*
🔴 SMB coverage at 2.1x (target 4-5x) — pipeline gen issue
🟡 Qual → Sol conversion dropped 6pp — investigate
```

## Connectors

- CRM (required, single source)
- Slack + email (delivery)

## Gotchas

- Lock the metric definitions and don't change them mid-quarter
- Same metrics every week — comparability matters
- Always include narrative — raw tables don't drive decisions
- Track YOUR forecast accuracy vs. actual — meta-metric that builds trust
