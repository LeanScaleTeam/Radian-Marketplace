---
name: product-fulfillment-reporting
description: Unified customer health, delivery quality, and operational performance report — joined view across the 4-7 tools that today fragment the picture. Use weekly/monthly for CS leadership.
---

# product-fulfillment-reporting

## When to use

- Weekly CS standup
- Monthly CS leadership review
- Quarterly board prep (NRR / GRR narrative)
- Pre-pricing change (baseline health metrics first)

## Core principle

**Customer reporting maturity correlates strongly with NRR performance** (Forrester). Most B2B companies have 4-7 separate tools tracking customer signals — never joined operationally. Leadership ends up acting on anecdote, not data.

## Sections

1. **Onboarding health**
   - New customers in period
   - Avg time-to-value
   - Activation rate (D30, D60, D90)
   - Kickoff quality score

2. **Ongoing delivery health**
   - Status visibility cadence compliance
   - Feature adoption (SaaS) / deliverable on-time rate (services)
   - CSAT / NPS trend

3. **Support health**
   - First-response time
   - Resolution time
   - Ticket volume + trend
   - First-contact resolution rate

4. **Customer health composite**
   - % accounts healthy / watch / at-risk / critical
   - ARR at risk
   - Churn signals trending up

5. **Retention metrics**
   - Gross retention (last 12 months)
   - Net retention
   - Logo retention
   - Churn $ (last 90 days, segmented by reason)

6. **CSM capacity allocation**
   - % time on at-risk
   - % time on healthy / expansion
   - Coverage ratios (CSM:account)

## Workflow

1. Pull from all systems in parallel (CRM, CS tool, product analytics, support tool, PM tool)
2. Compute the standard metrics
3. Generate trend lines (90d window)
4. Surface anomalies
5. Synthesize narrative TL;DR
6. Deliver to CS leadership via Slack + email

## Output format

```markdown
*Customer Success Report — [Period]*

*TL;DR:* [2-sentence verdict]

*Onboarding:*
| Metric | This period | Last period | Trend |

*Ongoing delivery:*
| Metric | ... | ... | ... |

*Support:*
| Metric | ... | ... | ... |

*Customer health:*
- Healthy: X% ($A ARR)
- Watch: Y% ($B)
- At-risk: Z% ($C)
- Critical: A% ($D) 🔴

*Retention:*
- GRR: X% (last 12 mo)
- NRR: Y%

*CSM capacity:*
- At-risk work: X% (target Y%)

*Anomalies to investigate:*
- ...
```

## Connectors

- CRM (required)
- CS tool (required)
- Product analytics (required for SaaS)
- Support tool (required)
- PM tool (required for services)
- Slack + email (delivery)

## Gotchas

- Define metrics consistently across teams — finance, CS, sales all calculate NRR differently if you let them
- Don't change methodology mid-quarter (breaks trend lines)
- Always lead with narrative — raw dashboards don't drive action
