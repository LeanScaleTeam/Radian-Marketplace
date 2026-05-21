---
name: win-loss-analysis
description: Systematic post-deal analysis on wins AND losses to surface what's actually driving outcomes. Use continuously; quarterly synthesis to leadership.
---

# win-loss-analysis

## When to use

- Continuous post-deal capture
- Quarterly synthesis to leadership
- Post-major loss (single-deal deep dive)
- After segment / pricing / product change (impact analysis)

## Core principle

**Win/loss programs consistently lift win rates 15-30% in year one** (Klue / Crayon). Buyers share honest reasons in post-deal interviews — they rarely tell the rep at the time. Most CRMs capture loss reason as a forced dropdown — useless for real learning.

## What gets captured

For each closed deal (won AND lost):

1. **Structured fields** (CRM)
   - Outcome
   - Reason (multi-select + free text)
   - Competitive (won/lost to whom)
   - Champion / EB strength score

2. **Buyer interview** (where possible)
   - 20-30 min, 6-8 weeks post-close
   - Conducted by neutral third party or non-sales
   - Recorded + transcribed

3. **Internal team interview** (rep + manager)
   - Their version vs. customer's version (usually different)

## Common questions per outcome

### For wins:
- Why us, not [competitor / status quo]?
- What in our approach mattered most?
- What was the moment you decided?
- Who else internally was advocating / blocking?

### For losses:
- What were you trying to solve, and how did you solve it?
- Where did we lose you in the process?
- Was it product, price, timing, fit, sales experience?
- What would we have needed to do differently?

## Workflow

1. Continuously capture structured CRM data on every closed deal
2. Identify deals for interview:
   - All deals above $X ACV
   - Strategic losses
   - Repeated patterns
3. Conduct interviews (or send to external W/L firm)
4. Tag findings:
   - Product / pricing / sales execution / positioning / timing / fit
5. Aggregate quarterly:
   - Win pattern themes
   - Loss pattern themes
   - Competitive head-to-head data
   - Segment-specific dynamics
6. Feed back to:
   - Sales (coaching frames)
   - Product (`sales-product-feedback`)
   - Marketing (`sales-marketing-feedback`)
   - Leadership (strategic patterns)

## Output format

Quarterly synthesis:

```markdown
*Win/Loss Analysis — [Quarter]*

*Deals analyzed:* N (X wins, Y losses)
*Interviews conducted:* M

*Top win themes (last quarter):*
1. [Theme] — % of wins cite this
2. [Theme]
3. [Theme]

*Top loss themes:*
1. [Theme] — % of losses cite this
2. [Theme]
3. [Theme]

*Internal vs. customer narrative gap:*
- Reps said X, customers said Y in N% of cases
- Most common rep misattribution: [pattern]

*Competitive head-to-head (last quarter):*
| Competitor | Deals competed | Win rate | Top reason we lose |
| [Comp A] | 22 | 68% | Pricing |
| [Comp B] | 14 | 43% | Feature gap [X] |

*Segment patterns:*
- [Segment] — wins concentrated when [pattern]
- [Segment] — losses concentrated when [pattern]

*Action items:*
- Sales: refresh objection handling for [loss reason]
- Product: surface [feature gap] in roadmap (with $impact)
- Marketing: refresh messaging on [theme that wins]
- Pricing: investigate [pattern]
```

## Connectors

- CRM (structured outcome data)
- Calendar (interview scheduling)
- Interview transcription (Otter / Fireflies for these specific calls)
- Slack (action item delivery)
- Optional: W/L platform (Klue / Crayon / TruVoice)

## Gotchas

- Reps' loss reasons are often wrong — interview the customer
- Win analysis is as valuable as loss — don't skip wins
- Quarterly cadence — too frequent = pattern noise; less = stale
- Close the loop with action items, or the program dies
