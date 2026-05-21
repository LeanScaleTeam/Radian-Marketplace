---
name: feature-adoption
description: Drive deeper product usage by detecting under-adopted high-value features and triggering in-product / CSM nudges. SaaS-specific. Use continuously per customer; cohort reports monthly.
---

# feature-adoption

## When to use

- Continuously per customer (background monitoring)
- Before renewal conversations
- Pre-tier-upgrade ask (does the customer use enough to justify a higher tier?)
- When product launches a new feature (track adoption curve)

## Core principle

**The average SaaS product has ~80% of features used by <10% of users** (Pendo). Each unused feature is a renewal risk — customer rationalizes paying less. Adoption-driven NRR outperforms acquisition-driven growth in mature SaaS.

## Workflow

1. Define feature-value tiers per portco:
   - **Core features:** must use to get any value
   - **Power features:** drive deep value + retention
   - **Differentiator features:** justify higher tiers / competitive position
2. Per customer, compute adoption against each tier
3. Identify gaps:
   - Customer paying for power features but using only core
   - High-value features <X% adoption across cohort
4. Trigger plays:
   - In-product nudge / tooltip / email tour
   - CSM-led training session offer
   - Use-case spotlight (case study of similar customer using the feature)
5. Track adoption lift per intervention

## Output format

Per customer:

```markdown
*Feature Adoption — [Account]*
*Tier:* [Pro / Enterprise / etc.]
*Adoption score:* 42% (core 92%, power 31%, differentiator 0%)

*Under-utilized high-value features:*
- [Feature X] — paying for it, never used
- [Feature Y] — used by 2 of 10 seats

*Recommended next move:*
- Offer 30-min "[Feature X]" training to champion + 2 power users
- Reference: [similar customer] increased NRR by N% after activating [Feature X]
```

Monthly cohort report:

```markdown
*Feature Adoption — Cohort [Q]*

*Top adopted features:*
| Feature | % accounts | Trend |
|---|---|---|

*Under-adopted high-value features:*
| Feature | % accounts | $ tied to non-adopters |
|---|---|---|

*Adoption-driven expansion candidates:* N accounts ready for tier upgrade
*Adoption-driven churn risk:* M accounts at risk (high tier, low usage)
```

## Connectors

- Product analytics (Amplitude / Mixpanel / Heap) — required
- CS tool (account context)
- CRM (renewal date, tier)
- Email + in-app messaging (Pendo / Appcues) for nudges
- Slack (CSM alerts)

## Gotchas

- Define features by VALUE not by complexity — high-value features get the focus
- Don't force adoption — feature exists ≠ customer needs it. Match feature to use case.
- Track adoption curve from feature launch — slow ramp = product issue, not adoption issue
- Renewal-stage feature gaps are higher priority than early-cycle
