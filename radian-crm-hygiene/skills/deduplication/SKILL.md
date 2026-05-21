---
name: deduplication
description: Detect and merge duplicate CRM records (accounts + contacts) using fuzzy matching that catches what rules-based tools miss. Use as continuous background process + on-demand cleanup.
---

# deduplication

## When to use

- Continuous background scan (low-throughput, weekly batch)
- One-time cleanup of an existing messy CRM
- Pre-migration check (before changing CRM or merging companies)
- After M&A activity adds duplicate accounts

## Core principle

**10-30% of B2B CRM records are duplicates.** Native CRM dedupe (Salesforce, HubSpot) is rules-based — it misses fuzzy matches (typos, abbreviations, formatting differences). Manual dedupe is expensive and never finishes; the problem regenerates as fast as it's solved. AI/fuzzy matching is the unlock.

## Detection approaches

| Approach | Catches | Misses |
|---|---|---|
| Exact email match | Obvious dupes | Typos, alternate domains |
| Exact company name | Obvious dupes | "Acme Inc" vs "Acme, Inc." vs "ACME" |
| Email domain match | Many account dupes | Free-email domains, contractors |
| Fuzzy company name (Levenshtein / embedding) | Typos, abbreviations | Wholly different naming |
| Phone number normalized | Cross-source dupes | Reps using personal cell |
| Address normalized | Geo dupes | Mailing vs HQ address |
| **Composite (multi-signal)** | Most | Fewest false positives |

## Workflow

1. Continuous: process new/updated records through fuzzy matching pipeline
2. For each potential dupe pair:
   - Compute composite similarity score (multi-signal)
   - Classify: definite dupe / probable dupe / possible dupe
3. Auto-merge definite dupes (with audit log)
4. Queue probable dupes for human review with merge recommendation
5. Surface possible dupes only on request
6. Track merge stats + accuracy weekly

## Merge logic

When merging:
- Keep the record with most data + oldest created date
- Aggregate all activities, notes, contacts from both
- Preserve all opps (re-link to surviving record)
- Log the merge in audit table (reversible)

## Output format

Per dupe (review queue):

```markdown
*Possible Duplicate — Confidence: HIGH*

*Record A (keep):*
- Name: Acme Inc.
- Domain: acme.com
- Created: 2024-03-12
- 4 contacts, 2 opps ($240K total)

*Record B (merge in):*
- Name: Acme, Inc
- Domain: acme.com
- Created: 2025-09-21
- 1 contact, 0 opps

*Match signals:*
- Domain match: 100%
- Name fuzzy: 96% (formatting only)
- Phone match: 100%

*Recommended action:* Auto-merge
```

Weekly report:

```markdown
*Dedup Report — week of [date]*

*Processed:* N records scanned
*Auto-merged:* M
*Pending human review:* P
*Estimated cleanup ROI:* Q hours of rep time saved/quarter
```

## Connectors

- CRM (required)
- Email tool (for activity reconciliation)
- Slack (review queue notifications)

## Gotchas

- False positives at scale = disaster. Bias toward "queue for review" not "auto-merge" on anything ambiguous.
- Some "dupes" are intentional — subsidiaries, departments. Account hierarchy mapping (separate skill) handles these.
- Always preserve audit trail — merges must be reversible
- Be careful with free-email-domain accounts (gmail.com, etc.) — never merge on domain alone
