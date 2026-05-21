---
name: sales-territory-design
description: Design or rebalance sales territories based on opportunity, capacity, and rules of engagement — not seniority or politics. Use annually, after new hires, post-segment-shift, or when reps fight over accounts.
---

# sales-territory-design

## When to use

- Annual / semi-annual territory rebalance
- After significant hiring (new reps need territory)
- Segment focus shift (new ICP changes geography of opportunity)
- Account-ownership disputes are increasing
- Quota attainment variance is wide (uneven territories often the cause)

## Core principle

**Well-designed territories lift quota attainment by 10-20%** (Alexander Group). Reps spend ~20% of time on ownership disputes in poorly designed orgs. Most orgs need to redesign every 2-3 years.

## Design dimensions

| Dimension | Examples |
|---|---|
| **Geography** | Region / country / state / metro |
| **Segment / size** | ENT / Mid-market / SMB by ARR or employee count |
| **Vertical** | Industry-specialized reps (FinServ, Healthcare, etc.) |
| **Account-based** | Named-account assignments (top accounts to top reps) |
| **Hybrid** | Geo × segment, vertical × size, etc. |

## Workflow

1. **Pull total opportunity pool**
   - All accounts in CRM
   - All addressable accounts (TAM lookup if needed)
   - Score each for fit + potential ARR

2. **Pull rep capacity**
   - Number of reps per role
   - Quota per rep
   - Ramp status (new vs. veteran)
   - Historical productivity by rep

3. **Design constraints:**
   - Each territory needs enough opportunity to hit quota (typically 3-5x quota in addressable ARR)
   - Concentration matters more than count (better to own 100 high-fit accounts than 500 mixed)
   - Travel / time-zone overhead minimized
   - Vertical specialty preserved where it matters

4. **Generate proposed map:**
   - Per-rep territory definition
   - Per-rep estimated opportunity
   - Coverage gaps (unowned territory)

5. **Run rules of engagement:**
   - What happens when an inbound lead lands in a different territory
   - How named accounts override general territory
   - Process for disputes

6. **Validate with sales leadership + reps**
7. **Implement with transition plan (existing opps move with reps or stay with territory)**

## Output format

```markdown
*Territory Design — [Company / Quarter]*

*Current state:*
- Reps: N
- Total quota: $X
- Total addressable: $Y
- Coverage ratio: Y/X = Z (target 3-5x)
- Concentration: best rep owns 18% of pipeline, worst owns 3%

*Issues identified:*
- [unbalanced opportunity]
- [overlap / dispute zones]
- [coverage gaps]

*Proposed design:*

**Dimension:** [geo / segment / vertical / hybrid]

**Per-rep territories:**
| Rep | Territory | Accounts | Addressable $ | Quota | Ratio |

**Rules of engagement:**
- Inbound leads: [routing rule]
- Account ownership transfer: [rule]
- Disputes: [process]

**Transition plan:**
- Open opps: stay with rep / move with territory (decision per case)
- Effective date: [date]
- Communication plan: [steps]

*Success metrics (12-month):*
- Quota attainment variance reduced from X to Y
- Disputes per quarter reduced from N to M
- Account coverage % up from A to B
```

## Connectors

- CRM (account + rep data)
- HR (rep headcount, ramp status)
- Slack (delivery)

## Gotchas

- Resist the "rep keeps their accounts" default — sometimes the design requires moving accounts
- New reps need a fair starting territory — don't dump weakest accounts on the newcomer
- Document the rules of engagement clearly — most disputes come from ambiguity
- Re-evaluate after 6 months — first version is rarely perfect
