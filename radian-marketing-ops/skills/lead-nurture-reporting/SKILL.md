---
name: lead-nurture-reporting
description: Nurture program performance report — database engagement health, nurture-to-MQL conversion, program-level effectiveness. Use monthly or when the user says "nurture report", "database health", or "are our drips actually working".
---

# lead-nurture-reporting

## When to use

- Monthly nurture review
- Before deciding to invest in more nurture content
- When the marketing database grows but pipeline doesn't keep up
- Quarterly: is nurture justifying its cost?

## Core principle

**Nurture is the least-measured marketing investment.** Most teams track email opens/clicks without tying them back to pipeline. Without measurement, nurture becomes a "we should be doing this" reflex with no ROI math.

## Standard sections

1. **Database health**
   - Total leads
   - Active (engaged in last 90d) — %
   - Dormant (90-180d) — %
   - Dead (>180d) — %
   - Trend over time (health getting better or worse?)

2. **Program performance**
   - Active nurture programs (welcome / industry drip / role-based / re-engagement)
   - Open / click / unsubscribe rates per program
   - Conversion to MQL per program

3. **Nurture → pipeline contribution**
   - $ pipeline sourced from nurture-touched leads (vs. cold leads)
   - $ closed-won attributed
   - LTV of nurture-converted customers vs. direct acquisition

4. **Program ROI**
   - Cost per program (production + tool cost)
   - Pipeline + closed-won per program
   - Net ROI

5. **Decay watch**
   - Programs trending down on open rate (creative fatigue)
   - Programs with rising unsubscribes (irrelevant / misaligned)

## Workflow

1. Pull engagement data (MA) + pipeline data (CRM)
2. Join nurture-touched leads to opportunities
3. Compute program-level metrics
4. Compare program ROI against acquisition channels
5. Flag programs to cut, scale, or refresh
6. Deliver to Slack + email to marketing lead

## Output format

```markdown
*Lead Nurture Report — [Month]*

*Database health:*
- Active (last 90d): 42% (+2pp MoM)
- Dormant (90-180d): 31% (-1pp)
- Dead (>180d): 27% — needs re-engagement or archive

*Program performance:*
| Program | Active leads | Open rate | CTR | MQL conv |
|---|---|---|---|---|
| Welcome | 1,200 | 38% | 6% | 12% |
| Industry: SaaS | 800 | 22% | 3% | 4% |
| Role: Sales leaders | 450 | 35% | 8% | 18% 🟢 |
| Re-engagement | 2,100 | 12% | 1% | 1% 🔴 |

*Nurture → pipeline (last 90d):*
- Nurture-touched leads: $X pipeline, $Y closed-won
- Non-nurture-touched: $X pipeline, $Y closed-won (control)
- Uplift: Z%

*Decisions:*
- Scale "Role: Sales leaders" — highest ROI, expand persona variants
- Refresh "Industry: SaaS" — open rate decayed; new angle needed
- Pause re-engagement campaign — burning list with no return
```

## Connectors

- Marketing automation (required)
- CRM (required for pipeline join)
- Slack (delivery)

## Gotchas

- Without pipeline join, this is just email reporting — not nurture reporting
- Control groups (non-nurtured cohort) make the ROI math credible — set one up
- Long-cycle products: nurture impact lags 6-12 months — don't kill programs prematurely
