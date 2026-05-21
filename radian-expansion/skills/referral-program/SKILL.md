---
name: referral-program
description: Systematically ask happy customers for referrals, track them, and reward referrers. Convert latent referral willingness (83%) into actual referrals (29%) — the gap is asking.
---

# referral-program

## When to use

- Continuous: identify referral candidates from happy customer pool
- Triggered moments: post-renewal, post-expansion, post-positive-NPS
- Quarterly referral campaign waves
- Sales runs out of pipeline (referrals = highest-converting source)

## Core principle

**83% of satisfied B2B customers are willing to refer — but only 29% actually do** (Texas Tech / Wharton). The gap is **asking**. Referred customers have 16% higher LTV and 18% lower churn (Wharton). It's the highest-leverage growth lever consistently underused.

## Referral asks: who, when, what

### Who to ask

- Customers with NPS 9-10 in last 90 days
- Customers who just renewed + expanded
- Customers who publicly mentioned the product
- Champions with strong network density in target ICP

### When to ask

- Within 14 days of a positive milestone (renewal, expansion, success metric)
- NOT during a churn-risk window
- NOT immediately after a support incident (even if resolved)

### What to ask

- Specific: "is there anyone at [similar company / role] who'd benefit?"
- NOT vague: "do you know anyone we should talk to?"
- Make it easy: pre-filled intro template, no commitment beyond intro

## Workflow

1. Identify referral candidates (signals above)
2. Generate the ask:
   - Personalized message referencing their specific win
   - Specific ask (peer they could refer)
   - Pre-filled intro draft they can forward
3. CSM / AE delivers the ask in a natural moment
4. Track:
   - Asked
   - Responded
   - Referral provided
   - Referral converted (meeting → opp → closed)
5. Reward:
   - Financial (credit, gift card, cash — per portco's program)
   - Recognition (community spotlight, exclusive event invite)
6. Loop: thank referrer when referral converts

## Output format

Per referral ask:

```markdown
*Referral Ask Draft — [Customer]*

*Why they're a candidate:*
- NPS 10 on [survey date]
- Just expanded $X
- Champion at [company] — strong network in [industry]

*Suggested ask (CSM delivers in next 1:1):*
> "[Champion name], you mentioned your team saw [outcome]. There's probably someone in your network running into the same problem — would you mind if I ask if there's anyone specific I could mention us to?"

*Pre-filled intro template (they can forward):*
> "Hey [contact], wanted to introduce you to [our company]. We've been using them for [time], and [outcome]. Worth a 15-min look — [our rep] will reach out."

*If they say yes:*
- Get the referral name + company
- Send the intro template
- Within 24h, AE follows up

*Reward:* [program token] sent automatically once referral converts to opp
```

Quarterly program report:

```markdown
*Referral Program — [Quarter]*

*Asks made:* N (target M based on customer pool)
*Referrals generated:* K (X% ask-to-referral conversion)
*Referrals → meetings:* P
*Referrals → closed-won:* Q ($R ARR)
*Referrer reward distributed:* $S

*Top referrers:*
| Customer | # referrals | $ generated |
```

## Connectors

- CRM (customer + NPS data)
- CS tool (health + milestone signals)
- Slack
- Optional: dedicated referral platform (Influitive / Friendbuy / PartnerStack)

## Gotchas

- Ask specifically — vague asks produce nothing
- Make it easy — pre-fill the intro, don't make the customer write it
- Track and reward — un-rewarded referrers stop referring
- Don't gate the program behind "ask permission" — make it a normal part of customer ops
