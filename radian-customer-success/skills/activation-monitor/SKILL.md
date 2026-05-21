---
name: activation-monitor
description: Detect whether customers hit their defining activation behavior in the first 30 days — and fire re-engagement if not. Use continuously post-kickoff for SaaS or first-result for services.
---

# activation-monitor

## When to use

- Continuously for every customer 0-90 days post-close
- When activation rate drops in a cohort
- Pre-product launch (set new activation criteria)
- During onboarding redesign

## Core principle

**Activated users are 5-10x more likely to retain** (Amplitude). Activation criteria must be: specific, measurable, predicts long-term retention. Slack famously used "send 2,000 messages as a team."

## Setting the activation bar

Per portco, define ONE clear activation event:

| Product type | Activation example |
|---|---|
| SaaS collaboration | N invites sent + accepted within 14d |
| Analytics tool | First dashboard built + shared |
| API product | First N successful API calls |
| Marketplace | First transaction |
| Services | First measurable result delivered to customer |

Validate against churn data — activated customers should renew at materially higher rates than non-activated.

## Workflow

1. For each new customer, define expected activation event
2. Track behavior toward activation:
   - SaaS: pull from product analytics
   - Services: pull from PM tool / deliverables tracker
3. Classify:
   - **Activated** ✅
   - **In progress** (some activity, not yet hit threshold)
   - **At risk** (low activity, day 14+)
   - **Failing** (no activity, day 21+)
4. Fire intervention plays:
   - At-risk → CSM outreach with usage-tailored message
   - Failing → exec sponsor outreach OR re-onboarding offer
5. Roll up activation rate by cohort monthly

## Output format

Per account:

```markdown
*Activation Status — [Account]*
*Days since close:* N
*Activation event:* [defined event]
*Progress:* [%] / [specifics]
*Status:* Activated ✅ / In progress / At risk 🟡 / Failing 🔴

*Recommended intervention:*
- ...
```

Monthly cohort report:

```markdown
*Activation — customers closed in [Month]*

*Activation rate by day:*
- Day 7: X%
- Day 14: Y%
- Day 30: Z%

*Cohort vs. last 3 months:* trend up / down / flat

*Non-activated customers in cohort:* N
- At-risk interventions running: M
- Already churned: K (red flag — too fast)
```

## Connectors

- Product analytics (Amplitude / Mixpanel / Heap) — required for SaaS
- PM tool — for services
- CS tool (account record)
- CRM (close date)
- Slack (CSM alerts)

## Gotchas

- One activation event, not five — clarity beats coverage
- Re-validate the activation event annually — what predicts retention may shift as product evolves
- Don't conflate activation with engagement — engagement is continuous, activation is binary
- Failed activation in 30d is the strongest early churn signal — escalate aggressively
