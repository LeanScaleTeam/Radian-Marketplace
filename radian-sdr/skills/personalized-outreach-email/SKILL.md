---
name: personalized-outreach-email
description: Draft a personalized first-touch email from an enriched lead. Output is draft-only — the rep sends from their own inbox. Use after lead-enrichment, when the user says "draft outreach", "write a cold email to X", or "send this lead a first touch".
---

# personalized-outreach-email

## When to use

- Immediately after `lead-enrichment` completes (typical chain)
- Manual ask: "draft outreach to this person"
- Re-engagement of stale leads (different template — see Variations)
- After a buying signal hits (new role at target account, funding event, etc.)

## Critical constraint (enforced by hook)

**This skill drafts ONLY. The rep sends from their own inbox.**

The `draft-not-send.sh` hook will hard-block any tool that would actually send an email. This is intentional — v1 is draft-only because:
1. SEP / email MCPs are immature across portcos
2. Compliance + deliverability risk if outreach goes out at scale unreviewed
3. Reps build relationship with their tone — the AI is a drafter, not a sender

## Email anatomy (high-conversion structure)

| Section | Length | Purpose |
|---|---|---|
| Subject line | 4–8 words | Open rate — specific, no clickbait |
| Opening | 1 line | Show you did homework (specific fact about them) |
| Connection | 1 line | Why you're reaching out NOW (trigger event) |
| Value | 1–2 lines | What you do for people in their role at companies like theirs |
| CTA | 1 line | One specific, low-commitment ask |

**Total length: 50–90 words.** Anything longer doesn't get read.

## Workflow

1. **Pull enrichment context** (from `lead-enrichment` output or fresh fetch)

2. **Identify the angle** — pick ONE:
   - Trigger event (just raised, just hired X, just launched Y)
   - Pain hypothesis grounded in their role + company stage
   - Mutual connection or relevant similar customer
   - Content they engaged with (if intent data is wired)

3. **Draft to the structure above**
   - Specificity > flattery (don't open with "love what you're doing")
   - One CTA only — "are you the right person to talk to about X?" or "open to a 15 min next Tuesday?"
   - Match the rep's voice if a sample is provided

4. **Provide 2 subject line variants**

5. **Deliver to rep via Slack** with a copy-button-friendly block

## Output format

```markdown
*Outreach Draft — [Contact Name] @ [Company]*

*Subject options:*
1. [option A]
2. [option B]

*Body:*
[Hi {{first_name}},

[Opening — specific fact about them]

[Connection — why now]

[Value — 1-2 lines]

[CTA]

Best,
{{rep_name}}]

*Why this angle:* [1 line explaining the personalization hook]
*Next step:* Rep reviews → copies into their inbox → sends.
```

## Variations

**Re-engagement (stale lead):**
- Subject: reference the prior touch, not "just following up"
- Body: new value angle or new trigger event
- CTA: easier than first-touch (link to content, not a meeting)

**Champion expansion (peer in same account):**
- Open with mutual context (existing relationship in their org)
- CTA: intro request via the existing contact

## Connectors used

- Salesforce / HubSpot — lead + enrichment data
- Slack — draft delivery to SDR
- Optional: rep voice sample storage for tone-matching

## Gotchas

- Never auto-send. The hook will block — but also don't try.
- Don't use the customer's company name more than twice — sounds robotic
- Personalization without a CTA is just flattery
- If you can't find a specific personalization angle, say so and ask the rep to share more context — don't fake it with generic flattery
