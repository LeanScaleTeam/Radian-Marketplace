---
name: sales-marketing-feedback
description: Close the loop between sales floor and marketing — what messaging works, what doesn't, which materials get used, which campaigns source real pipeline. Use monthly; on-demand after a campaign.
---

# sales-marketing-feedback

## When to use

- Monthly sales-marketing sync
- Post-campaign review
- Quarterly marketing planning (what to keep, what to kill)
- After noticeable disconnect (sales says marketing leads are bad, etc.)

## Core principle

**Sales-marketing misalignment costs an estimated 10% of annual revenue** (HubSpot / Marketo). Top 20% of marketing collateral generates 80% of usage — most material is wasted. Marketing-sourced opportunity acceptance rates often <30%.

## What to feedback

1. **Lead quality (sales side):**
   - MQL → SQL conversion by source / campaign
   - Lead disqualification reasons
   - "Garbage" lead patterns

2. **Material usage (sales side):**
   - Which decks / case studies / one-pagers get used in deals
   - Which are sitting unused
   - What's missing that reps build themselves

3. **Field reality (sales → marketing):**
   - What buyers actually say (positioning, objections, language)
   - What competitors are saying that marketing should respond to
   - What messaging resonates vs. falls flat

4. **Marketing performance (marketing side):**
   - What campaigns sourced pipeline vs. vanity metrics
   - Which channels deliver SQL-quality leads

## Workflow

1. Continuous capture:
   - Material usage tracking (DocSend / Highspot / Gong)
   - Lead disqualification reasons from CRM
   - Rep ad-hoc feedback
2. Monthly synthesis:
   - Lead quality by source/campaign
   - Material utilization
   - Field reality themes
3. Bi-directional sync meeting:
   - Sales presents reality
   - Marketing presents data
   - Joint decisions: kill / scale / refine
4. Quarterly: refresh the messaging library based on field reality

## Output format

Monthly digest:

```markdown
*Sales ↔ Marketing Sync — [Month]*

*Lead quality (last 30d):*
| Source | Leads | MQL | SQL | Opp | Sales acceptance % |
| Paid LI | ... | ... | ... | ... | ... |
| Content | ... | ... | ... | ... | ... |

*Top "garbage" patterns (sales feedback):*
- [Pattern] — common in [source]
- [Pattern] — driving wasted SDR time

*Material usage (sales floor):*
| Asset | Times used | Win rate when used |
| [Case study A] | 28 | 64% 🟢 |
| [Case study B] | 3 | 33% 🟡 — under-utilized? |
| [One-pager X] | 0 | — kill or refresh |

*Missing materials (sales requests):*
- Case study for [segment X] — multiple requests, doesn't exist
- Battle card for [Comp Z] — outdated

*Field reality → marketing:*
- Buyers using language: "[verbatim phrase]" — marketing should pick up
- Top objection raised in calls: [objection] — needs message response
- Competitor [X] making new claim: [claim] — marketing CI flag

*Joint decisions:*
- Kill: [campaign / material]
- Scale: [campaign / material]
- Refresh: [campaign / material]
- Produce new: [list]
```

## Connectors

- CRM (lead quality + lost reasons)
- Marketing automation (campaign performance)
- Gong / Fireflies (buyer language)
- Material tracking (DocSend / Highspot / Gong)
- Slack (delivery + feedback intake)

## Gotchas

- This is a two-way ritual — don't let it become marketing-defends-itself
- Track decisions made + follow through — without closure, the loop dies
- Quote actual buyer language verbatim — it's the highest-leverage signal marketing gets
- Material usage data > opinion. Track it.
