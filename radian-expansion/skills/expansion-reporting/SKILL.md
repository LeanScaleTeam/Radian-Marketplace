---
name: expansion-reporting
description: Standing report on NRR, GRR, renewal forecast, expansion pipeline — agreed across finance, CS, and sales. Use monthly and quarterly; board prep.
---

# expansion-reporting

## When to use

- Monthly RevOps / leadership review
- Quarterly board / VC update
- Pre-fundraising prep (NRR is THE metric)
- When finance / CS / sales disagree on retention numbers

## Core principle

**Investors and boards treat NRR as the top SaaS metric — but most companies calculate it inconsistently across teams.** Renewal forecasts are typically less accurate than new-business forecasts. Expansion pipeline is rarely tracked with new-business rigor.

## Standard metric definitions (lock these)

| Metric | Formula | Period |
|---|---|---|
| **GRR** | (Starting ARR − Churn − Downsell) ÷ Starting ARR | Trailing 12 months |
| **NRR** | (Starting ARR − Churn − Downsell + Expansion) ÷ Starting ARR | Trailing 12 months |
| **Logo retention** | (Customers at period end ÷ Customers at period start, of cohort) | Trailing 12 months |
| **Renewal forecast accuracy** | Forecasted ÷ Actual | Per cycle |
| **Expansion ARR** | $ from upsell + cross-sell, period | Period-specific |

**Critical:** finance + CS + sales must agree on these formulas BEFORE running the report. Disagreement on calculation is the #1 source of distrust.

## Sections

1. **NRR / GRR headline**
   - Current trailing 12 months
   - vs. last quarter
   - vs. plan / target

2. **By segment**
   - Enterprise / Mid-market / SMB breakdown
   - NRR varies wildly by segment; aggregate hides reality

3. **Renewal forecast (next 90 days)**
   - $ at risk / committed / closed-won
   - Confidence by stage

4. **Expansion pipeline**
   - Upsell + cross-sell pipeline (open opps)
   - Velocity (created → closed)
   - Win rate (vs. new-biz win rate)

5. **Churn analysis**
   - $ churned (period)
   - Top churn reasons
   - Saves vs. churns

6. **Forward-looking flags**
   - At-risk renewals in next 90 days
   - Upsell opportunities being held back
   - Patterns predicting next-quarter NRR

## Workflow

1. Pull data from CRM + CS tool + finance system
2. Apply locked formulas
3. Generate trend lines (4 quarters)
4. Cross-check finance numbers (must match)
5. Synthesize narrative TL;DR
6. Deliver: monthly to leadership, quarterly to board

## Output format

```markdown
*Expansion Report — [Quarter]*

*TL;DR:* [2 sentences]

*Retention headline:*
| Metric | This Q | Last Q | Plan | Trend |
|---|---|---|---|---|
| NRR | 112% | 108% | 115% | ⬆️ |
| GRR | 91% | 93% | 92% | ⬇️ |
| Logo retention | 88% | 90% | 90% | ⬇️ |

*By segment:*
[breakdown]

*Renewal forecast (next 90 days):*
| Status | $ | # opps |
| Closed-won | $X | N |
| Commit | $Y | M |
| Upside | $Z | K |
| At-risk | $A | P |

*Expansion pipeline:*
- Open: $X
- Velocity: Y days (vs. new-biz Z days)
- Win rate: A% (vs. new-biz B%)

*Top churn reasons (last 90d):*
1. [reason] — $X
2. [reason] — $Y

*Action items:*
- ...
```

## Connectors

- CRM (required)
- CS tool
- Finance system (for ARR baseline reconciliation)
- Slack + email (delivery)

## Gotchas

- Lock the formulas. Finance/CS/sales must agree before publishing.
- Trailing-12 is the standard — don't switch to "this quarter only" mid-year
- Logo retention != $ retention. Track both.
- Saves are a leading indicator — track save rate over time
