---
name: deal-strategy-validator
description: Validate a rep's deal strategy against historical wins, current quarter approval patterns, and known playbooks. Use when a rep submits a deal strategy, before deal desk review, or when forecast confidence is low.
---

# deal-strategy-validator

## When to use

- Pre-deal-desk gut check (before formal approval)
- Forecast review — is this commit-stage opp really commit-able?
- Rep says "this deal is closing this quarter" → pressure-test
- Strategic / high-ACV deals where strategy quality matters more than mechanics
- Stalled deals where the rep can't articulate the next step

## Core principle

**A good deal strategy ≠ a confident rep.** Confidence often masks missing fundamentals. Validate against evidence in the CRM and call transcripts, not against the rep's self-report.

## Validation dimensions

For each dimension, score: Strong / Adequate / Weak / Missing

| Dimension | Evidence to check |
|---|---|
| **Champion** | Internal advocate identified, mapped, prepped for internal sell |
| **Economic buyer** | EB identified, met with rep, signed off on business case |
| **Pain articulation** | Quantified business pain, not just "interested" or "exploring" |
| **Competitive position** | Competition known, differentiation articulated, displacement plan if incumbent |
| **Timeline realism** | Customer-driven compelling event, not rep-driven optimism |
| **Procurement awareness** | Procurement / legal engaged early enough to not derail close date |
| **Pricing / structure** | Proposed terms match approval bar (loop into `deal-approval-check` if uncertain) |

## Workflow

1. **Pull the opp from Salesforce**
   - Stage, close date, ACV, owner
   - Key contacts and their roles
   - Activity history (calls, emails, meetings)

2. **Pull recent call transcripts** (Gong / Fireflies)
   - Last 30 days of calls on this opp
   - Specifically look for: champion language, EB engagement, pain quantification, competitive mentions

3. **Score each dimension** against the evidence

4. **Compare against historical wins**
   - Last 10 closed-won deals at similar ACV / segment
   - Were the dimensions that are weak here ALSO weak in won deals? Or do won deals consistently have strength on this dimension?

5. **Output the verdict**
   - Strategy strength: Strong / Adequate / Weak
   - Top 1–2 risks
   - Specific evidence gaps the rep needs to close
   - Recommended next 1–2 actions

## Output format

```markdown
**Deal Strategy Validation — [Account Name]**
**Verdict:** STRONG / ADEQUATE / WEAK
**Forecast confidence:** [High / Medium / Low]

**Dimensions:**
- Champion: [score] — [evidence]
- Economic buyer: [score] — [evidence]
- Pain: [score] — [evidence]
- Competitive: [score] — [evidence]
- Timeline: [score] — [evidence]
- Procurement: [score] — [evidence]
- Pricing: [score] — [evidence]

**Top risks:**
1. [risk]
2. [risk]

**Closing this quarter requires:**
- [specific action 1]
- [specific action 2]

**Compared to last 10 won deals at similar ACV:**
[1–2 sentence pattern observation]
```

## Connectors used

- Salesforce — opp + historical wins
- Gong / Fireflies — call evidence
- Slack — output to rep and manager

## Gotchas

- Don't grade based on the rep's narrative — pull from CRM and calls
- "Champion confirmed" with no evidence in calls = NOT confirmed
- If close date is < 14 days out and procurement isn't engaged, that's almost always a slip risk worth flagging
