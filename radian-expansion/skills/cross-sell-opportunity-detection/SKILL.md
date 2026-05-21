---
name: cross-sell-opportunity-detection
description: For multi-product companies — detect customers using Product A who fit Product B (signals from usage, role, industry, peer benchmark). Use continuously; surface weekly digest.
---

# cross-sell-opportunity-detection

## When to use

- Continuous monitoring (multi-product portcos)
- Pre-QBR / strategic account review
- After a new product launch
- Quarterly cross-sell campaign planning

## Core principle

**Existing customers cost 5-25x less to sell to than new customers** (Bain). Cross-sell rates in B2B SaaS average <20% — far below the ~50% achievable. The biggest gap is signal: Product B teams don't see Product A customers' fit signals.

## Signal types

| Signal | What it tells you |
|---|---|
| Job titles / functions hint at Product B persona | They have the right buyer in-org |
| Product A usage indicates Product B problem | They have the need |
| Mentioned Product B topic on calls / support | Active interest |
| Peer customers with same profile bought Product B | Similar fit pattern |
| Product B competitor mentioned in calls | They're evaluating elsewhere — urgent |
| Account size / industry matches Product B ICP | Strategic fit |

## Workflow

1. For each customer:
   - Pull Product A usage profile
   - Pull contact list (titles, roles)
   - Pull recent call signals
   - Compare to peer customers who bought Product B
2. Score Product B fit (0-100)
3. Classify:
   - **Strong fit + active signal** — pursue now
   - **Strong fit, no signal** — plant the seed via content / CSM intro
   - **Weak fit** — skip
4. For pursue-now: generate the cross-sell brief
5. Route to:
   - AE who owns the account (if they handle expansion)
   - Or product-specialist AE for that line
6. Track cross-sell conversion + LTV uplift

## Output format

```markdown
*Cross-Sell Opportunity — [Account] / Add [Product B]*
*Fit score:* 84/100

*Why this fits:*
- They have [Product B-relevant function] — head + 3 ICs
- Their [Product A usage pattern] is the signature for Product B value
- [Peer customer 1] and [peer customer 2] bought Product B in the last 6 months — same profile

*Why now:*
- [Mentioned Product B topic] on last call (timestamp + quote)
- [Competitor in Product B space] also mentioned

*Suggested approach:*
- AE intros Product B specialist to champion
- Lead with [peer customer 1] case study
- 30-min discovery in next 14 days

*Estimated opportunity:* $X based on account size + tier
```

Weekly digest:

```markdown
*Cross-Sell Pipeline — week of [date]*

*New opportunities surfaced:* N — $X potential
*Active conversations:* M opps
*Closed cross-sell (last 90d):* $Y

*Top 5 to action:*
| Account | Add product | Fit | Signal | Owner |

*Cross-sell attach rate:* X% of customer base (target Y%)
```

## Connectors

- CRM (required)
- Product analytics for each product line (required)
- CS tool
- Gong / Fireflies
- Slack (delivery)

## Gotchas

- Don't cross-sell into a churn-risk account — protect base first
- Internal owner handoff is the #1 cross-sell failure point — clear ownership rules required
- Peer-customer pattern matching is the most credible angle — invest in computing it well
- Track cross-sell LTV vs. single-product LTV — proves the case to leadership
