---
name: target-account-list-building
description: Build a clean, enriched, prioritized outbound target account list from ICP criteria — eliminating the manual list-pulling work reps spend ~21% of their time on. Use weekly, when expanding into a new segment, or when the user says "build my list", "target accounts for this quarter", or "I need new accounts to work".
---

# target-account-list-building

## When to use

- Weekly/monthly list refresh for an outbound rep
- New segment expansion (vertical, geo, size band)
- Stale-list audit (titles change, companies pivot)
- Rep onboarding (give them a starter list)

## Core principle

**Reps spend ~21% of their time on research and list-building** (Salesforce State of Sales). Manually built lists are 30-40% less accurate. Lists go stale weekly. Centralizing list-building eliminates rep busywork and standardizes ICP application.

## Workflow

1. **Define the search**
   - ICP criteria (industry, size, geo, tech stack, funding stage)
   - Persona criteria (titles, seniority, function)
   - Exclusion rules (existing customers, recent opps, competitors, current rep's other lists)

2. **Pull from enrichment provider**
   - Apollo / ZoomInfo / Clay / LinkedIn Sales Nav
   - Cap at N accounts (typically 50-200 per rep per week)

3. **Cross-reference internal systems**
   - Remove accounts already in CRM with active opps
   - Remove accounts owned by other reps (territory conflict)
   - Flag accounts with prior closed-lost (handle with awareness, not blacklist)
   - Flag current customers (route to expansion / cross-sell)

4. **Score and prioritize**
   - Tier A: strong ICP fit + intent signal
   - Tier B: strong ICP fit, no intent
   - Tier C: adequate fit, intent signal
   - Tier D: adequate fit, no intent (last resort)

5. **Enrich contacts**
   - 2-3 personas per account (champion, EB, user/influencer)
   - Verified email + LinkedIn URL
   - Recent activity / triggers per contact

6. **Deliver**
   - CSV / CRM bulk import
   - Slack message to rep with list summary + Tier-A starting set

## Output format

```markdown
*New Outbound List — [Rep] / [Segment] / [Date]*

*Total accounts:* 120 (60 Tier A, 30 Tier B, 30 Tier C)
*Total contacts:* 360 (3 per account avg)

*Tier A (start here):*
| Account | Industry | Size | Trigger | Lead contact |
|---|---|---|---|---|
| Acme | SaaS | 200-500 | Series B, 28d ago | Jane Doe, VP Eng |
| ...

*De-duped from:*
- 14 existing CRM opps (excluded)
- 8 current customer accounts (routed to expansion)
- 22 owned by other reps (territory rules)

*Suggested first plays:*
- Tier A → 1:1 personalized email + LinkedIn within 48h
- Tier B → personalized cadence start
- Tier C → personalized cadence with lower priority
```

## Connectors

- CRM (required)
- Enrichment provider (Apollo / ZoomInfo / Clay / Sales Nav)
- Optional: intent provider, news API
- Slack (delivery)

## Gotchas

- Territory rules vary per portco — confirm before pulling
- Don't ship a 500-account list — reps drown; 50-200 is the working band
- Refresh weekly — titles change at ~10%/year, companies pivot, signals decay
- Always include verified-email status — bouncing kills deliverability
