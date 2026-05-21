---
name: objection-handling-coach
description: Build the team's objection library, surface the top recurring objections, and coach reps with prepared responses. Use weekly to refresh the library, when a rep loses a deal to a known objection, or when prepping a new rep.
---

# objection-handling-coach

## When to use

- Weekly objection library refresh (new objections appearing in calls)
- Post-loss coaching when the loss reason is an objection
- New rep onboarding — load the prepared frames
- Manager 1:1 prep — pattern across rep's calls

## Core principle

**Top 5-10 objections cover 80%+ of pushback** (Gong). Top reps handle objections in <30 seconds with prepared frames; bottom reps stall or concede. Most "price" objections are value-framing failures.

## What the skill maintains

A versioned objection library, structured as:

| Objection | Category | Top frame | Backup frames | Reps' wins | Reps' losses |
|---|---|---|---|---|---|
| "Too expensive" | Price | Reframe to ROI | Compare to status quo cost | [list of wins] | [losses where this came up] |
| "We already have [competitor]" | Incumbent | Diff-in-diff framing | Migration path | ... | ... |
| "Not now / next quarter" | Timing | Cost-of-delay calc | Limited offer | ... | ... |
| "Need to talk to [stakeholder]" | Process | Multi-thread tactics | Champion enablement | ... | ... |
| "Budget cycle / no budget" | Budget | Build business case | Ramp deal | ... | ... |

## Workflow

### Daily

1. Scan new call transcripts
2. Detect objections raised (pattern + LLM classification)
3. Match to existing library entries OR flag as new
4. Tag the outcome (handled well / poorly / led to loss)

### Weekly

1. Aggregate the week's objection mix
2. Surface trending objections (e.g., "competitor X mentioned 8x this week, up from 2x")
3. Identify reps struggling with specific objections (>2 losses)
4. Deliver weekly report

### Per coaching event

1. Rep asks "how do I handle [X]?"
2. Pull library entry + 2-3 specific wins from top reps (with timestamps)
3. Deliver as Slack message rep can save / refer back to

## Output format

Per coaching response:

```markdown
*Objection Coaching — "[Objection text]"*

*Category:* Price / Incumbent / Timing / Process / Budget

*Primary frame:*
[The recommended response, written verbatim — 30-60 second delivery]

*Why it works:*
[Brief reasoning]

*Watch a teammate land it:*
- [Rep] / [Account] / [timestamp] — listen at 18:42
- Rep handled this in 22 seconds, deal closed-won

*Backup frame if primary doesn't land:*
[Alternative response]

*Avoid:*
- Don't apologize for price
- Don't concede before understanding the actual constraint
```

Weekly report:

```markdown
*Objection Trends — week of [date]*

*Top objections this week:*
| Objection | Times raised | Win rate when raised | Trend |
|---|---|---|---|
| Too expensive | 18 | 22% | flat |
| Competitor X | 11 | 31% | ⬆️ from 3 last week |
| Not now | 9 | 12% 🔴 | flat |

*New objections detected:*
- "Worried about your runway / will you exist in 2 years" — 3 times this week (NEW)

*Reps to coach:*
- [Rep] — 3 losses with "too expensive" — refresh on ROI frame
```

## Connectors

- Gong / Fireflies (required)
- CRM (deal outcome data)
- Slack (delivery)

## Gotchas

- Library quality > library size — 20 great frames beat 80 mediocre ones
- Audio examples > text examples — let reps hear the delivery
- Refresh the library — frames decay as messaging / competitive landscape shifts
- Don't preach perfect frames at moments of high pressure — coach in calm contexts
