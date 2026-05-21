---
name: champion-job-change-play
description: Detect when a champion at a current customer takes a new role at a different company — then run BOTH plays (protect the original account, pursue the new company). Use continuously.
---

# champion-job-change-play

## When to use

- Continuous monitoring (LinkedIn + enrichment signal)
- Quarterly audit of customer champions still in place
- Major hiring wave at customers (new role for champion to move into)

## Core principle

Champion job change is a **double signal:**
1. **Risk** at the original customer — relationship is now uncertain
2. **Opportunity** at the new company — your warmest possible outbound, ever

Most companies catch one side, miss the other.

## Workflow

1. **Monitor known champions for job changes**
   - LinkedIn webhook / scrape (within terms)
   - Enrichment provider's job-change feed
   - Email bounces from corporate addresses (proxy signal)

2. **On detection:**

   **Play A — Protect the original customer**
   - Alert CSM within 24h
   - Identify replacement champion (who's their successor, peer)
   - CSM outreach to original org: re-introduction, re-establish value
   - Risk flag in `churn-risk-detection`
   - Adjust health score downward (champion departure is a high-weight signal)

   **Play B — Pursue the new company**
   - Alert SDR / AE
   - Wait 30-60 days (let the champion settle into the role)
   - Personalized outreach referencing the prior relationship
   - "We loved working with you at [old company]. Now you're at [new company]..."
   - Expected conversion: 30-50% — vs. <5% on cold outbound

3. **Track outcomes:**
   - Customer A retention rate when champion leaves
   - Customer B (new account) conversion rate from this play
   - Both numbers belong on the GTM dashboard

## Output format

Per detection:

```markdown
*🔄 Champion Job Change Detected*

*Champion:* [name]
*Old role:* [title] at [old company] (our customer, $X ARR)
*New role:* [title] at [new company] (not a customer)
*Detected:* [date / source]

*Play A — Protect [old company]:*
- CSM: [name]
- Replacement champion to identify: [suggestion]
- Outreach plan: [steps]
- Renewal date: [date] — risk-flagged in health
- Initial action: re-intro email to [successor or peer] within 24h

*Play B — Pursue [new company]:*
- Wait until: [date — 30-45 days from move]
- Assigned AE: [name]
- Personalized outreach drafted (in thread)
- Expected fit: [high / medium] — [new company] is in our ICP
- Reference: [old company] case study attached

*Both plays will be tracked weekly until closed.*
```

Quarterly report:

```markdown
*Champion Job Change Plays — [Quarter]*

*Detections:* N
*Play A outcomes:*
- Customers retained: X/N
- Customers churned: Y/N (vs. baseline churn rate)
- ARR protected: $Z

*Play B outcomes:*
- New accounts engaged: K
- New accounts → meeting: P
- New accounts → opp: Q ($R)
- Conversion rate: S% (vs. cold baseline T%)
```

## Connectors

- LinkedIn (Sales Nav or via enrichment provider)
- Enrichment provider with job-change feed (Clay / UserGems / Common Room)
- CRM
- CS tool
- Slack (alerts)

## Gotchas

- Speed matters on Play A — competitor reps reach out to the old champion (now in the new role) within days
- Wait on Play B — too-early outreach (week 1) feels stalkerish
- Update the champion record across BOTH companies once detected (they're now your champion at the new place)
- Track this play's ROI explicitly — it's the highest-ROI motion in modern B2B sales when done right
