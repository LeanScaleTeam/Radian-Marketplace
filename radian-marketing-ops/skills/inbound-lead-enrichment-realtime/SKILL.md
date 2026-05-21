---
name: inbound-lead-enrichment-realtime
description: Real-time enrichment of inbound leads at form submission — fire in under 30 seconds so routing and scoring run on complete data. Use on lead-created event, NOT for batch backfill (that's enrichment-backlog in radian-crm-hygiene).
---

# inbound-lead-enrichment-realtime

## When to use

- Lead-created event from form / chat / demo request
- Speed-to-lead window (<30s) — anything slower belongs in the backlog skill

## Core principle

**Form captures email + company. Routing + scoring need 10x more, NOW.** Sub-30-second SLA. If enrichment lags, routing runs on bad data and the speed-to-lead 9x conversion lift evaporates.

## What to pull (waterfall — try in order, stop when complete)

| Provider class | Examples | Why ordered this way |
|---|---|---|
| 1. Internal CRM | Salesforce, HubSpot | Free, fastest, may already have the record |
| 2. Premium enrichment | ZoomInfo, Clay | Best data quality, slower API |
| 3. Mid-tier enrichment | Apollo, Clearbit, Cognism | Cheaper backup |
| 4. Free/inferred | Email-domain → Crunchbase / LinkedIn | Last resort |

Waterfall enrichment can hit 80-95% data completeness when properly configured.

## Fields to fill (priority order)

1. Company name + domain (often already in form)
2. Industry / sub-industry
3. Headcount band
4. Country / region
5. Job title (clean / verified)
6. Seniority level
7. Function / department
8. Recent funding event (if any)
9. Tech stack signals (if available)

## Workflow

1. Trigger: lead-created webhook (CRM or MA)
2. Run waterfall in parallel where APIs allow
3. Time-box at 25 seconds — return partial data if not all sources answer
4. Write back to CRM
5. Emit "lead-enriched" event so scoring + routing fire next
6. Log enrichment success rate per provider for monthly review

## Output

Updates CRM record + emits event. No human-facing output unless requested.

## Connectors

- CRM (required)
- At least one enrichment provider (required)
- Webhook infrastructure for lead-created event

## Gotchas

- Don't block the form submission on enrichment — async only
- Cache by email domain — most company-level data is reusable across contacts
- Stale enrichment is worse than no enrichment — TTL by field (firmographic 90d, contact 30d)
- Log completeness per provider — providers degrade silently

## Scope distinction

- This skill: real-time, sub-30s, fires at lead capture
- `radian-crm-hygiene::enrichment-backlog`: batch, scheduled, fills missing data on existing records
