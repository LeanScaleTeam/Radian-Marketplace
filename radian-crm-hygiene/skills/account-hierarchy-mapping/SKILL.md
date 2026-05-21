---
name: account-hierarchy-mapping
description: Map legal entities to a single customer relationship (Acme US, Acme Europe, Acme Holdings, subsidiaries all → one customer). Use during account audits, M&A activity, or when account-level reporting double-counts.
---

# account-hierarchy-mapping

## When to use

- Account audit / cleanup
- After M&A activity at a customer (new entity added to your CRM)
- Before account-level reporting (NRR, wallet share, total customer value)
- Territory disputes ("we're both working Acme")

## Core principle

**Legal entities ≠ accounts.** Enterprise customers span 3-10 legal entities; most CRMs treat them as separate records. Clay publicly identifies this as an unsolved B2B GTM problem. Native CRM hierarchy fields are weak.

## What gets mapped

For each account, identify:

- **Ultimate parent** — the actual customer (e.g., Acme Holdings)
- **Subsidiaries** — separate legal entities (Acme US, Acme Europe, Acme Software Inc.)
- **Acquired entities** — companies bought by the parent
- **Renamed entities** — same legal entity, different name over time
- **JVs / partnerships** — partial ownership relationships

## Workflow

1. For each account, pull:
   - Legal name + DBAs
   - Domain(s)
   - Address (HQ + others)
   - Parent company field if populated
2. Cross-reference against:
   - Crunchbase / PitchBook (corp structure)
   - Domain WHOIS
   - LinkedIn company "Affiliated pages"
   - Public M&A news (last 5 years)
3. Build hierarchy tree
4. Apply rules:
   - **Roll up to parent for renewal / NRR reporting**
   - **Keep subsidiary-level for territory ownership / activity**
   - **Flag for cross-sell when one subsidiary is a customer, another isn't**
5. Write hierarchy to CRM (using parent-account field + custom hierarchy fields)

## Output format

Account map:

```markdown
*Account Hierarchy — Acme Group*

🏢 Acme Holdings (ultimate parent)
├── 🏢 Acme Software Inc. — *CUSTOMER* — $240K ARR — owner: J. Smith
├── 🏢 Acme Europe Ltd. — *CUSTOMER* — $80K ARR — owner: M. Lee
├── 🏢 Acme Asia Pacific — prospect — opp owner: T. Chen
└── 🏢 Acme Labs (R&D arm) — not contacted

*Total relationship:*
- ARR: $320K
- Customer subsidiaries: 2 of 4
- Cross-sell candidates: Acme Asia Pacific, Acme Labs
- Renewal date earliest: 2026-08-12 (Acme Europe)

*Suggested actions:*
- Roll up reporting at "Acme Holdings" level
- Introduce Acme Software's champion to Acme APAC team (warm intro path)
- Flag Acme Labs for outbound (R&D-specific persona)
```

Weekly summary:

```markdown
*Account Hierarchy Updates — week of [date]*

*Newly mapped:* N parent relationships
*Cross-sell candidates surfaced:* M
*Total wallet visibility improvement:* $X ARR rolled up to correct parent
```

## Connectors

- CRM (required)
- Crunchbase / PitchBook (corporate structure)
- LinkedIn (affiliated pages)
- WHOIS / domain registry
- Slack (delivery)

## Gotchas

- Hierarchy is the input to almost every important account-level report — get it right or every metric is wrong
- M&A creates phantom dupes — this skill is the natural intake for those
- Don't over-roll-up — local subsidiaries can have local buying autonomy; rep ownership stays at subsidiary level
- Re-validate quarterly — corp structure changes faster than people realize
