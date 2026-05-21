---
name: pricing-packaging-audit
description: Audit pricing tiers, packaging structure, and willingness-to-pay against how customers actually buy and expand. Use when sales discounts heavily, customers want to upgrade but can't, or pricing hasn't been revisited in 2+ years.
---

# pricing-packaging-audit

## When to use

- Sales discounts heavily — list price isn't trusted
- Customers want to upgrade but the next tier is wrong shape / size
- Pricing was set 2+ years ago and product has grown
- Pre-fundraise (pricing power = quality signal)
- Net retention is flat despite growing product

## Core principle

**Pricing is the highest-leverage lever in SaaS: 1% pricing improvement = ~11% profit lift** (ProfitWell / Price Intelligently). Most B2B revisits pricing every 4+ years (too rarely) and benchmarks to competitors rather than running willingness-to-pay research. Packaging confusion is top-3 closed-lost reason.

## Audit framework

1. **Value metric** — what does pricing scale on? (seats / API calls / data volume / outcomes)
2. **Tier structure** — how many tiers, what's in each, what's the natural upgrade path
3. **Price points** — relative to value delivered and to willingness-to-pay
4. **Discount discipline** — how often / how deep does sales discount
5. **Net expansion behavior** — do customers naturally grow up tiers?
6. **Closed-lost reasons** — is pricing a top reason? Why?
7. **Renewal concessions** — what do customers ask for at renewal?

## Research methods

| Method | Use |
|---|---|
| Internal data analysis | Discount distribution, expansion patterns, lost-deal reasons |
| Customer interviews (won, lost, churned) | Willingness-to-pay, perception of value |
| Van Westendorp pricing study | Quantitative WTP across cohort |
| Conjoint analysis | Trade-offs across packaging dimensions |
| Competitive scan | Where we sit in the market |

## Workflow

1. Pull internal data:
   - Discount distribution by segment / size / rep
   - Expansion path (which tier did customers start at, where are they now)
   - Closed-lost by reason
   - Renewal concessions
2. Interview 10-15 customers (mix of won / lost / churned / expanded)
3. Optionally: run a Van Westendorp WTP study
4. Diagnose:
   - Is the value metric right?
   - Is tier structure causing friction (too few = leap, too many = confusion)?
   - Are price points calibrated?
5. Propose pricing changes:
   - New value metric (if needed)
   - New tier structure
   - New price points
   - Migration plan for existing customers
6. Project the revenue impact (model the change)

## Output format

```markdown
*Pricing & Packaging Audit — [Company]*

*Current state:*
- Value metric: [seats / etc.]
- Tiers: [list with prices]
- Discount distribution: median X%, P90 Y%
- Most common closed-lost-on-price reason: [verbatim]

*Diagnosis:*
- [issues with value metric]
- [issues with tier structure]
- [issues with price points]
- [issues with packaging clarity]

*Recommended changes:*

**New value metric:** [if change needed]

**New tier structure:**
| Tier | Price | What's included | Who it's for |
|---|---|---|---|

**Key changes:**
- [change 1, with rationale]
- [change 2]

**Existing customer migration:**
- Grandfather: which customers / how long
- New tier mapping: ...
- Communication plan: ...

**Revenue projection (modeled):**
- 12-month impact: $X (range $Y - $Z based on adoption assumptions)
- Risk: [churn from customers who feel disadvantaged]
- Upside: [expansion from clearer paths]

*Implementation:*
- Sales enablement: [training on new pricing]
- Website + collateral updates: [scope]
- CSM scripts for existing customers: [scope]
- Validation: [metrics to watch over first 90 days]
```

## Connectors

- CRM (deal data)
- Finance / BI (revenue / margin per tier)
- Customer interview transcripts

## Gotchas

- Don't change pricing more than once every 18-24 months — change fatigue is real
- Grandfather existing customers gracefully — pricing changes can be the trigger for churn
- Test with a small cohort or new-logo only first when possible
- Pricing is a CEO-level decision — don't let it become a marketing/sales debate alone
