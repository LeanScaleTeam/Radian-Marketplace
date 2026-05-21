---
name: churn-risk-detection
description: Detect churn risk 60-90 days early by aggregating behavioral, support, engagement, and contact-level signals across systems. Use continuously; surface top-N at-risk weekly.
---

# churn-risk-detection

## When to use

- Continuous monitoring (real-time signal ingestion)
- Weekly CS health review
- Pre-QBR / pre-renewal preparation
- After a product change / pricing change / outage

## Core principle

**60-70% of churn is predictable 90+ days in advance** (Gainsight). Save rate at 90-day notice ≈ 50%; at 30 days ≈ 15%. Early detection beats heroic last-minute saves.

## Signal taxonomy

| Signal | Source | Tier |
|---|---|---|
| Usage drop >30% WoW | Product analytics | High |
| Login frequency drop | Product analytics | High |
| Champion left | LinkedIn / enrichment | High |
| Support ticket spike + negative sentiment | Support tool | High |
| Renewal <90d + no CSM engagement 30d+ | CRM + activity | High |
| Negative call sentiment last 14d | Gong / Fireflies | Medium |
| Slow response to CSM outreach (>14d) | Email | Medium |
| Expansion conversation stalled | CRM | Medium |
| Exec turnover at customer | News | Medium |
| Mentioned competitor on call | Gong / Fireflies | Medium |

## Workflow

1. Continuously ingest signals
2. Compute composite churn risk score per account
3. Weight by ARR for prioritization
4. Classify into bands: Healthy / Watch / At-risk / Critical
5. Fire interventions:
   - Watch → CSM logs awareness
   - At-risk → exec sponsor + custom outreach plan within 7d
   - Critical → save play within 48h (escalation, custom offer, exec-level engagement)
6. Track save rate (% interventions that retain)

## Output format

Per at-risk account:

```markdown
*🚨 Churn Risk — [Account] — $ARR — Renewal: [date]*
*Score:* 78/100 (Critical) ⬆️ from 52 last week
*CSM:* [name]

*Signal stack:*
🔴 Usage dropped 45% WoW
🔴 Champion left (LinkedIn signal 12d ago)
🟡 No CSM touch in 23 days
🟡 Negative sentiment on last call

*Recommended save play:*
1. Exec sponsor reach-out within 48h
2. Identify replacement champion at customer
3. Schedule strategic review by next Friday
4. Loop in product on the [feature] they were frustrated with

*Past patterns:* Customers with this signal stack save 32% of the time when intervention starts within 7 days
```

Weekly summary:

```markdown
*Churn Risk — week of [date]*

*ARR at risk:* $X across N accounts
*Vs. last week:* +$Y (or -$Y)

*Critical (renewal <90d + critical signals):* $A in M accounts
*At-risk:* $B in K accounts
*Watch:* $C in J accounts

*Saved this week (intervention closed risk):*
- ...

*New on the list:*
- ...
```

## Connectors

- CRM (required)
- CS tool (required)
- Product analytics (highly recommended)
- Support tool
- Gong / Fireflies
- Enrichment / news (for champion job changes)
- Slack (delivery)

## Gotchas

- Don't over-flag — "everything is at risk" produces alert fatigue
- Composite score > single signal — single-signal flags miss most real churn
- Calibrate per portco — what's a churn signal in one product isn't in another
- Track save rate by intervention type — proves which plays actually work
