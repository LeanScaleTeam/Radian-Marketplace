---
name: outbound-personalization
description: Draft genuinely personalized outbound (not {{FirstName}} token spam) at scale. Use when drafting cold outreach, when reply rates are flat at 1%, or when the user says "personalize this", "make this better", or "we're getting no replies".
---

# outbound-personalization

## When to use

- Drafting initial cold outreach to a Tier A account
- Refresh of an underperforming sequence (rep reply rate <2%)
- Coaching a rep whose personalization is shallow
- Bulk personalization for an ABM campaign (10-50 named accounts)

## Core principle

**Generic outbound = 1% replies. Truly personalized = 2-5x.** Top performers send fewer, better-researched emails. LLMs make "credible 1:1" possible at near-zero cost — the unlock for this category.

## Personalization tiers (good → great)

| Tier | What it looks like | Reply rate band |
|---|---|---|
| Tier 0 (token-only) | "Hi {{FirstName}}, hope you're doing well at {{Company}}" | 0.5-1% |
| Tier 1 (role-based) | References their function + a likely pain | 1-2% |
| Tier 2 (company context) | References company stage / news / hiring | 2-3% |
| Tier 3 (individual context) | References their content / posts / prior role | 3-5% |
| Tier 4 (mutual context) | References a shared connection / customer | 5%+ |

Don't go higher than Tier 3 in bulk — Tier 4 is for hand-crafted A-list outreach.

## Workflow

1. **Pull context per recipient**
   - Role / tenure / prior role
   - Company stage / recent news / funding / hiring signals
   - LinkedIn posts in last 90 days (top 3 by engagement)
   - Tech stack signals
   - Mutual connections / shared customers

2. **Pick the personalization angle** (just ONE per email):
   - Trigger event (most powerful when fresh)
   - Pain hypothesis grounded in role + stage
   - Their public content
   - Mutual context

3. **Draft to the high-conversion structure:**
   - Subject: 4-8 words, specific
   - Opening: ONE sentence proving you did homework
   - Connection: why NOW
   - Value: 1-2 lines, persona-specific
   - CTA: ONE low-commit ask
   - Total: 50-90 words

4. **QA the draft before delivery**
   - Personalization angle is specific (not "I see you're in SaaS")
   - No flattery without substance
   - One CTA, low commitment
   - Subject doesn't reek of automation

5. **Deliver to rep via Slack** with 2 subject variants

## Output format

```markdown
*Outbound Draft — [Contact] @ [Company]*
*Personalization tier:* T3 — based on their LinkedIn post 12d ago about [X]

*Subject options:*
1. [option]
2. [option]

*Body:*
[50-90 word draft]

*Why this angle:* [one line]
*Hook reference:* [link to source — post / news / mutual connection]
*Next step:* Rep reviews, copies to inbox, sends.
```

## Connectors

- CRM (recipient data)
- LinkedIn / enrichment (for individual context)
- News API (for trigger events)
- Slack (draft delivery)

## Gotchas

- Volume × personalization is a knob, not a free lunch — fewer, better emails almost always wins
- LLM-default tone reads robotic — explicit instruction: match rep's voice (provide samples)
- Avoid the "I noticed you...." opener — overused, sounds AI-y
- If personalization angle is weak, ASK the rep for context instead of faking depth
