---
name: on-request-enrichment
description: Ad-hoc, rep-triggered research on an account, contact, or specific question (tech stack, org chart, news, competitive context). Use when a rep asks for "research on X" mid-deal — distinct from scheduled pre-call prep.
---

# on-request-enrichment

## When to use

- Rep mid-deal needs intelligence the standard pre-call brief didn't cover
- "Who's the EB at this account?"
- "What's their tech stack?"
- "Have they been hiring in [function]?"
- "What's [competitor] saying about us in this market?"
- Account map / org chart request

## Core principle

**Reps spend ~21% of their time on research and admin** (Salesforce). Top performers prep more but trade off less outreach. This skill removes the tradeoff — research that used to take 30-60 min returns in under 5.

## Common request types

| Request | What it pulls |
|---|---|
| Org chart / stakeholder map | LinkedIn + enrichment, find reports/peers of known contact |
| Tech stack | BuiltWith / Wappalyzer + enrichment + job posting analysis |
| Recent news | News API + RSS + LinkedIn company page |
| Hiring signals | LinkedIn jobs + Crunchbase + company careers page |
| Funding / financials | Crunchbase / PitchBook / SEC filings if public |
| Competitive context | Web search for "[competitor] vs [our company]" + recent reviews |
| Customer references | Public case studies + LinkedIn employee posts |
| Decision process history | Search for similar buying decisions at this account |

## Workflow

1. Parse rep's request (free text)
2. Identify request type
3. Run targeted pulls (parallel where possible)
4. Synthesize 5-10 facts (not a dump)
5. Return to rep via Slack thread or DM
6. Log query → response in a knowledge cache so the next rep doesn't re-research

## Output format

```markdown
*Research — [Account] / [Request]*

*Quick read:* [1-sentence answer to the rep's question]

*Key facts:*
- [fact 1 with source]
- [fact 2 with source]
- [fact 3 with source]

*If digging deeper:*
- [follow-up source 1]
- [follow-up source 2]

*Cached:* This research is saved — next rep asking similar gets it instantly.
```

## Connectors

- Enrichment provider (Clay / Apollo / ZoomInfo)
- LinkedIn (Sales Nav)
- Web search / news API
- BuiltWith / Wappalyzer
- Crunchbase / PitchBook (if licensed)
- Slack (delivery)

## Gotchas

- Cache results — same request asked twice = waste
- Time-box: if research takes >5 min, return partial + flag what's still pending
- Synthesize, don't dump — rep won't read 30 fields
- Surface source on every fact so the rep can drill in if needed

## Scope distinction

- `pre-call-prep`: scheduled, comprehensive, every external meeting
- This skill: ad-hoc, surgical, rep-initiated for a specific question
