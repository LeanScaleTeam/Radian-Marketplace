---
name: icp-market-selection-strategic
description: Strategic choice of which segment(s) the company should target — the CEO-level decision, distinct from the tactical "which CRM fields define ICP" version. Use in board prep, segment-expansion debate, or when growth is stuck across diffuse segments.
---

# icp-market-selection-strategic

## When to use

- Growth is stuck — customer base is scattered, no concentration
- Board / leadership disagrees on segment focus
- Pre-fundraise — investors want to see disciplined market focus
- Considering an expansion segment (international, new vertical, larger / smaller)

## Core principle

**Companies that concentrate GTM on a single segment grow ~2x faster in years 1-3** (a16z / Bowery). Crossing the Chasm: segment focus is the most predictive variable. Most failed startups die from going too broad too early, not too narrow.

## Scope distinction

- **This skill (strategic):** which segment(s) should the company target at all — CEO/board decision
- **`radian-marketing-ops::lead-scoring` and tactical ICP work:** once segments chosen, operationalize in CRM / scoring / targeting

## Framework

For each candidate segment, score:

| Dimension | Why it matters |
|---|---|
| **Market size** (TAM that's reachable) | Determines headroom |
| **Pain intensity** (urgent vs. nice-to-have) | Predicts win rate + price |
| **Willingness to pay** | ACV potential |
| **Reachability** (channels exist to reach them) | CAC implications |
| **Competitive density** | Win odds |
| **Our product fit** | Whether we can credibly serve |
| **Reference / case-study coverage** | Existing customers we can leverage |
| **Strategic adjacency** (does this segment compound into others) | Long-term path |

A segment scores well across these = a defensible bet.

## Workflow

1. List candidate segments (3-7 typically — narrower than broader)
2. Pull internal data per segment (existing wins, CAC, NRR, win rate)
3. Pull external data (TAM, competitive intensity)
4. Interview top reps + CSMs on per-segment dynamics
5. Score each segment
6. Propose the strategic call:
   - Primary segment (where to concentrate 70-80% of GTM)
   - Secondary segment (20-30%)
   - Decline / exit segments (be explicit about what you're NOT chasing)
7. Document the rationale + the validation milestones (proof points to keep or change the bet)

## Output format

```markdown
*Strategic ICP / Market Selection — [Company]*

*Candidate segments scored:*
| Segment | TAM | Pain | WTP | Reach | Comp | Fit | Refs | Adj | Composite |
|---|---|---|---|---|---|---|---|---|---|

*Recommendation:*

**Primary (70-80% of GTM): [segment]**
- Why: [3 strongest reasons]
- Customer evidence: [N closed-wons in this segment, ACV $X, NRR Y%]
- Reachability: [channels that work]
- Validation milestones (next 4 quarters): [...]

**Secondary (20-30%): [segment]**
- Why: [reasons]

**Decline: [segment(s)]**
- Why we're not chasing: [reasons]

*Implementation:*
- Marketing: refocus campaigns + content + paid spend to primary
- Sales: hiring plan reflects primary segment
- Product: roadmap weighted to primary's needs
- ICP fields in CRM updated to reflect choice

*Validation milestones (quarterly):*
- Q1: ...
- Q2: ...
```

## Connectors

- CRM (segment performance data)
- Finance / BI (per-segment economics)
- Market research / TAM data sources

## Gotchas

- Picking a segment = SAYING NO to others. The "no" is harder than the "yes"
- Don't pick the segment with the biggest TAM if you can't reach them — pick the one you can win in
- Re-validate annually, not monthly — segment bets need time to play out
- Founders often resist focus — show the growth math from concentrated peers
