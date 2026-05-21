---
name: kickoff-quality
description: Standardize and quality-check the kickoff experience — the first touch after deal close that sets the relationship tone. Use for every new customer; quality-audit existing kickoffs to find churn risk patterns.
---

# kickoff-quality

## When to use

- Every new customer at deal close (auto-trigger from `radian-sales-execution::ae-cs-handoff`)
- Quality audit of existing kickoffs (find pattern leading to 90-day churn)
- Onboarding a new CSM (load the standard playbook)

## Core principle

**23% of B2B churn is attributed to poor onboarding** (HubSpot). The first 30 days predict retention more than any other period. Yet kickoffs are inconsistent — each rep/CSM runs them differently.

## Standard kickoff playbook (configurable per portco)

1. **Pre-kickoff (within 24h of close)**
   - Welcome email — warm, personal, names the CSM
   - Pre-kickoff survey: success criteria, stakeholders, timeline expectations
   - Calendar invite for kickoff call (3-5 business days out)
   - Pre-read attached: getting-started doc + 1 case study matching their use case

2. **Kickoff call (60 min, structured)**
   - Introduce team + roles (CSM, AE staying engaged, support paths)
   - Confirm what they bought + what they expect
   - Walk through success criteria — make them measurable
   - Set the 30-60-90 day plan with checkpoints
   - Get commitments from them (project sponsor, tech contact, etc.)

3. **Post-kickoff (within 24h of call)**
   - Recap email with 30-60-90 plan, owners, dates
   - Calendar holds for checkpoint calls
   - First action items in motion

## Workflow

1. Trigger: opp → closed-won
2. Pull AE/CS handoff context (champion, EB, success criteria, risks)
3. Generate the kickoff package:
   - Personalized welcome email draft
   - Pre-kickoff survey link
   - Kickoff call agenda customized to the deal
   - 30-60-90 plan template populated with their stated criteria
4. Deliver to CSM for review
5. Track post-kickoff: did the customer fill out the survey, attend kickoff, agree to plan?
6. Flag kickoffs that fall short of standard (no kickoff scheduled in 5 days, customer didn't attend, etc.)

## Output format

Per new customer:

```markdown
*Kickoff Package — [Account] — Closed-won [Date]*

*CSM:* [name]
*Recommended kickoff date:* [date] (3-5 business days from close)

*Welcome email draft (ready to send):*
[personalized welcome — references what they bought + why]

*Kickoff agenda:*
1. ...
2. ...

*30-60-90 plan starter (pre-populated from their stated success criteria):*
- 30d: ...
- 60d: ...
- 90d: ...

*Risks flagged from sales handoff:*
- ...

*CSM action items:*
- [ ] Review + send welcome email
- [ ] Schedule kickoff
- [ ] Confirm pre-kickoff survey received
```

Weekly QA report:

```markdown
*Kickoff Quality — week of [date]*

*New customers:* N
*Kickoffs scheduled within 5d of close:* X/N
*Customers filled out pre-kickoff survey:* Y/N
*Kickoffs held with all required attendees:* Z/N

*Flags:*
- [Account] — no kickoff scheduled, 8 days post-close 🔴
- [Account] — customer no-showed kickoff — reschedule + flag risk
```

## Connectors

- CRM (deal data)
- CS tool (account record)
- Calendar (kickoff scheduling)
- Email (welcome + recap drafts)
- Slack (CSM delivery)

## Gotchas

- Personalization beats template — the deal handoff provides the personalization fuel
- Kickoff > 5 days post-close = momentum loss
- If sales promised things not in contract, the kickoff is where they surface and get addressed — handle in the script
