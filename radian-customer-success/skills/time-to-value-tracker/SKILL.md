---
name: time-to-value-tracker
description: Track time-to-first-value per customer and flag onboarding that's running long. Use continuously post-kickoff, in CS leadership reviews, or when looking for early churn predictors.
---

# time-to-value-tracker

## When to use

- Continuously, from kickoff through first-value milestone
- Monthly CS leadership review (cohort TTV)
- When evaluating onboarding process changes
- Pre-renewal: "did this customer ever reach value?"

## Core principle

**Companies with TTV under 24h have 60%+ higher activation** (Userpilot/Mixpanel). 40-60% of SaaS trials never reach first value. For services, the first measurable result anchors the entire engagement perception.

## What "value" means

Define per portco — but always concrete and measurable:

| Business type | First value examples |
|---|---|
| SaaS | First successful workflow / first invite / first dashboard built / first integration live |
| Services / agencies | First deliverable shipped / first measurable outcome / first reporting cycle complete |
| Marketplace | First successful transaction |
| Hardware | First successful use post-installation |

## Workflow

1. Define TTV milestone per portco at activation (during kickoff)
2. For each new customer:
   - Track activity / usage / deliverable status against the milestone
   - Compute days-since-close, days-since-kickoff
3. Classify:
   - **On track** (under historical median)
   - **At pace** (at historical median)
   - **Slow** (>1.5x median)
   - **Stalled** (no progress in 14d)
4. Surface stalled / slow accounts to CSM with reason
5. Roll up cohort TTV monthly for leadership

## Output format

Per account:

```markdown
*TTV Status — [Account]*
*Status:* On track / At pace / Slow 🟡 / Stalled 🔴
*Days since close:* N
*Milestone:* [defined milestone]
*Progress:* [%] complete
*Blockers:* [if any]
*Recommended action:* [specific next step CSM should take this week]
```

Monthly cohort report:

```markdown
*TTV Cohort — customers closed in [Month]*

*Total:* N
*Median TTV:* X days (target: Y)
*% reached value by D30:* Z%
*% reached value by D60:* A%

*Slow / stalled (action required):*
| Account | CSM | Days | Status | Blocker |

*Trend vs. last cohort:* ⬆️ / ⬇️ / flat
```

## Connectors

- CRM (close date)
- CS tool (kickoff date, milestone tracking)
- Product analytics (for SaaS) — usage milestone detection
- PM tool (for services) — Asana / Linear / Jira deliverable status
- Slack (delivery)

## Gotchas

- Milestone definition matters most — vague milestones produce useless metrics
- TTV doesn't predict renewal alone — pair with `activation-monitor` and `churn-risk-detection`
- Some customers legitimately take longer (enterprise, complex implementations) — segment cohorts
- "Stalled" often means there's a customer-side blocker — escalate, don't just monitor
