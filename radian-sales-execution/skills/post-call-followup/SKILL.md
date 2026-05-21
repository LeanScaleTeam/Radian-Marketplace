---
name: post-call-followup
description: Draft a high-quality post-call recap + next-steps email within 30 min of call end, so reps keep momentum without burning admin time. Use after every external meeting.
---

# post-call-followup

## When to use

- Auto-trigger after every external call ends + transcript becomes available
- Ad-hoc "write up the call" from rep
- After missed meetings: different template (re-engage / reschedule)

## Core principle

**80% of B2B sales need 5+ follow-ups; 44% of reps give up after one** (Marketing Donut). 60% of qualified deals end in "no decision" — momentum loss between touches is the primary driver. Recap quality is the difference between deal-keeps-moving and deal-cools.

## What a high-quality recap contains

| Section | Purpose |
|---|---|
| Thank you (one sentence) | Civility, not flattery |
| 2-3 bullets of what they shared | Proves listening + creates a shared record |
| Explicit next step (with owner + date) | The non-negotiable section |
| Any deliverable promised on the call | Stops things falling through cracks |
| Optional: relevant resource link | Adds value, gives reason to reply |

Length: ≤120 words. Anything longer doesn't get read.

## Workflow

1. Detect call ended + transcript available (Gong / Fireflies)
2. Extract:
   - Pain / use case discussed
   - Stated next step (explicit if mentioned, otherwise inferred)
   - Open questions / objections raised
   - Promised deliverables
   - Stakeholders to loop in
3. Draft recap to the structure above
4. Deliver to rep via Slack within 30 min of call end
5. Rep reviews → copies to inbox → sends (draft-only — never auto-send)
6. Log activity in CRM with next-step date

## Output format

```markdown
*Post-Call Recap — [Account] / [Date]*

*Subject:* Following up — [topic discussed]

*Body:*
Hi [Name],

Thanks for the time today.

Quick recap of what you shared:
- [point 1]
- [point 2]
- [point 3]

Next step: [explicit — what happens, who owns, by when].

[Deliverable promise: e.g., "I'll send over the [doc] by EOD Wednesday."]

[Optional resource: "Here's the case study I mentioned for [similar customer]."]

Best,
[Rep]

---

*Word count:* 87 ✅
*Why this works:* Specific, names a clear next step with a date, references their words.
*Next CRM update:* set Next Step Date to [date], log activity.
```

## Connectors

- Gong / Fireflies (transcript source)
- CRM (activity logging)
- Slack (draft delivery)
- Email tool (draft-only — rep sends)

## Gotchas

- Speed > polish — a 90% recap in 30 min beats a 100% recap in 4 hours
- Never auto-send — rep voice matters in follow-ups
- Don't write generic recaps — if transcript is empty or unclear, flag and ask the rep
- Always include the next step with a DATE — vague "let's reconnect soon" loses deals
