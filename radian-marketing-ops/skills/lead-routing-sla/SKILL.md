---
name: lead-routing-sla
description: Route inbound leads to the right rep within SLA, and enforce the SLA across the team. Use when a new lead lands, when reviewing routing performance, or when the user says "who owns this lead", "routing SLA", or "why are hot leads going cold".
---

# lead-routing-sla

## When to use

- Real-time on lead-created event
- Weekly SLA report (% of leads contacted within target window)
- Manager wants to audit "why did this hot lead go cold"
- When SDR/AE territory changes — re-route open leads

## Core principle

**Speed-to-lead is brutal: 5-min contact = 9x conversion vs 30+ min.** Median B2B sits at ~42 hours. Most lost pipeline is operational lag, not lead quality.

## SLA tiers (configurable)

| Grade | SLA | Channel |
|---|---|---|
| A1 (hot fit + hot intent) | 5 min | Phone + Slack page |
| A2 | 1 hour | Email + Slack |
| B1 / B2 | 4 hours | Email |
| C | 24 hours | Sequence enrollment |
| D | Auto-nurture (no manual touch) | — |

## Workflow

1. Pull lead + score (from `lead-scoring`)
2. Apply assignment rules in priority order:
   - Existing account ownership → that AE/CSM
   - Territory match (geo / segment / industry)
   - Round-robin within eligible SDR pool, calendar-aware (don't assign to someone in a 4-hour block)
   - Specialist match if vertical/product overlap
3. Update CRM (owner + priority + assigned_at timestamp)
4. Notify owner via Slack with full context + SLA deadline
5. Start the SLA clock; escalate if breached

## SLA enforcement

- At 50% of SLA elapsed → ping owner in Slack
- At 80% → ping owner + manager
- At 100% → reassign to backup owner, log breach for weekly report

## Weekly SLA report

```markdown
*Lead Routing SLA — week of [date]*

*Total inbound leads:* N
*SLA met:* X% (target: 95%)
*Median time-to-first-touch:* M min (target: 5 min for A1)

*Breakdown by grade:*
| Grade | Leads | SLA met % | Median TTFT |
|---|---|---|---|
| A1 | 12 | 75% 🔴 | 18 min |
| ...

*Top breaches:*
| Lead | Owner | SLA | Actual | Outcome |
|---|---|---|---|---|

*Pattern detected:* [e.g., A1 leads landing after 6pm Pacific have 0% SLA hit]
```

## Connectors

- CRM (required)
- Slack (required)
- Calendar (for owner availability)

## Gotchas

- Holiday / OOO routing — calendar check is non-negotiable
- A lead with no owner is worse than a lead with a bad owner — never leave unassigned
- Speed > perfect ownership; reassign later if needed
