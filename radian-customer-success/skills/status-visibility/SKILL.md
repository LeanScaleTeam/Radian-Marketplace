---
name: status-visibility
description: Provide proactive status updates to customers on what's happening with their account / project / service — instead of customer having to chase. Use continuously; deliver weekly or as defined per portco.
---

# status-visibility

## When to use

- Continuous — generate proactive status updates on a defined cadence
- Triggered by customer asking "what's the status" (failure signal — should be proactive)
- After internal milestones / blockers / changes

## Core principle

**87% of customers cite proactive communication as a top retention factor** (Zendesk). The #1 churn reason after price is "felt ignored" — a communication failure, not a product failure.

## Cadence by customer tier

| Tier | Status update cadence |
|---|---|
| Enterprise ($100K+ ARR) | Weekly |
| Mid-market | Bi-weekly |
| SMB | Monthly |
| Self-serve | Quarterly (automated) |

## What goes in a status update

- What we did this period (1-3 bullets)
- What's next (1-2 bullets with dates)
- Open items / blockers / decisions needed from customer
- Wins / metrics moved (when applicable)
- Optional: relevant resource / update

Length: 100-200 words. Email or in-app.

## Workflow

1. Trigger: scheduled cadence per customer tier
2. Pull:
   - CSM notes / activities since last update
   - Product usage trend
   - Open support tickets
   - PM tool progress (for services)
3. Generate the update draft
4. Deliver to CSM for review + send
5. Track customer engagement with update (open / reply)

## Output format

```markdown
*Status Update Draft — [Account] / Week of [date]*

*Subject:* Quick update — [project / account name]

*Body:*
Hi [Champion],

Quick rundown on where we are:

What we wrapped this week:
- [1-2 specific things]

What's next:
- [1-2 specific things with dates]

[If blocker:] Need from you: [specific ask, with deadline]

[If win:] Quick win to share — [metric moved or outcome]

Anything you'd like us to focus on next week? Happy to jump on a quick call if useful.

Best,
[CSM]

---

*Engagement signals since last update:*
- Customer opened previous update: yes/no
- Customer replied: yes/no
- Login frequency: trending up/down/flat
```

## Connectors

- CRM
- CS tool (account record + notes)
- Product analytics (usage trend)
- Support tool (open tickets)
- PM tool (services delivery)
- Email + Slack (delivery)

## Gotchas

- Proactive > reactive — if the customer is asking, you're already late
- Don't auto-send — CSM signs off; voice matters in relationships
- Track engagement — a customer who stops opening updates is a churn signal
- Bad weeks need updates too — silence in bad weeks is what kills relationships
