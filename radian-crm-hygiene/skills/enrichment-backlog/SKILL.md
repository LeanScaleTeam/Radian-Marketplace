---
name: enrichment-backlog
description: Batch-enrich existing CRM records that are missing firmographic, contact, or tech-stack data. Scheduled / batch process — distinct from real-time enrichment at lead capture.
---

# enrichment-backlog

## When to use

- Scheduled monthly batch (low priority, runs overnight)
- Before a big segmentation / scoring exercise (need complete data first)
- After ICP redefinition (need new fields filled in)
- Post-migration cleanup

## Core principle

**Without enrichment, segmentation / lead scoring / personalization all break — you can't filter on empty fields.** Form abandonment data: every additional form field drops conversion ~5%, so capture is intentionally minimized. Enrichment fills the gap.

## Scope distinction

- This skill: **batch / scheduled**, fills existing records, can take minutes per record
- `radian-marketing-ops::inbound-lead-enrichment-realtime`: **real-time**, sub-30s, fires at new lead capture

## What to fill

| Field | Priority | Source |
|---|---|---|
| Company industry / sub-industry | High | Apollo / ZoomInfo / Clearbit |
| Headcount band | High | Same |
| Country / region | High | Same |
| Funding stage | Medium | Crunchbase / PitchBook |
| Tech stack | Medium | BuiltWith / Wappalyzer |
| Contact role / seniority / function | High | Same enrichment + LinkedIn |
| Contact tenure | Medium | LinkedIn |
| Phone (verified) | Medium | Apollo / Cognism |
| Email validity | High | Neverbounce / Kickbox |

## Workflow

1. Identify records with missing fields (by priority)
2. Batch them by enrichment provider (some are better for certain field types)
3. Run waterfall:
   - Premium first (Clay / ZoomInfo)
   - Mid-tier backup (Apollo / Clearbit)
   - Public/free last resort
4. Write back to CRM
5. Track per-provider success rate (sometimes one provider degrades silently)
6. TTL by field type:
   - Contact data: 30d
   - Firmographic: 90d
   - Tech stack: 180d
7. Re-enrich expired fields automatically

## Output format

Monthly report:

```markdown
*Enrichment Backlog — [Month]*

*Records processed:* N
*Field-level completeness:*
| Field | Before | After |
|---|---|---|
| Industry | 64% | 97% |
| Headcount | 51% | 89% |
| Role | 72% | 95% |

*Provider performance:*
| Provider | Fields filled | Cost | $/field |
|---|---|---|---|

*Records still incomplete (manual research needed):* M
```

## Connectors

- CRM (required)
- Enrichment providers (waterfall: Clay, ZoomInfo, Apollo, Clearbit, Cognism)
- Optional: BuiltWith / Wappalyzer for tech stack
- Slack (status reports)

## Gotchas

- Don't over-enrich free-tier accounts — burns budget for low-value records
- Provider data quality varies wildly by region — calibrate per geo
- Stale enrichment is worse than no enrichment — honor TTLs
- Don't run during peak business hours — enrichment APIs can be slow + rate-limited
