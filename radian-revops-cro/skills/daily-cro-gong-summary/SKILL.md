---
name: daily-cro-gong-summary
description: End-of-day summary of today's recorded calls, delivered to Slack for the CRO. Use when scheduled at EOD, when the user says "daily CRO summary", "Gong recap", or "what happened on calls today".
---

# daily-cro-gong-summary

## When to use

- Scheduled EOD cron / cloud agent (typical use)
- Ad-hoc "what happened on calls today" from CRO
- Pre-1:1 prep for CRO with sales managers

## Core principle

**A CRO doesn't want every call summarized — they want the ones that mattered.** Optimize for signal: deals at risk, wins to celebrate, problems to act on. Skip routine pipeline calls unless something material changed.

## Workflow

1. **Pull today's recorded calls** (Gong or Fireflies, whichever is wired)
   - Limit to calls owned by sales / CS team
   - Skip internal-only meetings
   - Skip calls < 5 min (likely no-shows or cancellations)

2. **Link each call to a Salesforce opp / account** where possible
   - Pull current stage, ACV, close date for opps
   - Pull renewal date + ARR for customer accounts

3. **Classify each call by signal type**
   - **Material progress** — stage change, EB engaged, contract sent, closed-won
   - **Material risk** — new objection, competitor mentioned, champion change, slip
   - **Renewal / expansion** — usage, satisfaction, expansion signal
   - **Routine** — discovery, demo, status — only include if something stood out

4. **Synthesize the top 5–8 items**
   - Lead with wins (positive psychological framing for CRO's EOD)
   - Then risks (action-required)
   - Then notable progress
   - Routine stuff → roll up into one line ("N other calls today, no material signal")

5. **Format and deliver to Slack**
   - DM to CRO (channel configurable per portco)
   - Threaded structure: TL;DR up top, details in thread for drill-down

## Output format

```markdown
🎯 *Daily Call Summary — [Date]*

*TL;DR:* [N total calls. M material signals. K wins, J risks.]

✅ *Wins*
• [Account] — [what happened] ([owner])
• ...

⚠️ *Risks*
• [Account] — [specific risk] ([owner], [recommended action])
• ...

📈 *Notable progress*
• [Account] — [what moved] ([owner])
• ...

_[N other calls today, no material signal]_

🔗 [Gong/Fireflies link to today's recordings]
```

## Connectors used

- Gong or Fireflies (transcripts) — required
- Salesforce (opp + account linkage) — required
- Slack (delivery) — required

## Gotchas

- Don't summarize calls where the transcript is incomplete or low-confidence — flag them instead
- Don't include calls that mention sensitive HR / personnel matters
- Always link each item to the specific opp/account in Salesforce — the CRO will want to drill in
- Calibrate "material" per portco — early-stage startup, every $50K deal is material; growth-stage, maybe only $500K+
