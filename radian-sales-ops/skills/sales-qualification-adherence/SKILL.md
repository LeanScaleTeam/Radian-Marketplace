---
name: sales-qualification-adherence
description: Enforce qualification methodology (MEDDIC/MEDDPICC/BANT) across deals so stages mean something and forecasts are trustworthy. Use weekly during pipeline review; pre-forecast call.
---

# sales-qualification-adherence

## When to use

- Weekly pipeline review (clean deals before forecast)
- Pre-forecast call (commit-stage deals need methodology evidence)
- Quarterly recalibration of methodology fit
- Mature B2B orgs running methodology — distinct from `radian-crm-hygiene::stage-accuracy` for less mature orgs

## Core principle

**Qualification depth in early stages is the single biggest predictor of close** (Gong / Clari). Forecast accuracy averages ~50% in B2B SaaS — largely driven by unqualified pipeline. Methodology only works if enforced.

## Methodology dimensions (MEDDPICC as default)

| Dimension | What it means |
|---|---|
| **M**etrics | Quantified business impact / KPIs to move |
| **E**conomic buyer | Who signs / who has budget authority |
| **D**ecision criteria | What customer is using to evaluate |
| **D**ecision process | How the decision will be made / timeline |
| **P**aper process | Procurement / legal / signature workflow |
| **I**dentify pain | Specific business pain identified |
| **C**hampion | Internal advocate who'll sell on our behalf |
| **C**ompetition | Competitive landscape + our differentiation |

## Workflow

1. Define per-stage qualification requirements (which dimensions must be confirmed to advance)
2. For each open opp, check methodology field completeness:
   - Are required fields populated?
   - Is the data credible (vs. rep's claim)?
   - Are field updates current?
3. Validate against call evidence:
   - Did the rep ACTUALLY confirm the EB on a call?
   - Was the metric quantified by the customer or fabricated by the rep?
4. Flag gaps:
   - Severe: commit-stage opp missing M / EB / Champion
   - Moderate: stage advances without one dimension
   - Mild: stale information
5. Surface in weekly pipeline review

## Output format

```markdown
*Qualification Adherence — week of [date]*

*Open pipeline:* $X across N opps
*Methodology compliance: M% complete (target 90%+)*

*Severe gaps (commit-stage missing critical dimensions):* $A
| Opp | $ | Owner | Missing |
| Acme | $80K | J. Smith | EB unconfirmed, Champion unconfirmed |
| Beta | $150K | M. Lee | Metrics not quantified |

*Moderate gaps (advanced past stage without dimension):* $B
| ... |

*Stale information (>30d old field):* $C
| ... |

*Reps with consistent compliance issues (coaching opportunity):*
- [Rep] — N gap rate (vs. team avg M%)

*Recommended actions:*
- Severe-gap opps: managers walk through with rep this week
- Moderate gaps: owner has 48h to update or roll back stage
- Coaching: schedule [rep] for methodology refresher
```

## Connectors

- CRM (methodology fields)
- Gong / Fireflies (validate against call evidence)
- Slack (delivery)

## Gotchas

- "Filled in" ≠ "true." Rep can populate fields without real evidence — validate against transcripts
- Methodology is a tool, not religion — calibrate to the deal size (SMB doesn't need full MEDDPICC)
- Coaching > shaming — use gaps to teach, not punish
- Stage exit criteria should encode methodology — if Negotiation requires EB, the field is locked unless EB is populated
