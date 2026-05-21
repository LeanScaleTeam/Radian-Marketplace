---
name: sdr-ae-handoff
description: Package an SDR-qualified meeting into a high-quality handoff briefing for the AE — so the AE doesn't re-discover what the SDR already learned. Use when an SDR books a meeting, or when an AE complains about poor handoff quality.
---

# sdr-ae-handoff

## When to use

- SDR books a meeting (auto-trigger on calendar event creation)
- AE asks "what do I need to know before this call?"
- Audit: review handoff quality across a cohort of recent meetings

## Core principle

**Re-discovery breaks trust on both sides.** Prospect feels processed. AE stops trusting SDR work. Handoff quality is consistently a top-3 friction point in inbound sales.

## What goes in the handoff

1. **The basics**
   - Account + contact + role
   - How the meeting was booked (inbound / outbound / referral)
   - Date / time / format

2. **What the SDR learned**
   - Stated pain / use case
   - Team / company context discovered
   - Budget / timing signals (if surfaced)
   - Competitive presence (if mentioned)
   - Decision process hints

3. **What the SDR promised**
   - Materials sent in advance
   - Specific topics committed to
   - Other stakeholders invited

4. **AE prep recommendations**
   - 3 discovery questions tailored to what's known
   - 1-2 case studies that fit the context
   - Specific pre-call research the AE should do

## Workflow

1. Trigger: meeting booked (calendar event + CRM activity from SDR)
2. Pull the SDR's discovery conversation (call transcript or notes)
3. Pull account + contact enrichment
4. Generate the structured handoff
5. Deliver via Slack to the AE 24h before meeting + 1h before meeting (reminder)
6. Log handoff in CRM

## Output format

```markdown
*AE Handoff — [Account] / [Contact] / [Meeting Date]*

*Account:* [name], [industry], [size]
*Contact:* [name], [role], [tenure]
*Source:* [inbound / outbound / referral]
*Meeting:* [date] / [duration] / [Zoom link]

*What [SDR] learned:*
- **Pain:** [specific]
- **Trigger:** [why now]
- **Decision process:** [hints]
- **Stakeholders mentioned:** [list]
- **Budget signals:** [if any]
- **Competitive:** [if any]

*Promised materials:*
- [doc sent]
- [topics committed to]

*Recommended approach:*
- Open with: [hook based on stated pain]
- Discovery focus: [areas SDR didn't cover deeply]
- Case study fit: [matching customer]

*Pre-call action items:*
- [ ] Review [contact]'s LinkedIn
- [ ] Skim [recent company news]
- [ ] Pre-load [case study]
```

## Connectors

- CRM (required)
- Gong / Fireflies (for SDR call transcripts)
- Calendar (for meeting trigger)
- Slack (delivery)

## Gotchas

- If the SDR didn't capture key fields, flag that to coach the SDR — don't fabricate
- AEs should be able to override / add to the handoff — it's a starting point not a contract
- Format matters: Slack-friendly, skimmable, can be read on phone before a call
