---
name: inbound-lead-triage
description: Score and route an inbound lead — priority, owner, next action. Use when a new inbound lead lands, when reviewing the inbound queue, or when the user says "triage these leads", "route this lead", or "who should own this".
---

# inbound-lead-triage

## When to use

- Real-time on lead-created event (typical use — paired with `lead-enrichment`)
- Batch triage of an overnight inbound queue
- Re-routing when an owner is OOO or under-loaded
- Lead audit: did we route the last N leads correctly?

## Core principle

**Triage is two questions: HOW HOT and WHO OWNS.** Don't over-engineer scoring — a P0 lead routed slowly is worse than a P2 routed perfectly.

## Scoring dimensions

### ICP fit (firmographic match)
- Industry match
- Company size band
- Geo / market
- Tech stack signals
- Scored: Strong / Adequate / Weak / Out-of-ICP

### Intent signal
- Form behavior (demo request > content download > newsletter signup)
- Page visit history (pricing > product pages > blog)
- Prior touches with the company
- Third-party intent (G2, 6sense, Bombora) if wired
- Scored: High / Medium / Low / None

### Priority output
| ICP fit | Intent | Priority | SLA |
|---|---|---|---|
| Strong | High | **P0** | Outreach within 5 min |
| Strong | Medium | **P1** | Outreach within 1 hour |
| Strong | Low / None | P2 | Outreach within 24 hours |
| Adequate | High | P1 | 1 hour |
| Adequate | Medium | P2 | 24 hours |
| Adequate | Low | P3 | Sequence, no manual touch |
| Weak | High | P3 | Nurture, manager review |
| Weak | Low | Disqualified | Nurture only |
| Out-of-ICP | Any | Disqualified | Auto-route to nurture |

## Owner assignment

In priority order:
1. **Existing account ownership** — if there's a prior opp or current customer, route to that AE/CSM
2. **Territory** — geo / segment / industry routing rules (configurable per portco)
3. **Round-robin** — within the eligible SDR pool, prefer least-loaded + available (calendar check)
4. **Specialist** — if a lead matches a vertical or product specialty, route there

## Workflow

1. **Pull lead data + enrichment** (from `lead-enrichment` if available, else fetch)
2. **Score ICP fit** against the portco's configured ICP
3. **Score intent** from CRM activity + third-party intent (if wired)
4. **Assign priority** from the matrix above
5. **Assign owner** via the priority order
6. **Update Salesforce** (priority field + owner field)
7. **Notify the owner via Slack** with full context
8. **Trigger next-step skill** based on priority:
   - P0 / P1 → `personalized-outreach-email` immediately
   - P2 → schedule outreach within SLA
   - P3 → enroll in nurture sequence (rep approval first)

## Output format

```markdown
*Lead Triage — [Contact Name] @ [Company]*

*Priority:* P0 / P1 / P2 / P3 / Disqualified
*Owner:* [name] ([reason — territory / round-robin / existing account])
*SLA:* outreach by [timestamp]

*ICP fit:* [score] — [why]
*Intent:* [score] — [signals]

*Recommended next action:* [specific — link to draft, schedule outreach, etc.]
```

## Connectors used

- Salesforce / HubSpot — lead + owner data (required)
- Slack — route notification (required)
- Calendar — owner availability check
- Optional: intent data provider, enrichment API

## Gotchas

- Configure ICP and territory rules per portco — defaults are reference only
- A "Disqualified" decision still requires logging — never silently drop
- If the assigned owner is OOO, the routing must re-route (don't sit in queue)
- Re-triage stale leads when a new intent signal appears (e.g., customer visits pricing 30 days after first touch)
