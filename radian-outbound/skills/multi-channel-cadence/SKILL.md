---
name: multi-channel-cadence
description: Design and orchestrate multi-channel cadences (email + LinkedIn + phone) that book 3-5x more meetings than email-only. Use when designing a new sequence, refreshing a stale one, or when a rep is email-only and stuck at 1% reply.
---

# multi-channel-cadence

## When to use

- New segment / persona — build cadence from scratch
- Existing cadence underperforming (reply or meeting-book rate flatlining)
- Rep is email-only and capping out
- ABM motion needing tight orchestration

## Core principle

**Multi-channel = 3-5x meetings booked** vs. email-only (SalesLoft / Outreach data). ~80% of reps default to email-only because LinkedIn and phone require manual effort. Orchestration is the fix.

## Cadence design framework

| Variable | Typical range |
|---|---|
| Length | 10-15 touches over 14-21 days |
| Channels | Email + LinkedIn + Phone (+ optional: video, direct mail) |
| Cadence intensity | Daily for first week, every other day for second |
| Personalization budget | Tier 3 on touches 1+5, Tier 1 on others |

## Default 14-day cadence template

| Day | Channel | Touch | Personalization |
|---|---|---|---|
| 1 | LinkedIn | View profile | — |
| 1 | LinkedIn | Connection request (no message) | — |
| 2 | Email | Cold email #1 — primary pitch | T3 |
| 4 | Phone | Call + voicemail #1 | T1 |
| 5 | LinkedIn | DM if connected, else InMail | T2 |
| 7 | Email | Cold email #2 — different angle | T2 |
| 9 | Phone | Call (no VM) | — |
| 11 | LinkedIn | Engage with a recent post | T2 |
| 12 | Email | Cold email #3 — case study / proof | T2 |
| 14 | Phone | Call + voicemail #2 | T1 |
| 14 | Email | Breakup email (close the loop) | T1 |

## Workflow

1. Take input: segment, persona, value prop, rep
2. Adapt the default template:
   - Adjust by persona seniority (C-level → fewer touches, more space; ICs → tighter)
   - Adjust by segment maturity (cold market → longer; warm → shorter)
3. Generate Tier-3 touches at marked days (call `outbound-personalization`)
4. Generate Tier-1/2 touches for filler days
5. Deliver as importable structure to the SEP (Outreach / Salesloft / Apollo)
6. Track per-touch engagement to retire low-performers

## Output format

```markdown
*Multi-Channel Cadence — [Segment] / [Persona] / [Rep]*

*Structure:* 12 touches over 14 days across Email / LinkedIn / Phone

*Per-touch breakdown:*
| Day | Channel | Touch type | Draft? |
|---|---|---|---|
| 1 | LinkedIn | Connect | — |
| 2 | Email | Primary pitch | ✅ T3 draft attached |
| 4 | Phone | Call + VM script | ✅ T1 script attached |
| ...

*Expected outcome (based on industry benchmarks):*
- Reply rate: 4-7% (vs ~1% email-only)
- Meeting book rate: 2-3% (vs <1% email-only)

*Performance to track:*
- Per-touch engagement
- Drop-off curve (which touch most reps stop on)
- Reply-to-meeting conversion
```

## Connectors

- SEP (Outreach / Salesloft / Apollo / Smartlead)
- CRM
- LinkedIn (Sales Nav)
- Phone system (Aircall / Dialpad / Salesforce native)
- Slack

## Gotchas

- Don't fire all channels on the same day — feels stalking
- Phone touches are higher friction than reps want — but reps who skip phone book half the meetings
- Senior personas (VP+) need longer cadences with more space — don't intensity-spam them
- Track and prune — keep touches that work, kill touches that don't
