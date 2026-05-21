---
name: signal-based-gtm-engine
description: Operationalize intent + buying signals into a "signal → play" matrix that actually runs — instead of signals sitting in dashboards. Use continuously; review weekly.
---

# signal-based-gtm-engine

## When to use

- Continuous (real-time signal-to-play routing)
- Weekly review of signal → outcome data
- When intent signals exist but no one acts on them
- Building out an ABM motion

## Core principle

**Clay publicly admits signal aggregation is still "too noisy, not actionable" — the problem isn't capture, it's prioritization and play-routing.** Top-quartile B2B teams build a signal-to-play matrix; bottom-quartile teams treat signals as Slack notifications. 2-3x higher conversion on operationalized signals.

## Signal sources

| Source | Signal types |
|---|---|
| **6sense / Bombora** | Account intent surge, topic intent |
| **G2** | Category page views, comparison shopping |
| **LinkedIn Sales Nav** | Job changes, hiring signals |
| **Clay / Common Room** | Cross-source signal aggregation |
| **Web analytics** | Pricing page, demo page repeat visits |
| **News API** | Funding events, exec hires, M&A |
| **Job postings** | Hiring for relevant roles signals product fit |
| **Tech installs** | New tool installed = adjacent product opportunity |

## Signal → play matrix (configurable)

| Signal class | Threshold | Play |
|---|---|---|
| Account intent surge (3+ topics) | 6sense >70 score | ABM motion — multi-channel orchestrated |
| G2 comparison page visit | Customer or prospect | Sales alert + competitive battle card |
| Pricing page visit (existing lead) | 2+ in 7 days | Personalized outreach within 30 min |
| Champion job change to new co. | LinkedIn signal | `champion-job-change-play` |
| Funding event (target account) | Series B+ | Personalized "congrats + relevant ask" outreach |
| Tech install (e.g., Salesforce) | Net new | Outbound with relevant integration angle |
| Multiple leads same account, 30d | CRM | Account-level ABM activation |

## Workflow

1. Continuously ingest signals from all sources
2. Deduplicate (same signal from same account within 24h)
3. Match to play in matrix
4. Score priority by ARR potential + signal strength + recency
5. Route to right owner (sales / SDR / CS / marketing)
6. Log: signal → play → action taken → outcome
7. Weekly: surface signal types that produce pipeline vs. ones that don't — prune the matrix

## Output format

Per signal fired:

```markdown
🔔 *Signal — [Account] / [Signal type]*

*Signal:* G2 — visited [our company] vs. [competitor] comparison page
*Account state:* Existing prospect, P1 priority, owner [name]
*Play:* "Competitive comparison" — alert + battle card

*Auto-actions taken:*
- Slack alert to [owner]
- Battle card for [competitor] attached
- CRM activity logged

*Owner action needed:* outreach within 4h with the battle card framing
```

Weekly report:

```markdown
*Signal-Based GTM — week of [date]*

*Signals processed:* N
*Plays fired:* M
*By signal type:*
| Signal | Count | → action | → meeting | → opp | pipeline$ |

*Top-performing signals (last 90d):*
- Champion job change → 38% meeting rate, $X pipeline
- G2 comparison → 22% meeting rate, $Y pipeline

*Bottom-performing (consider pruning):*
- [Signal type] — fires N/week, 0 outcomes

*Matrix tuning recommendation:*
- Raise threshold on [signal] — too noisy
- Add new play for [signal pattern] — repeated success outside matrix
```

## Connectors

- Intent providers (6sense / Bombora / G2 / Clay / Common Room)
- LinkedIn Sales Nav
- News API
- Job posting scraper (Crunchbase / company careers)
- CRM
- Slack (delivery)

## Gotchas

- Start NARROW — 5 plays in the matrix beat 50. Add as data accumulates.
- Threshold tuning matters most — too low = noise, too high = miss real signal
- Always track signal → outcome — that's how you know which signals are real
- Cross-channel orchestration (sales + marketing) needs explicit ownership rules
