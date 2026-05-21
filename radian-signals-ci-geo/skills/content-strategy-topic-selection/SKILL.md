---
name: content-strategy-topic-selection
description: Pick content topics buyers actually search for, that align with commercial intent, and that we can credibly own — not topics the team finds interesting. Use quarterly for content calendar; on-demand for one-off planning.
---

# content-strategy-topic-selection

## When to use

- Quarterly content calendar planning
- New segment / vertical / product launch
- Content traffic flat or declining
- Pre-publishing decision: "should we write about X?"

## Core principle

**90%+ of pages on the internet get zero organic search traffic** (Ahrefs). Most content chases topics the team finds interesting, not topics buyers search. Also: AI search is replacing top-of-funnel discovery — strategy needs to shift to entity authority + structured topics, not just keywords.

## Topic selection framework

For each candidate topic, score on:

| Dimension | Score |
|---|---|
| **Search demand** (traditional + AI) | High / Medium / Low / None |
| **Commercial intent** | Buyer / Researcher / Curious |
| **Competitive intensity** (can we win?) | Low / Medium / High |
| **Brand authority fit** (we have a credible POV) | Strong / Adequate / Weak |
| **Sales utility** (will reps use this in deals?) | Yes / Sometimes / No |
| **Citation potential** (would AI / industry sources cite this?) | High / Medium / Low |

A great topic scores well on at least 4 of 6.

## Topic types

| Type | Use |
|---|---|
| **Bottom-of-funnel comparison** ("X vs Y", "alternatives to Z") | Highest commercial intent, high competitive |
| **Mid-funnel problem-based** ("How to solve X") | Educational, captures researchers |
| **Top-of-funnel definitional** ("What is X") | Build entity authority for AI search |
| **Benchmark / research-led** (original data) | High citation potential, owns category |
| **Thought leadership / POV** | Brand differentiation, not search-driven |

## Workflow

1. Pull existing performance data
   - What ranks / drives leads / gets cited
   - Where are the content gaps in the funnel
2. Pull search demand data
   - Traditional: Ahrefs / SEMrush
   - AI: visibility data from `geo-ai-search-monitor`
3. Pull competitive landscape per topic (who's already winning)
4. Generate candidate topic list (30-60 options)
5. Score each, recommend top 12-20 for the next quarter
6. Map to funnel stages (balance bottom + mid + top)
7. Deliver as a content brief per topic

## Output format

Per-topic brief:

```markdown
*Content Topic Brief — "[Topic]"*
*Score:* 5/6 (strong)
*Funnel stage:* Bottom (comparison-driven)
*Search demand:* 2,400 searches/mo (traditional) + Tier 1 AI query

*Why this:*
- Bottom-of-funnel comparison directly tied to deals
- Competitor's existing post is thin — we can produce a definitive answer
- Sales has been asking for this asset

*Suggested angle:*
[1-2 sentence editorial direction]

*Structure outline:*
1. ...
2. ...
3. ...

*Citation strategy:*
- Original research / data points to include
- External authorities to cite
- Customer examples to feature

*Distribution plan:* (hand off to content-distribution skill)
```

Quarterly calendar:

```markdown
*Q[N] Content Calendar*

*Capacity:* 12 pieces (3 long-form, 9 medium)
*Funnel balance:* 4 bottom / 5 mid / 3 top

| Topic | Stage | Score | Publish wk |
|---|---|---|---|
| ... |
```

## Connectors

- SEO tools (Ahrefs / SEMrush)
- AI search visibility (from `geo-ai-search-monitor`)
- CRM (which content sources deals)
- Web analytics
- Slack (delivery)

## Gotchas

- "Interesting to us" ≠ "valuable to buyer" — kill internal-feedback-driven topics
- Citation potential is the new SEO — write content WORTH citing
- Topics with no commercial intent generate traffic but no pipeline — fine in moderation, dangerous as the strategy
- Refresh existing winning content > publish more new content (often higher ROI)
