---
name: attribution-channel-roi
description: Compute multi-touch attribution and channel ROI in a way both marketing and sales trust. Use for monthly/quarterly channel reviews, board prep, or when the user says "which channels actually work", "marketing ROI", or "channel attribution".
---

# attribution-channel-roi

## When to use

- Monthly marketing channel review
- Quarterly budget reallocation
- Board / VC prep
- When sales and marketing argue about lead quality / channel performance

## Core principle

**76% of marketers can't attribute revenue accurately, and single-touch models disagree by 20-50%.** No model is "right" — but a consistent, documented, agreed-upon model is better than ad-hoc dashboards no one trusts.

## Models to support

| Model | Use case |
|---|---|
| **First touch** | Brand / top-of-funnel investment |
| **Last touch** | Conversion / bottom-funnel optimization |
| **Linear** | "Touch credit" — useful for content reporting |
| **Time decay** | Long sales cycles where recency matters |
| **W-shaped** | First + lead-creation + opportunity-creation get 30% each |
| **Custom (per portco)** | Once the team agrees on weights |

## Workflow

1. Pull all touches per closed-won opp (last 12 months)
   - Web sessions (UTM-tagged)
   - Form fills
   - Email engagement
   - Ad clicks (Meta / LinkedIn / Google)
   - Sales activities (cold call, outbound email, demo)
   - Event interactions

2. For each opp, run the touch sequence through each attribution model

3. Aggregate by channel:
   - Pipeline sourced ($)
   - Closed-won ($)
   - ROI ($ won ÷ $ spent)
   - CAC by channel

4. Surface disagreements between models
   - "Paid social looks like 30% of pipeline under last-touch, 12% under W-shaped — likely capturing brand demand, not creating it"

5. Recommend reallocation
   - Cut channels where ROI < 1.5x across multiple models
   - Double down where ROI > 3x and capacity exists

## Output format

```markdown
*Channel ROI — [Quarter]*

*Spend:* $X total
*Pipeline sourced:* $Y (Z:1 ratio)
*Closed-won attributed:* $W

*By channel (W-shaped attribution):*
| Channel | Spend | Pipeline | CW $ | ROI | CAC |
|---|---|---|---|---|---|
| Paid LinkedIn | $50K | $400K | $80K | 1.6x | $4.5K |
| Content | $30K | $600K | $150K | 5.0x | $1.2K |
| Events | $80K | $250K | $40K | 0.5x 🔴 | $11K |

*Model disagreement flags:*
- Paid social: high last-touch, low first-touch — likely capturing not creating
- Content: high first-touch, high linear — true driver

*Recommended reallocation:*
- Cut events spend 50% — ROI < 1
- Add $30K to content production — highest ROI
```

## Connectors

- CRM (required)
- Marketing automation (required)
- Ad platforms (LinkedIn / Meta / Google)
- Web analytics
- Optional: dedicated attribution tool (Bizible / Dreamdata / Heap)

## Gotchas

- UTM hygiene is the biggest blocker — bad/missing UTMs = unattributable touches
- Sales activities often missing — get rep activity capture working first (`crm-hygiene::activity-capture`)
- 7+ touches across 3+ channels is typical B2B — single-touch models lie
- Run multiple models and disclose disagreement; don't pick one and pretend it's truth
