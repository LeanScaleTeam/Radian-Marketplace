---
name: sales-product-feedback
description: Systematically capture sales-floor signal (feature requests, lost-deal reasons, product feedback) and route it to product team in structured form. Use continuously; monthly digest to product.
---

# sales-product-feedback

## When to use

- Continuous capture (after every deal, every call)
- Monthly product / sales sync prep
- Quarterly roadmap planning
- Post-major-loss (loss reason needs systematic capture)

## Core principle

**Sales-product misalignment is consistently named a top-3 reason for slow growth in B2B SaaS.** Feature requests captured anywhere are typically duplicates because there's no central capture. Product builds wrong things; sales loses deals on missing features that should have been on the roadmap.

## What to capture

1. **Feature requests during calls** — what customer asks for + context
2. **Lost-deal reasons related to product** — "we lost because we don't have X"
3. **Pricing/packaging friction** — when product capability doesn't match offer
4. **Competitive losses tied to product** — what we lost to (Comp X's feature Y)
5. **Customer themes** — patterns across many requests
6. **Edge cases / bugs surfaced in deals**

## Workflow

1. Capture sources:
   - Gong / Fireflies call mentions of features
   - CRM lost-deal reason fields
   - Rep ad-hoc submissions (Slack / form)
2. Structure each:
   - Customer / segment / size / ACV / stage
   - Specific request + context
   - Severity (won / lost / at-risk because of this)
   - Tags (product area, persona)
3. Deduplicate against existing requests
4. Aggregate weekly into themes
5. Monthly digest to product team:
   - Top requests by frequency × ACV impact
   - New themes emerging
   - Patterns by segment
6. Track closure loop: product team responds with disposition (on roadmap / declined / open) — flow back to sales

## Output format

Monthly digest:

```markdown
*Sales → Product Feedback Digest — [Month]*

*Total signals captured:* N
*Unique requests:* M (after dedupe)

*Top requests by impact:*
| Request | # mentions | ACV impact | Segments | Status |
| [Feature X] | 28 | $1.4M | ENT, MM | Open |
| [Integration with Y] | 19 | $620K | All | On roadmap Q[N] |

*New themes this month:*
- [Theme] — emerging across [N] customers in [segment]
- [Theme] — appearing in competitive losses to [Comp A]

*Lost-deal product reasons (last 30d):*
| Reason | $ lost | Segment |

*Product team disposition update:*
- [Request 1] — accepted to roadmap Q[N]
- [Request 2] — declined, rationale: [X]
- [Request 3] — still under review

*Closed loop with sales:*
[How sales should now respond to deals where these requests come up]
```

## Connectors

- Gong / Fireflies (call mentions)
- CRM (lost-deal data, opp context)
- Product mgmt tool (Productboard / Linear / Jira)
- Slack (rep submissions + delivery)

## Gotchas

- Don't dump everything — product team will tune out
- Weight by ACV impact, not just frequency — one ENT request can outweigh 20 SMB requests
- Close the loop with sales — reps stop submitting when responses never come back
- Distinguish "missing feature" from "rep didn't position right" — sometimes it's the latter
