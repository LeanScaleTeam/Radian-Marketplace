---
name: forecast-stage-validator
description: Validate that open opportunities are in the correct forecast stage based on exit criteria evidence. Use during forecast review, before commit calls, or when the user says "validate the forecast", "stage hygiene", or "are these opps really at the stage we say they are".
---

# forecast-stage-validator

## When to use

- Weekly forecast review meeting prep
- Pre-commit-call hygiene pass (no inflated commit category)
- Before board / VC pipeline reporting
- After a stage definition change — re-validate the whole book
- Manager-driven pipeline cleanse

## Core principle

**Stages exist to predict outcomes. A stage with no evidence is a fiction.** Mismatches almost always inflate the forecast (reps push opps forward to look good). Catch them before the CRO commits to numbers they can't hit.

## Stage exit criteria (configurable per portco)

Each portco overrides this list. Default reference (loosely MEDDPICC-flavored):

| Stage | Exit criteria (all required to advance) |
|---|---|
| Discovery | Confirmed pain, target persona engaged, next step booked |
| Qualification | Champion identified, EB confirmed, success criteria documented |
| Solution | Demo / POC scoped, technical fit validated, success criteria mapped to product |
| Proposal | Pricing presented, EB engaged on price, no major objections open |
| Negotiation | Verbal commit, legal/procurement engaged, paper out |
| Commit | Signature owner identified, no open blockers, signed by close date confident |

## Workflow

1. **Pull all open opps in forecast** (Salesforce)
   - This quarter close date OR commit/upside category
   - Owner, ACV, stage, close date, last activity date

2. **For each opp, check stage exit criteria against evidence**
   - Salesforce custom fields (champion, EB, success criteria, etc.)
   - Recent activity (calls, emails, meetings in last 14 days)
   - Call transcripts where stage-relevant signals would appear

3. **Flag mismatches in tiers**
   - **Severe** — stage 3+ steps ahead of evidence (e.g., "Negotiation" with no champion identified)
   - **Moderate** — stage 1–2 steps ahead OR missing a key field
   - **Minor** — stage matches but stale activity (no touch in 14+ days)

4. **Output triaged list**
   - Severe mismatches first — these are the biggest forecast-inflation risks
   - Aggregate ACV at risk per tier (e.g., "$2.4M in severe mismatches")

## Output format

```markdown
*Forecast Stage Hygiene — [Date]*

*Total open pipeline:* $X across N opps
*Forecast risk:* $Y at risk across M flagged opps

🚨 *Severe (stage >= 2 ahead of evidence)* — $A in N opps
| Account | Stage | Owner | Missing |
|---|---|---|---|
| [acc] | [stage] | [rep] | [what's missing] |

⚠️ *Moderate* — $B in N opps
…

ℹ️ *Stale (no activity 14d+)* — $C in N opps
…

*Recommended actions:*
- Bring severe-tier opps to next pipeline review with the owners
- Drop moderate-tier opps back a stage OR require evidence in 48h
- Stale opps → owner outreach this week
```

## Connectors used

- Salesforce — opp + stage + activity (required)
- Gong / Fireflies — corroborating call evidence
- Slack — delivery to RevOps lead

## Gotchas

- Stage exit criteria differ wildly per company. Don't apply defaults blindly — confirm the portco's stage definitions on first run and store them.
- Reps will push back on flagged opps. The output should be evidence-grounded so it's not negotiable.
- Avoid flagging closed-won / closed-lost opps. Only open pipeline.
