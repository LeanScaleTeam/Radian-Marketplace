---
name: discovery-quality-coach
description: Coach reps on discovery quality by analyzing recent calls — question depth, follow-up "why" patterns, pain quantification. Use after a rep's call, in 1:1 prep, or when win rates suggest shallow discovery.
---

# discovery-quality-coach

## When to use

- Post-call coaching loop (auto-trigger after every disco call for a rep being coached)
- 1:1 manager prep
- Cohort analysis: "which reps have the weakest discovery?"
- New rep onboarding (review first N calls)

## Core principle

**Top reps ask 11-14 questions per disco call; bottom reps 4-6** (Gong). Discovery depth is the single biggest predictor of close. Generic coaching ("ask better questions") doesn't move the needle — specific examples from the rep's own calls do.

## What to analyze per call

| Dimension | Strong | Weak |
|---|---|---|
| **Question count** | 11+ | <8 |
| **Question type mix** | Open > closed, ~70/30 | Closed-heavy |
| **"Why" follow-ups** | Asks 2-3 layers deep | Stops at surface answer |
| **Pain quantification** | Asks "how much / how often / what does it cost you" | Pain stays adjective-only |
| **Talk ratio** | Rep 30-40% / customer 60-70% | Rep >50% (over-talking) |
| **Methodology coverage** | Hit MEDDIC/BANT/etc. dimensions | Skipped key dimensions |

## Workflow

1. Pull recent disco call transcript (Gong / Fireflies)
2. Score each dimension
3. Pull specific examples (timestamps + quotes) from the rep's own call
4. Compare against benchmark (top performer on the team OR Gong industry data)
5. Identify ONE focus area for next call (don't dump 6 things)
6. Deliver as Slack DM to rep + manager

## Output format

```markdown
*Discovery Coach — [Rep] / Call: [Account] / [Date]*

*Overall:* B+ / Adequate / Needs work

*Strengths to keep doing:*
- [specific moment, timestamp]: "[quote]" — strong open-ended question, drove great answer

*One focus for next call:*
**Go one layer deeper on pain quantification.**
- Example: at 14:32 the prospect said "we're losing deals to competitors" — you moved on
- Try: "How many deals last quarter? What's the average ACV? What does that add up to?"
- Reason: prospect's pain isn't real to them until they've quantified it out loud

*Question stats:*
- Questions asked: 7 (target 11+)
- Talk ratio: 52% (target <40%)
- Why-follow-ups: 1 (target 3+)

*Suggested practice:*
- Read [resource] before next call
- Try the "5 whys" frame on next disco
```

## Connectors

- Gong / Fireflies / Chorus (required)
- CRM (deal context)
- Slack (delivery)

## Gotchas

- ONE focus per coaching cycle — dumping 6 critiques produces zero behavior change
- Lead with what's working — coaching ≠ critique
- Don't compare to "an abstract top rep" — compare to a specific top performer on the team whose calls the rep can listen to
- Manager loop matters — the rep changes faster when their manager is reading the same coaching
