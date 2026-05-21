---
name: ae-cs-handoff
description: Package a closed-won deal into a complete handoff briefing for CS — context the AE built over the sales cycle, promises made, stakeholders, success criteria. Use immediately on deal closed-won, before CS kickoff.
---

# ae-cs-handoff

## When to use

- Auto-trigger on opp status → closed-won
- Pre-CS-kickoff prep (24h before kickoff call)
- Audit: review handoff quality across recent closed-won deals

## Core principle

**35-50% of B2B churn traces back to onboarding and first-90-days experience** (Gainsight/Forrester). Customers handed off poorly feel like they were sold to and then left with strangers. Renewal risk is seeded on day one.

## What goes in the handoff

1. **Deal facts**
   - ACV, contract length, billing terms
   - Products / SKUs / seats
   - Special pricing / non-standard terms

2. **The story of the deal**
   - What problem they were solving
   - Why they chose us over alternatives
   - What they were nervous about
   - What was promised verbally that's not in the contract

3. **Stakeholder map**
   - Champion (the person who pushed internally)
   - Economic buyer (who signed)
   - Users / influencers
   - Detractors (anyone who pushed back, even if deal closed)

4. **Success criteria**
   - What "success" looks like to them — in their words
   - Time-to-value expectation
   - Specific metrics they want to move

5. **Risks to flag for CS**
   - Champion is junior — needs exec backup
   - Procurement was painful — billing process needs care
   - Stakeholder X was skeptical — need an early win for them

## Workflow

1. Trigger: opp → closed-won
2. Pull all sales-cycle context:
   - Call transcripts (last 5 calls)
   - Email threads
   - Notes / activities
   - Contract terms
3. Synthesize the handoff doc
4. Schedule handoff meeting (AE + CSM, before kickoff)
5. Deliver doc to CSM via Slack + attach to account in CRM/CS tool

## Output format

```markdown
*AE → CS Handoff — [Account] — Closed-won [Date]*

*Deal facts:*
- ACV: $X / N-year term
- Products: [list]
- Special terms: [discounts / payment / billing variations]

*Why they bought (in their words):*
> "[direct quote from sales cycle]"

*Story:*
- Original pain: ...
- Why now (trigger): ...
- Why us over [competitor]: ...

*Stakeholders:*
- **Champion:** [name, role] — needs to look good internally on this win
- **EB:** [name, role] — wants to see [metric] move in 90 days
- **Detractor:** [name, role] — was skeptical about [X] — handle with early proof

*Success criteria:*
- They want to see: [specific metrics / behaviors]
- Time-to-value expectation: [N weeks]
- Implicit promise: [things verbalized in calls that aren't in contract]

*Risks for CS:*
- [risk 1]
- [risk 2]

*Suggested kickoff agenda:*
1. ...
2. ...

*AE follow-through:* I'll join the kickoff and the 30-day check-in.
```

## Connectors

- CRM (required)
- Gong / Fireflies (call transcripts)
- CS tool (Gainsight / ChurnZero / Totango / Vitally) for delivery
- Slack (notification)

## Gotchas

- Champion job-change tracking starts here — log who the champion is so future signals can fire
- Verbal promises matter MORE than written contract for relationship — don't skip the implicit promises section
- AE should stay involved for first 30-60 days — handoff isn't abandonment
- Detractors are the highest renewal risk — early win for them is the protective play
