---
name: quota-target-setting
description: Set sales quotas using territory capacity + conversion math — not "last year + 20%." Use annually, mid-year when plan changes, or post-territory-redesign.
---

# quota-target-setting

## When to use

- Annual planning
- Mid-year re-plan (board changed target, comp changed)
- Post-territory-redesign (new territory = new quota)
- New segment / product launch (new motion needs calibrated quota)

## Core principle

**Only ~50-60% of B2B reps hit quota on average — sign of poorly calibrated targets.** Top-quartile orgs build quotas from territory potential + conversion data; bottom-quartile use "last year + 20%." Sandbagged quotas leave 5-10% on the table; unattainable quotas burn reps out.

## Method: bottom-up territory math

For each territory:

1. **Addressable opportunity** = accounts in territory × avg deal size × fit %
2. **Realistic capture rate** = historical win rate × historical penetration
3. **Capacity-adjusted target** = capture rate × rep productivity coefficient
4. **Quota** = capacity-adjusted target × stretch multiplier (typically 1.0-1.2)

## Cross-checks

- **Top-down sanity check** — sum of all quotas should align with company target × pipeline coverage
- **% reps expected to hit** — well-calibrated quota = 60-70% of reps hit (some over, some under, distribution looks healthy)
- **Top rep vs. average rep** — if top reps will crush by 200%, quota is too low; if no one can hit, too high

## Workflow

1. Pull historicals (last 12-24 months)
   - Per-rep productivity
   - Per-territory opportunity
   - Win rates, cycle times
2. Pull plan target (company quota for the period)
3. Compute bottom-up per territory
4. Sum vs. plan target — calibrate stretch multiplier to land at plan + 10-15% safety
5. Validate distribution — would 60-70% of reps hit?
6. Pressure-test with sales leadership + reps
7. Document quotas + rationale
8. Set quarterly progress checkpoints

## Output format

```markdown
*Quota Targets — [Period]*

*Plan target:* $X (company)
*Bottom-up sum:* $Y
*Stretch multiplier:* Z (so sum = X × pipeline_coverage)

*Per-rep quotas:*
| Rep | Territory | Addressable | Expected hit | Quota | % vs last year |

*Distribution check:*
- Expected attainment: 65% of reps will hit
- Top rep: 130% of quota
- Bottom rep: 65% of quota
- Variance: acceptable

*Sandbagging analysis (last cycle):*
- Top quartile sandbagging rate: X%
- Recommended adjustments: [specific reps]

*Risks:*
- New reps in ramp: [list, with prorated quotas]
- Territory with limited addressable: [territory + plan]

*Communication plan:*
- Manager 1:1s: week of [date]
- Group rollout: [date]
- Comp plan sync: [date]
```

## Connectors

- CRM (historicals)
- Finance (plan target)
- HR (rep ramp status)
- Optional: comp plan platform

## Gotchas

- "Last year + 20%" is not analysis — it's a guess
- Reps lose trust fast if quotas keep changing mid-year — change once, well-explained
- Comp plan must support the quota — quota changes without comp changes break the math
- Track attainment distribution as the meta-metric — not just average
