---
name: pre-call-prep
description: Auto-generate a pre-call brief for every scheduled customer/prospect meeting — account, contacts, prior conversations, recommended angle. Use scheduled before each meeting (24h + 1h trigger), or when the user says "prep me for this call".
---

# pre-call-prep

## When to use

- Scheduled 24h before any external meeting (auto-trigger)
- Re-trigger 1h before meeting (reminder + freshness check)
- Ad-hoc "prep me for X" request

## Core principle

**B2B buyers complete 60-70% of their journey before talking to a rep** (Forrester). 82% accept meetings with informed reps (LinkedIn). Walking in cold is malpractice in modern B2B.

## What the brief contains

1. **Meeting basics** — who, when, expected agenda
2. **Account snapshot** — industry, size, stage, recent news, tech stack
3. **Contact context** — role, tenure, prior role, LinkedIn highlights
4. **Relationship history** — prior touches, prior opps, notes from past calls
5. **Stated topic / pain** — from the meeting invite / SDR handoff / inbound form
6. **Discovery questions** — 3-5 tailored to what's known
7. **Talking points / POV** — recommended angle to bring
8. **Risk / sensitivity flags** — anything to handle carefully

## Workflow

1. Detect upcoming meeting (calendar)
2. Pull account + contact records (CRM)
3. Pull all prior activity (calls, emails, meetings)
4. Pull enrichment + recent news
5. If meeting is mid-deal: pull current opp state + last call transcript
6. Generate brief
7. Deliver via Slack 24h + 1h before

## Output format

```markdown
*Pre-Call Prep — [Contact] @ [Company] — [Date]*

*Meeting:* [agenda from invite] / [duration] / [Zoom link]
*Attendees:* [list]

*Account:*
- Industry: [X]
- Size: [N employees, $Y ARR estimate]
- Stage: [funding / public]
- Recent news (90d): [top 2]
- Tech stack (relevant): [tools]

*[Primary Contact]:*
- Role: [title], [N months tenure]
- Prior: [last role]
- LinkedIn highlights: [recent post / theme]

*Relationship history:*
- First touch: [date / source]
- Touches: [N total over Y months]
- Last call: [date] — [1-line summary]
- Prior opps: [closed-lost reason if any]

*What they care about (inferred from prior conversations / signals):*
- [point 1]
- [point 2]

*Recommended discovery (3 questions):*
1. ...
2. ...
3. ...

*POV to bring:*
[1-2 sentence pre-formed angle]

*Sensitivity flags:*
- [e.g., champion left last month — don't assume continuity]
```

## Connectors

- Calendar (required)
- CRM (required)
- Gong / Fireflies (prior call transcripts)
- Enrichment provider
- News API
- Slack (delivery)

## Gotchas

- 1h-before delivery matters — 24h-prior gets ignored in a busy week
- Mobile-readable format — most reps prep in transit
- Don't fabricate context if data is missing — flag the gap so rep can ask

## Scope distinction

- This skill: SCHEDULED, fires automatically before known meetings
- `on-request-enrichment`: AD-HOC, rep-triggered, mid-deal research
