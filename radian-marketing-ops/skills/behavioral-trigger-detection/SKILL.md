---
name: behavioral-trigger-detection
description: Detect high-intent behavioral signals (pricing-page views, repeat visits, demo page hits, content downloads, email engagement spikes) and trigger the right next action. Use to operationalize intent signals that today sit in dashboards.
---

# behavioral-trigger-detection

## When to use

- Continuous monitoring across the warm lead database
- After a marketing campaign or content launch (signal spike expected)
- When intent data exists in dashboards but isn't being actioned

## Core principle

**Leads with 3+ intent signals convert 4-6x more.** But most teams capture intent data and never operationalize it — it sits in 6sense / Bombora / GA / HubSpot with nobody acting in time.

## Signal taxonomy

| Signal | Source | Tier |
|---|---|---|
| Pricing-page view | Web analytics | High |
| Demo page repeat-visit (3+) | Web analytics | High |
| Content download (mid-funnel asset) | MA | Medium |
| Email engagement burst (3+ opens / 1 click within 7d) | MA | Medium |
| Third-party intent surge (6sense / Bombora) | Intent provider | High |
| G2 category page visit | G2 | High |
| Job change at known account | LinkedIn / enrichment | Medium |
| Funding event at target account | News / enrichment | Medium |
| Multiple leads from same account in <30 days | CRM | High (account-level buying signal) |

## Trigger → play matrix

Configurable per portco. Default reference:

| Signal | Play |
|---|---|
| Pricing-page view (existing lead) | Slack alert to AE/SDR + draft outreach within 30 min |
| Demo page 3+ visits | Auto-route to "warm queue", priority bump |
| Email burst on existing customer | Alert CSM — expansion signal |
| G2 category visit (anonymous account) | If reverse-IP matches target account, launch ABS play |
| Multi-lead from same account | Activate account-level outreach (multi-thread) |

## Workflow

1. Continuously ingest signals across sources
2. Score each signal against the trigger matrix
3. Deduplicate (same signal from same lead in <24h = one trigger)
4. Fire the play: Slack alert, draft outreach, CRM field update, route change
5. Log signal → action → outcome for weekly review (which signals actually produce pipeline)

## Output

Per fired trigger:

```markdown
🔔 *Intent Signal — [Account] / [Contact]*
*Signal:* Pricing page viewed 2x in last 24h
*Lead status:* B1 — qualified, no recent touch
*Owner:* [name]
*Recommended play:* Personalized outreach within 30 min — pricing-question angle
*Draft ready in thread:* [link]
```

## Connectors

- CRM (required)
- Marketing automation (required)
- Web analytics (highly recommended)
- Intent provider (high-leverage if available)
- Slack (delivery)

## Gotchas

- Noise > signal kills this skill — calibrate thresholds carefully, start narrow
- "Everything is warm" if you fire on every page view — only mid/bottom-funnel pages matter
- Time-of-day matters — alerts after hours go ignored; route accordingly
- Track signal → action → pipeline conversion so the matrix can be tuned
