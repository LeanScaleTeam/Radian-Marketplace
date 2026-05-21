---
name: reply-handling-intent-detection
description: Parse and classify outbound replies (positive / negative / OOO / future) and route appropriately — instead of reps manually triaging 30+ min/day. Use on every inbound reply to an outbound cadence.
---

# reply-handling-intent-detection

## When to use

- Real-time on every reply to an outbound cadence
- Audit: "are positive replies being acted on fast enough?"
- Re-classification of a cohort of past replies (cleaning CRM)

## Core principle

**Reps spend ~30 min/day triaging replies.** Positive replies sitting in inbox = lost conversion. "Not interested" replies not removed from cadence = burned prospects + complaint risk. Auto-classification + routing is high-leverage.

## Classification taxonomy

| Class | Examples | Action |
|---|---|---|
| **Positive** | "Yes, interested", "let's chat", "tell me more" | Alert rep within 5 min, pause cadence, draft response |
| **Conditional positive** | "Not now but maybe Q4" | Pause cadence, schedule re-engagement for stated date, log in CRM |
| **Referral** | "Talk to Jane instead" | Route to new contact, pause original, draft intro email |
| **Polite no** | "Not a fit right now" | Remove from cadence, log reason, no further outreach |
| **Hard no / unsubscribe** | "Take me off your list" | Remove + suppress globally |
| **Hostile** | Complaint language | Remove + suppress + flag for sender domain health review |
| **OOO** | Auto-reply | Re-trigger cadence at OOO end date, don't fire next touch in interim |
| **Bounce** | Mailer-daemon | Mark email invalid, remove from cadence, log for list hygiene |
| **Unclear / question** | "What does your company do?" | Alert rep — needs human response |

## Workflow

1. Receive reply (webhook from SEP / email tool)
2. Classify using LLM + heuristics (signature stripping, OOO detection, sentiment)
3. Update CRM (status, reason, next-action-date)
4. Update SEP (pause, remove, or continue cadence)
5. Notify rep based on class:
   - Positive / Conditional / Referral → Slack alert + draft response
   - Polite no → silent log (rep doesn't need notification)
   - Hostile / Bounce → escalate to ops
6. Weekly report: classification mix, response-time on positive

## Output format

For each reply:

```markdown
🔔 *Reply Classified — [Contact] @ [Company]*
*Class:* Positive / Conditional / Referral / etc.
*Confidence:* High / Medium
*Snippet:* "...interested in learning more..."
*Action taken:* Cadence paused, draft response in thread
*Rep action needed:* Review + send within 30 min
```

Weekly report:

```markdown
*Reply Handling — week of [date]*

*Total replies:* 142
*Classification mix:*
- Positive: 18 (13%)
- Conditional: 22 (15%)
- Referral: 8 (6%)
- Polite no: 47 (33%)
- Hard no / unsubscribe: 19 (13%)
- OOO: 24 (17%)
- Bounce: 4 (3%)

*Time-to-rep-response on positive replies:*
- Median: 12 min ✅ (target <30 min)
- Max: 4h 22m (rep: J. Smith) — coach

*Quality flags:*
- 3 conditional positives never followed up at stated date — re-engagement queue cleanup needed
```

## Connectors

- SEP / email tool (Outreach / Salesloft / Apollo / Smartlead)
- CRM
- Slack
- LLM for classification

## Gotchas

- OOO detection matters — firing next touch into auto-replies looks dumb and dings reputation
- Don't over-trust classification on ambiguous replies — fall back to "needs human" rather than risk a misroute
- Unsubscribe handling is legal (CAN-SPAM / GDPR) — must be honored fully, including suppression across all domains
- Bounce handling protects deliverability — must be wired
