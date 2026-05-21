---
name: lead-scoring
description: Score inbound leads by fit and intent so reps work the best ones first. Use when reviewing the inbound queue, when a new lead lands, or when the user says "score these leads", "which leads should we prioritize", or "lead quality is bad".
---

# lead-scoring

## When to use

- Real-time on lead-created event (paired with `inbound-lead-enrichment-realtime`)
- Batch re-score of the existing database
- Periodic recalibration when win/loss patterns shift
- Manager asks "are we working the right leads?"

## Core principle

**Volume without prioritization is noise.** Reps work the most recent lead first by default — almost always wrong. Scoring should be behavioral + firmographic, validated against actual closed-won, refreshed quarterly.

## Dimensions

| Dimension | Inputs |
|---|---|
| **Fit (firmographic)** | Industry, size, geo, tech stack, segment match against ICP |
| **Intent (behavioral)** | Pricing-page views, demo requests, repeat visits, content downloads, email engagement |
| **Third-party intent** | 6sense / Bombora / G2 surge if wired |
| **Engagement recency** | Activity in last 7 / 14 / 30 days |
| **Negative signals** | Free email domain, competitor employee, student, etc. |

## Workflow

1. Pull lead + enrichment + activity from CRM + MA + intent
2. Compute fit score 0–100 (ICP match)
3. Compute intent score 0–100 (behavioral + third-party)
4. Combine into a grade (A1 / A2 / B1 / B2 / C / D), matching how reps think
5. Validate against last 90d of closed-won — if A-graded leads aren't closing, the model is miscalibrated
6. Write back to CRM (score + grade fields)
7. Trigger routing skill for A/B leads

## Output format

```markdown
*Lead Score — [Contact] @ [Company]*
*Grade:* A1 / A2 / B1 / B2 / C / D
*Fit:* 87/100 — [why]
*Intent:* 62/100 — [signals]
*Next step:* route via inbound-lead-triage with P0 priority
```

## Connectors

- CRM (required)
- Marketing automation (required)
- Web analytics
- Intent provider (optional but highly valuable)

## Gotchas

- Rules-based scoring underperforms AI/behavioral by 2-3x — but only worth building AI model when you have enough closed-won training data
- Recalibrate quarterly — ICP drift breaks scoring
- Don't celebrate raw lead volume — that's how sales-marketing trust breaks
