---
name: product-strategy-audit
description: Audit the product strategy — is the roadmap anchored to a thesis, or built reactively from request inboxes? Use when product feels like a feature list, when feature adoption is low, or pre-fundraise.
---

# product-strategy-audit

## When to use

- Roadmap discussions devolve into prioritization debates with no anchoring
- Feature adoption is consistently low (Pendo: ~80% of features used by <10%)
- Leadership can't answer "what are we NOT building, and why?"
- New CPO / product lead taking stock

## Core principle

**~80% of features built ship without driving the intended outcome** (Marty Cagan / SVPG). Companies with a documented product thesis outperform feature-factory peers on retention and NRR. The audit forces explicit articulation of strategy.

## Audit framework

1. **Vision** — what's the product trying to become (3-year horizon)
2. **Thesis** — what we believe about the market that drives the bet
3. **Strategic pillars** — 3-5 multi-quarter focus areas (NOT feature lists)
4. **What we're NOT doing** — equally important; defines focus by exclusion
5. **Roadmap alignment** — does each shipped/planned feature ladder to a pillar
6. **Adoption signal** — are users actually using what we ship
7. **Outcome signal** — are shipped features moving the metrics they were intended to

## Workflow

1. Pull last 12 months of shipped features
2. Map each to current pillars (if pillars exist; document if not)
3. Check feature adoption per shipped feature
4. Check outcome attribution per feature (did it move the metric it was meant to)
5. Interview leadership (CEO, CPO, head of engineering) on strategy
6. Interview top customers (what do they wish you built, what do they not use)
7. Interview top reps (what's losing deals)
8. Diagnose:
   - Roadmap-strategy alignment %
   - Adoption-vs-investment alignment %
   - Strategy clarity (can the team articulate it?)
9. Propose refined strategy + decision framework

## Output format

```markdown
*Product Strategy Audit — [Company]*

*Current state:*
- Strategic pillars (as articulated): [list, or "undocumented"]
- Last-12-months features: N shipped
- Pillar alignment: X% mapped to pillars
- Adoption rate (avg): Y%
- Outcome attribution: Z% of features can show metric movement

*Diagnosis:*
- [where strategy is strong]
- [where strategy is missing]
- [where execution drifts from strategy]

*Recommended strategy:*

**Vision (3yr):** [statement]

**Thesis:** We believe [X], and therefore we'll [Y]. We disagree with the industry's assumption that [Z].

**Pillars:**
1. [Pillar A] — drives [outcome]
2. [Pillar B] — drives [outcome]
3. [Pillar C] — drives [outcome]

**What we are NOT doing:**
- [explicit exclusions]

*Decision framework for prioritization:*
1. Does this ladder to a pillar?
2. Does it move a metric we're chasing?
3. What's the size of the bet vs. the size of the outcome?
4. What are we de-prioritizing to do this?

*Roadmap reshape recommendations:*
- Kill: [features that don't ladder]
- Continue: [features that do]
- Add: [pillar-aligned gaps]
```

## Connectors

- Product analytics (feature adoption)
- Roadmap tool (Productboard / Linear / Jira)
- CRM (lost-deal reasons)
- Gong / Fireflies (customer feature requests)

## Gotchas

- Strategy ≠ roadmap. The roadmap implements strategy; the strategy answers "why."
- Watch for "innovation theater" — pillars that sound good but don't connect to outcomes
- Engage CEO + CPO + Head of Sales — strategy that doesn't have field input gets ignored
