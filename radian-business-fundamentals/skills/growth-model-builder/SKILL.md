---
name: growth-model-builder
description: Build a math-based growth model — marketing spend × conversion math × sales capacity = revenue — so plans are stress-testable and board commitments aren't guesses. Use pre-fundraise, annual planning, or mid-year re-forecast.
---

# growth-model-builder

## When to use

- Annual planning
- Pre-fundraise (investor will ask for the model)
- Mid-year re-forecast (board commitments need defensible math)
- Major plan change (new segment, new geography, new product)

## Core principle

**Top-quartile SaaS companies maintain explicit growth models tied to operating cadence.** Without a model, growth is a guess — and a guess can't be stress-tested or course-corrected. Plan-vs-actual variance widens, capital efficiency drops.

## Model components

A working growth model joins:

1. **Marketing → Pipeline math**
   - Spend × CPL → leads
   - Leads × conversion → MQL → SQL → opp
   - $ pipeline per channel

2. **Sales → Revenue math**
   - Capacity (reps × ramp × productivity) × pipeline coverage → bookings
   - Bookings × close rate → ACV
   - Cycle time → timing

3. **Customer → Recurring revenue math**
   - Bookings + starting ARR
   - Churn % + downgrade %
   - Expansion % (NRR)
   - = Ending ARR

4. **Constraints**
   - Hiring ramp (new reps don't produce at full quota for N months)
   - Marketing diminishing returns (channels saturate)
   - Capital / runway

## Workflow

1. Pull historicals (last 4-8 quarters of all the metrics above)
2. Compute baseline conversion rates and ratios
3. Build the forward model:
   - Quarter-by-quarter
   - Per channel for marketing
   - Per role for sales capacity
4. Plug in plan inputs (marketing budget, hiring plan, target growth)
5. Compute outputs (revenue, ARR, NRR, headcount, cash burn)
6. Stress test:
   - Best case / base case / worst case
   - Sensitivity to each input (which variable matters most?)
7. Identify the constraint(s) — what limits growth in the model
8. Recommend the plan that matches the math

## Output format

```markdown
*Growth Model — [Company] — [Period]*

*Inputs:*
- Marketing budget: $X / Q
- Hiring plan: [by role / by Q]
- Starting ARR: $Y
- Starting headcount: [breakdown]

*Conversion baselines (last 4Q):*
- CPL: $X
- Lead → MQL: Y%
- MQL → SQL: Z%
- SQL → opp: A%
- Opp → won: B%
- Cycle time: N days
- Avg ACV: $C
- Net churn %: D%
- Expansion %: E%
- NRR: F%

*Forward projection (4Q):*

| Quarter | Spend | Leads | Pipeline | Bookings | Ending ARR | NRR |
|---|---|---|---|---|---|---|
| Q1 | ... | ... | ... | ... | ... | ... |

*Scenarios:*
| Scenario | Q4 ARR | Headcount | Cash burn |
|---|---|---|---|
| Best | $X | N | $Y |
| Base | $X | N | $Y |
| Worst | $X | N | $Y |

*Sensitivity (which variable matters most):*
1. [variable] — 1pp change → $X impact
2. [variable] — 1pp change → $Y impact

*Bottleneck identified:*
[The constraint — usually pipeline OR sales capacity OR conversion]

*Recommended plan:*
- [Specific call: invest more in marketing / hire faster / fix conversion / etc.]
- Validation milestones: [...]
- Course-correct triggers: [if X by month N, change Y]
```

## Connectors

- CRM (sales math)
- Marketing automation + ad platforms (marketing math)
- Finance / BI (revenue + retention)
- HR (hiring plan)

## Gotchas

- A growth model is wrong about specifics but useful about constraints
- Refresh quarterly against actuals — model must learn
- Don't overweight the best-case scenario — investors / boards will hold you to it
- Sensitivity analysis matters more than the headline number — shows where to focus
