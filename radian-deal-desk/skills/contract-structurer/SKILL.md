---
name: contract-structurer
description: Help reps structure contracts by pulling payment terms, billing terms, and discount levers to get deals done. Use when a customer wants a discount, can't pay annual, can't pay net-30, or any "how do I restructure this deal so the customer can sign" situation.
---

# contract-structurer

## When to use

- Customer can't pay annual → restructure to quarterly/monthly billing
- Customer wants a discount → consider non-discount levers first
- Customer needs net-60 or net-90 payment terms
- Rep is conflating cost vs. payment terms (these are TWO different things)
- Customer has a hard budget cap → ramp deal or term length play

## Core principle

**A discount is the LAST lever, not the first.** Most "I need a discount" requests are actually cash-flow, budget-cycle, or approval-cap problems. Diagnose the actual constraint first, then pull the cheapest lever that solves it.

## Lever framework

| Lever | What it changes | When to use |
|---|---|---|
| **Payment terms** (net-30/60/90) | When the customer pays | Cash flow concern only — same total cost |
| **Billing terms** (annual/quarterly/monthly) | How often invoices are issued | Budget cycle mismatch, approval cap per period |
| **Discount %** | Total contract value | Competitive pressure, strategic logo, volume |
| **Term length** (1yr / 2yr / 3yr) | Commitment length | Trade discount for longer commit |
| **Ramp** | ACV grows over contract term | Customer not ready for full ACV day-1 |
| **Add-ons / line items** | Composition of the deal | Customer wants more value at same price |

## Workflow

1. **Diagnose the actual constraint** — ask if not clear:
   - "Is this a cash flow issue or a total cost issue?"
   - "Is the cap per-quarter / per-year / total?"
   - "Is procurement / finance involved?"

2. **Map constraint → cheapest lever**
   - Cash flow → payment terms (FREE — no cost to portco)
   - Budget cycle → billing terms (FREE)
   - Approval cap per period → quarterly billing
   - Hard total budget → ramp deal OR term length OR add-on bundling
   - Discount ONLY if competitive pressure or strategic value justifies it

3. **Propose 2–3 structured options**, ranked by:
   - Cheapest to the portco (less margin given up)
   - Easiest for the customer to accept
   - Cleanest from a finance/legal standpoint

4. **Coach the rep on positioning** — how to present the change to the customer without making it sound like a desperate concession

## Output format

```markdown
**Contract Structuring — [Account Name]**

**Customer's stated ask:** [verbatim from rep]
**Actual constraint (diagnosed):** [cash flow / budget cycle / total cost / etc.]

**Option 1 (recommended):** [Lever pulled]
- What changes: [specifics]
- Cost to portco: [none / small / significant]
- Customer pitch: "[exact words rep can use]"

**Option 2:** [alternative]
**Option 3 (last resort):** [discount or fallback]

**Avoid:** [common mistakes for this scenario]
```

## Connectors used

- Salesforce — current opp + line items
- Slack — output to rep
- Optional: Gong/Fireflies — pull the customer's actual words about the constraint

## Gotchas

- Don't go straight to discount. 80% of "discount requests" are actually billing/payment problems.
- Don't propose monthly billing without checking finance ops — some portcos can't operationally support it.
- Always give the rep the exact words to use with the customer. Vague "explain the value" advice doesn't help.
