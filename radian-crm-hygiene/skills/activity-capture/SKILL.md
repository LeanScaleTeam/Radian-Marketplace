---
name: activity-capture
description: Auto-capture call notes, next steps, and activity logs to CRM after every meeting — instead of relying on reps to manually enter. Use as continuous background process; manual trigger when a rep flags a call wasn't captured.
---

# activity-capture

## When to use

- Continuous — fires after every call ends + transcript available
- Manual recovery for calls that didn't auto-sync
- Backfill historical calls for a specific account

## Core principle

**Reps spend 65-70% of their time on non-selling activity** (Salesforce). Most of that is manual data entry. Call transcripts already exist (Gong / Fireflies / Zoom) — the data is captured, just not synced.

## What gets captured

For each call:

| Field | Source |
|---|---|
| Activity record | Call metadata |
| Call summary | Transcript → LLM summary |
| Topics discussed | Transcript analysis |
| Next steps + dates | Transcript extraction |
| Stakeholders present | Calendar / transcript |
| Sentiment (rough) | LLM analysis |
| Risks / objections raised | Transcript analysis |
| Champion / EB signals | Transcript phrasing analysis |

## Workflow

1. Detect call ended (Gong / Fireflies / Zoom webhook)
2. Pull transcript when available
3. Generate structured activity:
   - Subject line
   - Summary (3-5 bullets)
   - Next step with date
   - Linked opp/account/contacts
4. Write to CRM activity object
5. Update opp fields where confident (next step date, last activity date)
6. Slack rep a 30-second confirmation: "captured [account] call — review/edit"
7. Rep can edit; edits flow back to CRM

## Output format (per call)

CRM activity record + Slack confirm:

```markdown
✅ *Activity captured — [Account] / [Date]*

*Summary:*
- [point 1]
- [point 2]
- [point 3]

*Next step:* [explicit] by [date]
*Sentiment:* Positive / Neutral / Cautious / Concerned

*Updates to CRM:*
- Activity logged
- Opp.next_step set
- Opp.last_activity_date updated

*Edit needed?* Reply in thread within 30 min and I'll update.
```

## Connectors

- Gong / Fireflies / Chorus / Zoom (required)
- CRM (required)
- Slack (delivery)

## Gotchas

- Always show the rep what was captured — silent updates lose trust
- Don't auto-update high-stakes fields (stage, ACV, close date) — flag for rep review
- Handle internal-only calls gracefully — don't sync these
- Transcript quality matters — flag low-confidence summaries
