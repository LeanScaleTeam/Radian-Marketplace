---
name: deal-approval-check
description: Check whether a proposed deal meets current approval criteria. Use when a rep submits a deal for approval, when reviewing a daily deal desk queue, or when the user says "should I approve this deal", "deal desk review", or "is this deal approvable".
---

# deal-approval-check

## When to use

- A rep submits a deal for approval (via Slack, Salesforce, or direct chat)
- Daily deal desk queue review at start of day
- Ad-hoc "should I approve this?" question
- Forecast hygiene — pressure-test commit-stage opps

## Core principle

**Approval criteria are NOT static.** The same deal that's a "no" in Week 2 of a quarter can be a "yes" in Week 12. Pull recent patterns, not a rulebook. When confidence is low or the deal sits in gray area, hand off to the `deal-desk-reviewer` subagent.

## Inputs

Required (any one of these is enough to start; ask for the rest if missing):
- Opportunity ID (Salesforce) — pull everything from here
- Or: account name + proposed terms (ACV, discount %, payment terms, billing terms, contract length)

Optional context that improves judgment:
- Rep name (new rep needs different scrutiny than top performer)
- Quarter pacing (ahead / on / behind quota)
- Strategic flags (logo, expansion path, competitive displacement)

## Workflow

1. **Pull the deal record from Salesforce**
   - Use the configured Salesforce MCP to fetch opp + account + line items
   - If MCP isn't wired, the verify-connectors hook will already have blocked — surface that error

2. **Pull recent approval precedents**
   - Last 30 days of approved deals matching: similar segment, ACV band, discount range
   - Last 30 days of rejected deals with the same dimensions
   - This is the "what did we approve in similar situations recently" data

3. **Score against current criteria**
   - Discount % vs. segment median (last 30d)
   - Payment terms vs. standard (typically net-30)
   - Billing terms vs. standard (typically annual)
   - Contract length vs. typical for segment
   - Total ACV vs. minimum for the proposed terms

4. **Recommend**
   - **Approve** — all dimensions within current acceptable bands, no edge cases
   - **Reject** — one or more hard violations (e.g., discount > 40% on a non-strategic SMB deal)
   - **Escalate** — gray area or conflicting signals → hand to `deal-desk-reviewer` subagent

5. **Output**
   - Recommendation (Approve / Reject / Escalate)
   - One-paragraph reasoning grounded in the precedent data
   - If Reject: what the rep needs to change before resubmitting
   - If Escalate: handoff brief to the deal-desk-reviewer
   - Post to Slack (channel configurable per portco) and log via the audit hook

## Output format

```markdown
**Deal Approval Check — [Account Name]**
**Recommendation:** APPROVE / REJECT / ESCALATE
**Confidence:** High / Medium / Low

**Proposed terms:**
- ACV: $X
- Discount: Y%
- Payment terms: net-Z
- Billing: annual/quarterly/monthly
- Contract length: N months

**Reasoning:**
[Compared to last 30d in this segment: discount sits at Pth percentile;
payment terms are non-standard but precedented N times; …]

**Next step:**
[What the rep does next — sign, revise, or wait for reviewer]
```

## Example output (real-shape, populated)

This is what a rep actually sees in Slack when the skill runs against an Salesforce opp:

```markdown
**Deal Approval Check — Acme Corp**
**Recommendation:** ESCALATE
**Confidence:** Medium

**Proposed terms:**
- ACV: $42,000
- Discount: 28% (off list $58,300)
- Payment terms: net-60
- Billing: annual
- Contract length: 12 months

**Reasoning:**
Discount sits at the 88th percentile of approved SMB deals last 30 days
(median approved = 14%, P90 = 27%). Net-60 is non-standard but has been
approved 4 times in this segment in the last quarter — all for similar
ACV bands. Combined, the 2 non-standard variables push this past the
auto-approve threshold. Escalating to @chiraag via deal-desk-reviewer
subagent — request includes call transcript context where rep
acknowledged competitive pressure from [Competitor X].

**Next step:**
Wait for deal-desk-reviewer decision (typically <2 hours during business
hours). If you want to move faster, drop the discount to ≤22% OR change
payment to net-30 — either single change moves this to auto-approve.

_Logged to audit trail. Reviewer pinged._
```

## Connectors used

- Salesforce — opp + approval history (required)
- Slack — route decision to rep + #deal-desk channel
- Optional: Gong/Fireflies — pull call context for "why this discount"

## Gotchas

- Don't approve based on what the rep claims is in the deal — pull from Salesforce
- If the opp record is missing fields, ASK rather than assume defaults
- Always include the precedent data in the reasoning — the rep should learn the bar, not just get an answer
