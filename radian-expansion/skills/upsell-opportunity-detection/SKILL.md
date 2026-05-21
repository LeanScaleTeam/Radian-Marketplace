---
name: upsell-opportunity-detection
description: Detect customers ready to expand (more seats, higher tier) before they ask — usage hitting limits, capacity ceilings, adoption patterns. Use continuously; surface top opportunities weekly.
---

# upsell-opportunity-detection

## When to use

- Continuous monitoring
- Pre-QBR / value review
- Pre-renewal (upsell offers go in renewal package)
- Post-product-update (new features may unlock new tiers)

## Core principle

**Usage-driven expansion outperforms time-based campaigns by 3-5x** (Gainsight/Vitally). NRR is the #1 metric SaaS investors track. Most expansion comes from existing seats/usage exceeding plan, not new products.

## Signals to watch

| Signal | Source | Maps to |
|---|---|---|
| Seat utilization >85% | Product analytics | More seats |
| Active power-user count exceeded tier limit | Product analytics | Higher tier |
| Usage of paid-tier features attempted (rate limited / blocked) | Product analytics | Upgrade |
| Frequent feature requests blocked by tier | Product / support | Upgrade |
| New use case discussed on calls | Gong / Fireflies | Tier or add-on |
| Champion expansion within their org | LinkedIn / enrichment | Account expansion |
| Multiple departments using product | Product analytics | Enterprise tier |

## Workflow

1. Pull product usage, account data, recent activity
2. Match signals to upsell offers per portco's product / pricing model
3. Score readiness:
   - **Ready now** — clear signal, ready conversation
   - **Approaching ready** — trending toward signal, plant the seed
   - **Not ready** — no signal, don't push
4. For ready accounts, generate:
   - The upsell story (their data, their usage, their fit)
   - The recommended package + price
   - The CSM call script
5. Notify CSM via Slack with offer ready
6. Track conversion rate from signal → conversation → closed expansion

## Output format

Per opportunity:

```markdown
*Upsell Opportunity — [Account] — Ready now*

*Signal:* Seat utilization at 92% (78/85 seats), trending up 4% MoM
*Recommended offer:* Add 20 seats — $X annual
*Alternative:* Upgrade to next tier (200 seats included) — $Y annual

*The story for the customer:*
> Over the last 90 days, your team's usage has grown 40%. You're at 92% of your seat capacity and projected to hit the cap in ~18 days. Adding seats now keeps your team productive; alternatively, upgrading to [tier] gives you 2x headroom plus [features they'd benefit from].

*Champion to approach:* [name]
*EB to loop in:* [name]
*Suggested timing:* this week
*Risk if delayed:* team gets blocked at cap → frustration → churn signal
```

Weekly digest:

```markdown
*Upsell Opportunities — week of [date]*

*Ready now:* N opportunities, $X potential ARR
*Approaching ready:* M opportunities
*New this week:* K

*Top 5 to action:*
| Account | Signal | Offer | $ |
|---|---|---|---|

*Conversion (last 90 days):*
- Signaled → conversation: X%
- Conversation → closed: Y%
- $ closed expansion: $Z
```

## Connectors

- Product analytics (required)
- CRM (required)
- CS tool
- Gong / Fireflies
- Slack (delivery)

## Gotchas

- Don't push when customer is in a churn-risk window — sequence renewal first
- Multiple weak signals < one strong signal — quality over volume
- Track time-to-conversation per signal — slow followup = lost opportunity
