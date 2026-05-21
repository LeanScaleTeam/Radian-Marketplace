---
name: scope-management
description: Track and bill scope expansion in services engagements — convert "quick favors" into change orders. Services-specific. Use continuously per engagement.
---

# scope-management

## When to use

- Continuous monitoring of every active services engagement
- When a customer requests something not in the original SOW
- Monthly P&L review (find engagements bleeding margin)
- Pre-renewal conversation (scope realities should shape the new SOW)

## Core principle

**52% of projects experience scope creep >25%** (Standish Group). Agencies typically lose 10-20% margin to unbilled expansion. Change-order systems are standard in construction; rare in B2B services — where they're equally needed.

## What gets tracked

For each engagement:

| Variable | Source |
|---|---|
| Original SOW deliverables | Contract |
| Original SOW hours / budget | Contract |
| Actual hours logged | PM tool / time tracking |
| In-scope vs. out-of-scope tasks | Classified by tag |
| Out-of-scope hours not billed | Computed |
| Out-of-scope hours converted to change order | Computed |
| Margin per project | Hours × rate vs. project revenue |

## Workflow

1. On contract close, parse SOW into structured deliverables + hours budget
2. As work is logged in PM tool / time tracker, classify each task: in-scope / scope-question / out-of-scope
3. Flag out-of-scope tasks to PM:
   - "This requested work isn't in the SOW — change order needed"
   - Auto-draft a change order proposal
4. Track:
   - Margin trajectory per project
   - Scope creep ratio per project
   - Change order conversion rate (% out-of-scope hours billed)
5. Weekly per-PM report + monthly P&L summary

## Output format

Per engagement:

```markdown
*Scope Status — [Engagement / Customer]*
*Original SOW:* $X / N hours
*Hours logged:* Y / progress Z%
*In-scope hours:* A
*Out-of-scope hours:* B (worth $C unbilled)

*Out-of-scope tasks this week:*
- [task description] — 4h — recommend change order
- [task description] — 1h — likely fine to absorb

*Margin trajectory:* on track / slipping / 🔴 unprofitable

*Recommended actions:*
- Draft change order for [task] — proposal attached
- Surface to customer in next status call
```

Monthly P&L report:

```markdown
*Engagement P&L — [Month]*

*Active engagements:* N
*Aggregate margin:* X% (target Y%)
*Scope creep across portfolio:* Z% of hours

*🔴 Bleeding engagements:*
| Engagement | Margin | Scope creep % | Unbilled |
|---|---|---|---|

*Change orders converted:* $A this month
```

## Connectors

- Contract / SOW source (DocuSign / PandaDoc / contracts folder)
- PM tool (Asana / Linear / Jira / Monday) — required
- Time tracking (Harvest / Toggl / native PM tool)
- CRM (customer context)
- Slack (PM alerts)

## Gotchas

- Distinguish "scope question" from "out-of-scope" — some asks legitimately fall in gray area
- Change orders are political — give PMs scripts for surfacing them without burning relationship
- Track conversion rate (out-of-scope → billed) as a coaching metric for PMs
- "Quick favors" pile is what kills agency profitability — be ruthless
