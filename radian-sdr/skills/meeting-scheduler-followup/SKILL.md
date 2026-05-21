---
name: meeting-scheduler-followup
description: Follow-up workflow after a meeting is booked, held, or missed. Use when a meeting is scheduled (confirmation), after a meeting holds (recap + next steps), or after a no-show (reschedule outreach).
---

# meeting-scheduler-followup

## When to use

- Meeting scheduled → send confirmation + pre-read
- Meeting held → draft recap + next-steps email (rep sends)
- No-show → reschedule outreach sequence
- Stalled prospect (14d+ no response after meeting) → re-engagement

## Critical constraint (enforced by hook)

**Draft-only, like `personalized-outreach-email`.** The `draft-not-send.sh` hook blocks any actual send. Also blocks `calendar__create_event` — meaning calendar invites must be confirmed and sent by the rep, not auto-created. v1 = draft everything, human owns delivery.

## State machine

| Trigger event | Action |
|---|---|
| Meeting booked | Confirmation email draft + pre-read draft + add to CRM activity |
| Meeting held (transcript available) | Recap email draft with explicit next steps |
| No-show | Reschedule sequence — 3 touches over 5 days |
| Stalled 14d+ post-meeting | Re-engagement message with new angle |
| Stalled 30d+ post-meeting | Final touch + close-lost or nurture decision |

## Per-state workflows

### A. Meeting booked

1. Detect calendar event (Google Calendar / Outlook MCP)
2. Pull lead context (CRM record, prior touches, enrichment)
3. Draft:
   - Confirmation email (acknowledges meeting, sets expectation for agenda)
   - Pre-read attachment recommendation (1–2 most relevant pieces of content)
4. Deliver to rep via Slack as draft — rep reviews and sends

### B. Meeting held

1. Detect meeting completion (calendar past + transcript exists in Gong/Fireflies)
2. Pull transcript and extract:
   - Discussed pain / use case
   - Stated next step (if any)
   - Open questions / objections
   - People who should be looped in
3. Draft recap email structured as:
   - Thank for time
   - 2–3 bullet summary of what they shared (proves listening)
   - Explicit next step with owner + date
   - Any deliverable promised on the call
4. Deliver to rep — rep reviews + sends

### C. No-show

1. Detect (calendar event ended, no transcript, lead didn't attend)
2. Draft re-engagement sequence (3 touches over 5 days):
   - Day 0: "Hope everything's okay — quick reschedule link"
   - Day 2: "Different angle — relevant case study / content"
   - Day 5: "Closing the loop — should I check back in [N] weeks?"
3. Each touch is a draft; rep sends manually
4. After day 5 with no response → recommend nurture or close-lost

### D. Stalled

1. Pull last touch date and last meeting recap
2. Draft a NEW-angle message (don't "just following up"):
   - New trigger event (their company news, role change, etc.)
   - New piece of content matching what they expressed interest in
   - Different stakeholder ask ("is there someone else I should be talking to?")
3. Deliver as draft

## Output format

All states output a draft block to Slack:

```markdown
*Follow-up Draft — [Contact Name] @ [Company]*
*Trigger:* [meeting booked / held / no-show / stalled]

*Subject:* [subject line]

*Body:*
[email body, ≤120 words]

*Why this angle:* [1 line]
*Next step:* Rep reviews → copies into inbox → sends.

*Suggested CRM update:* [field changes — e.g., update next step date, log activity]
```

## Connectors used

- Calendar — Google Calendar or Outlook (event detection, required)
- Salesforce / HubSpot — lead + activity logging
- Gong / Fireflies — transcript for "meeting held" recap
- Slack — draft delivery
- Optional: email tool (DRAFT delivery only — hook blocks send)

## Gotchas

- Don't auto-create calendar events — the hook blocks this
- Recap quality lives or dies on transcript quality — if transcript is missing, flag and don't fabricate
- No-show sequences should not be aggressive — 3 touches max, then stop
- Always include the explicit next step in the recap — vague recaps don't move deals
