---
name: churn-signal-scan
description: Scan customer accounts for churn signals — usage drops, support escalations, champion departures, negative call sentiment. Use weekly, before QBRs, or when the user says "who's at risk", "churn signals", or "scan the book".
---

# churn-signal-scan

## When to use

- Weekly CS / RevOps health check (typical use)
- Pre-QBR risk surfacing (CS lead prep)
- After a major product issue, outage, or pricing change
- When a renewal cohort is approaching the 90-day window
- Board prep — gross retention narrative

## Core principle

**Churn rarely surprises you — the signals were all there, just not aggregated.** This skill exists to surface those signals before the renewal call, not after.

## Signal taxonomy

| Signal | Source | Weight |
|---|---|---|
| Usage drop (>30% week-over-week) | Product analytics | High |
| Login frequency drop | Product analytics | High |
| Support ticket spike + negative sentiment | Support tool | High |
| Champion job change | LinkedIn / enrichment | High |
| Negative call sentiment (last 14d) | Gong / Fireflies | Medium |
| Renewal within 90 days + no engagement in 30d | Salesforce + activity | High |
| Executive turnover at customer | News / enrichment | Medium |
| Expansion blocked / postponed | Salesforce opp activity | Medium |
| Mentioned competitor on call | Gong / Fireflies | Medium |
| Slow response to outreach (>14d) | Email / Slack | Low |

## Workflow

1. **Define the book** (configurable)
   - Default: all open customer accounts (ARR > 0, not in churn-complete state)
   - Optional scope: specific segment, CSM, renewal cohort

2. **Pull signals across all sources in parallel**
   - Product analytics for usage (Amplitude / Mixpanel / Heap / Snowflake)
   - Support tool for ticket volume + sentiment (Zendesk / Intercom)
   - Gong/Fireflies for call sentiment in last 14 days
   - Salesforce for renewal date, activity, opp status
   - Enrichment for champion job changes

3. **Score each account**
   - Composite score weighted by signal type
   - Adjust weight by ARR (a $500K account with 2 medium signals > $20K account with 4 high signals — for prioritization)

4. **Output top-N at-risk**
   - Default: top 10 by composite score × ARR
   - For each: signal stack, ARR at risk, days to renewal, CSM owner, recommended action

## Output format

```markdown
*Churn Signal Scan — [Date]*

*Total at-risk ARR:* $X across N accounts (top 10 below)
*Vs. last week:* +/- $Y (mention deltas)

🚨 *Top at-risk accounts*

1. *[Account]* — $ARR — renewal in N days — CSM: [name]
   - 🔴 Usage dropped 45% WoW
   - 🔴 Champion left (LinkedIn signal, 12d ago)
   - 🟡 No CSM touch in 23 days
   - *Recommended:* exec sponsor outreach this week, escalate to CRO

2. ...

*Newly at-risk this week:*
- [Account] — [signal that just appeared]

*Recovered from at-risk:*
- [Account] — [why no longer at-risk]
```

## Connectors used

- Salesforce — account data, renewal dates, CSM ownership (required)
- Product analytics — usage signals (highly recommended)
- Support tool — ticket signals
- Gong / Fireflies — call sentiment
- Slack — delivery to CS leadership

## Gotchas

- Don't flag accounts as at-risk based on a single signal — composite is more reliable
- Calibrate sensitivity per portco — early-stage might want every signal; mature might want only ARR > $50K
- Always include the CSM owner — alerts without an owner go ignored
- If product analytics isn't wired, flag that the score is incomplete rather than producing a misleading "low risk" reading
