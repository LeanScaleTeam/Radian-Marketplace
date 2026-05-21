---
name: cold-lead-reengagement
description: Wake up dormant leads in the database — segment, target, and re-engage with relevance. Use quarterly, after a product/positioning change, or when the user says "wake up the database", "old leads", or "we have 50K leads doing nothing".
---

# cold-lead-reengagement

## When to use

- Quarterly database health pass
- After a meaningful product launch, positioning shift, or category move
- When net-new lead cost balloons and the database is being neglected
- Before a budget cycle when paid acquisition needs a justification check

## Core principle

**Chet Holmes "3% rule":** only 3% of any market is in-buying mode now. The other 97% — most of the database — needs nurture, not abandonment. 25-30% of B2B databases go inactive yearly. Re-engagement often beats net-new acquisition on ROI.

## Workflow

1. **Segment the dormant pool**
   - Last touched >90 days ago
   - Still has email engagement (any open in last 180d) — these are recoverable
   - Zero engagement in 180d — dead pool, separate strategy

2. **Sub-segment by original entry context**
   - Content download (technical / business / use-case content)
   - Demo request never followed up
   - Event lead never worked
   - Newsletter signup

3. **Build relevance angle per segment**
   - Don't blast "still interested?" — sounds desperate, gets unsubscribes
   - Lead with new value: product update, new content, role-relevant insight
   - Reference their original interest context

4. **Cadence: 3 touches over 21 days max**
   - Touch 1: new angle, low-friction (article / video / podcast)
   - Touch 2: persona-specific value (case study / benchmark)
   - Touch 3: low-commit CTA (newsletter / community / no-pitch checkin)

5. **Measure**
   - Open rate / click rate per segment
   - Re-engagement rate (% becoming "active" again)
   - Pipeline conversion (highest-value metric)
   - Unsubscribe rate (the protect-the-list metric)

6. **Handle the dead pool separately**
   - Suppress from regular sends (protect deliverability)
   - One last opt-in-or-die touch
   - Then archive — keep the list clean

## Output format

```markdown
*Cold Lead Re-engagement Plan — [Date]*

*Database health:*
- Active (touched <90d): X% (N leads)
- Dormant (90-180d): Y% (M leads) — RE-ENGAGEMENT TARGET
- Dead (>180d no engagement): Z% (K leads) — opt-in-or-archive

*Recommended waves:*
| Segment | Size | Angle | First send |
|---|---|---|---|
| Demo-request-no-followup | 1,240 | "We talked but didn't connect — new product launch" | [date] |
| Tech content downloaders | 3,100 | "New technical deep-dive on [topic]" | [date] |
| ...

*Expected outcome:* re-activate 8-15% within 60 days based on industry benchmarks
```

## Connectors

- CRM (required)
- Marketing automation (required)
- Slack (delivery for owner notifications on re-engaged leads)

## Gotchas

- Protect deliverability — don't blast the dead pool, you'll torch your domain reputation
- Suppress current customers from acquisition-style messaging
- Test with small batches (5-10%) before full segment send
- "Just following up" is a banned phrase — give actual new value or don't reach out

## Scope distinction

- This skill: leads who entered the database but never engaged with sales
- `radian-sales-execution::long-term-followup`: prospects who DID engage with sales then went cold
