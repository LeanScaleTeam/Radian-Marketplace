---
name: reference-program-activation
description: Maintain an active, fatigue-aware, segmented reference customer pool — so sales never scrambles for references at the last minute. Use continuously to identify candidates; on-demand when sales requests references for a deal.
---

# reference-program-activation

## When to use

- Continuous identification of new reference candidates (post-activation success)
- Weekly fatigue check (who's been overused)
- On-demand: AE requests references for a late-stage deal
- Post-customer event / case study (formalize reference relationship)

## Core principle

**92% of B2B buyers trust peer recommendations more than vendor claims** (TechTarget/Gartner). Reference calls are cited as the single highest-conversion sales asset in late-stage deals. Yet most companies depend on the same 5 reference customers — burning them out.

## Reference customer attributes

| Attribute | Captured |
|---|---|
| Willing to be a reference | Explicit opt-in |
| Use case / persona | From their actual usage |
| Industry / size / segment | From CRM |
| Last referenced date | Tracked |
| Reference count (90d / 365d) | Tracked |
| Type of references willing to provide | Call / email / video / written |
| Time zone / availability | From profile |
| Champion contact | Their internal advocate |

## Workflow

1. **Identify candidates**
   - Customer hit activation + saw outcome
   - High health score for 6+ months
   - Champion still in place
   - Has expressed enthusiasm (NPS detractor surveys, public posts, success metrics shared)

2. **Onboard to program**
   - CSM asks champion if they'll join
   - Document use case + segment fit
   - Capture availability + reference type preferences
   - Token of appreciation (gift, recognition, exclusive program access)

3. **Manage fatigue**
   - Cap: max 4 reference calls per year per customer
   - 90-day cooling period between calls for the same customer
   - Surface fatigue in CSM dashboards

4. **Matchmake for sales requests**
   - AE submits: prospect industry, size, use case, stage
   - System returns 3 best-fit references, sorted by availability + freshness
   - AE selects → automated intro email to champion + prospect

5. **Track outcomes**
   - Reference call held → deal closed-won?
   - Win rate when reference used vs. not
   - Reference satisfaction (champion side — were they treated well)

## Output format

For an AE request:

```markdown
*Reference Match — Request from [AE] for [Prospect]*

*Top 3 matches:*

1. **[Reference customer]** (best fit)
   - Industry / size / use case match: 96%
   - Last referenced: 4 months ago
   - Available: this week
   - Reference type: video call
   - Their outcome: [specific metric moved]

2. **[Customer]** ...
3. **[Customer]** ...

*Auto-draft intro email:* [attached]
*Token of appreciation:* will be sent automatically post-call
```

Quarterly program report:

```markdown
*Reference Program — [Quarter]*

*Active references:* N
*New onboarded:* M
*Calls held:* K
*Deal close rate when reference used:* X% (vs. Y% baseline)
*Concentration:* Top 5 references provided Z% of calls (target <40%)
*Fatigue flags:* P customers approaching annual cap
```

## Connectors

- CRM (account + health context)
- CS tool
- Calendar (availability + scheduling)
- Slack
- Optional: dedicated reference platform (UserEvidence / ReferenceEdge / Influitive)

## Gotchas

- Asking too soon = damage. Wait for clear outcome + 6+ months of healthy relationship
- Track champion role changes — references with champions who left lose credibility fast
- Reward references — they're doing you a real favor
- AE / SE / CSM should always join reference calls — don't leave the customer hanging
