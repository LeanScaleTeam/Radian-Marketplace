---
name: forecasting
description: Generate sales forecasts from actual deal signals (stage, age, activity, sentiment) — not rep gut feel. Use weekly for commit calls, monthly for board prep, quarterly for plan validation.
---

# forecasting

## When to use

- Weekly commit call prep
- Monthly board / leadership pipeline review
- Quarterly plan validation (are we tracking to plan?)
- Pre-end-of-quarter scramble (final landing prediction)

## Core principle

**Industry forecast accuracy in B2B SaaS averages ~50%. Gartner: 78% of orgs miss forecast by >10%.** Reps lowball; managers gut-override; CRM is disconnected from finance. AI-driven forecasts using actual deal signals outperform rep-submitted forecasts by 15-25%.

## What goes into the forecast

| Signal | Weight |
|---|---|
| Stage + stage exit criteria evidence | High |
| Age in stage vs. historical norm | Medium |
| Activity recency (call, email, meeting) | Medium |
| Stakeholder engagement (multi-thread count) | Medium |
| Champion + EB confirmed | High |
| Call sentiment last 30d | Medium |
| Procurement / legal engaged | High (late-stage) |
| Historical analog (similar deals at similar accounts) | High |
| Rep historical forecast accuracy | Used as adjustment |

## Output structure

For each open opp, classify into:

| Category | Definition |
|---|---|
| **Closed-won** | Already signed |
| **Commit** | High-confidence close in period |
| **Most likely** | More likely than not |
| **Best case** | Upside if everything goes right |
| **Pipeline (not in forecast)** | Real deals, not period-relevant |

## Workflow

1. Pull all open opps
2. Score each on the signal stack
3. Compute per-opp close probability
4. Aggregate by category
5. Compare to:
   - Rep-submitted forecasts (where they diverge — investigate)
   - Last week's number (trend / movement)
   - Quota / plan target
6. Surface biggest deltas to investigate
7. Deliver to RevOps + sales leadership

## Output format

```markdown
*Forecast — week of [date]*

*Headline:*
- Closed-won this Q: $X (Y% of quota)
- Commit (high-conf): $A
- Most likely: $B
- Best case: $C
- *Total forecast (commit + most-likely): $D vs. quota $E (F%)*

*Vs. last week:*
- Commit changed: +$X / -$X
- New entries to commit: [list]
- Slipped out of commit: [list]

*Rep forecast vs. AI forecast (divergence):*
| Rep | Rep forecast | AI forecast | Delta |
| ... | ... | ... | ... |
🔴 J. Smith: rep commits $200K, AI says $80K — investigate 3 specific opps

*Top forecast risks (opps potentially missing):*
| Opp | $ | Issue |
| Acme | $80K | No EB engagement, 14d no activity, age in stage 32d |

*Top forecast upside (opps potentially landing):*
| Opp | $ | Why upside |
```

## Connectors

- CRM (required)
- Gong / Fireflies
- Email + calendar (activity)
- Slack (delivery)

## Gotchas

- AI forecast is a complement to rep forecast, not a replacement — investigate divergence rather than override
- Calibrate the model per portco — different segments have different signal patterns
- Track forecast accuracy over time — it's the meta-metric
- Don't let "the AI said" become a rep cop-out — managers should still own the call
