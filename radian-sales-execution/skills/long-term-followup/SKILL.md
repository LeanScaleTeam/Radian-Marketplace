---
name: long-term-followup
description: Keep cold / "not now" prospects warm until they're ready to buy — instead of letting them disappear and re-buy from a competitor. Use for closed-lost-no-decision, "ask me Q4" prospects, and 6+ month dormant deals.
---

# long-term-followup

## When to use

- A prospect says "not now" or "ask me again in [N] months"
- A deal closes closed-lost-no-decision (vs. competitor or actively rejected)
- A prospect goes silent mid-cycle and standard follow-up exhausts
- Quarterly sweep of stalled deals from 6+ months ago

## Core principle

**Chet Holmes 3% rule:** only 3% of any market is in-buying mode now. 60-80% of closed-lost deals eventually buy — rarely from the rep who let them cool. B2B buying cycles span 6-24 months; staying top-of-mind during dormancy is decisive.

## What this skill manages

A long-term nurture queue, distinct from marketing nurture:

| Bucket | Cadence | Type of touch |
|---|---|---|
| "Ask me in N months" — specific date | Touch ~7 days before stated date | Personal: "you mentioned reaching back out — still the right time?" |
| Closed-lost-no-decision | Quarterly | New angle (product update, similar customer win, industry shift) |
| Stalled mid-cycle | Monthly for 3 months, then quarterly | Personal: continue the prior conversation |
| Champion left the account | One-time outreach to find replacement | Account-level approach, new contact |

## Workflow

1. Pull stalled / closed-lost / "ask me later" records
2. For each, assign a re-engagement schedule
3. On each re-engagement trigger:
   - Pull fresh context (account news, product updates, similar wins)
   - Generate a personalized touch with a NEW angle
   - Deliver as draft to rep via Slack
   - Rep reviews → sends from inbox

## Output format (per re-engagement event)

```markdown
*Long-Term Follow-up — [Contact] / [Account]*
*Last interaction:* [date] / [outcome]
*Status:* "Ask me in Q4" — Q4 starts in 7 days

*Fresh context since last touch:*
- [Their company news]
- [Our product update relevant to their stated pain]
- [Similar customer win]

*Draft message:*
Hey [Name],

When we last talked in [month], you mentioned [their pain] and wanting to revisit when [their stated trigger]. That timing is approaching now.

[New angle / value drop in 1-2 sentences]

Still the right time to chat?

*Why this works:*
- References their words from last time (proves real follow-up)
- Brings new value, not "just checking in"
- Low-commit CTA

*Rep action:* review, copy to inbox, send.
```

## Quarterly batch report

```markdown
*Long-Term Follow-up Queue — [Quarter]*

*Total managed:* N prospects in long-term nurture
*Due this week:* M prospects (drafts in Slack threads)

*Recent wins from queue:*
- [Account] — re-engaged after 14 months, $X opp
- [Account] — re-engaged after 8 months, demo booked

*Conversion stats (last 12 months):*
- Re-engaged: X
- Responded: Y (Z%)
- Booked meeting: A (B%)
- Closed-won: C ($D)
```

## Connectors

- CRM (required)
- Gong / Fireflies (prior conversation context)
- News API / enrichment (fresh context)
- Slack (draft delivery)

## Gotchas

- "Just checking in" is banned — always bring something new
- Don't auto-fire if the rep / company relationship is broken — escalate
- Respect the date the prospect named — too-early follow-up burns the relationship
- Track conversion-from-queue as a metric — proves the skill's value

## Scope distinction

- This skill: prospects who DID engage with sales then went cold
- `radian-marketing-ops::cold-lead-reengagement`: leads who entered the database but never engaged with sales
