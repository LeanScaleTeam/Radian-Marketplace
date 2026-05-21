---
name: multi-threading-tracker
description: Track how many stakeholders each opp has engaged, flag single-threaded deals, and recommend additional people to bring in. Use weekly during pipeline review, before forecast call, or when a rep claims a single-threaded deal is committed.
---

# multi-threading-tracker

## When to use

- Weekly pipeline review (auto-run)
- Forecast call prep (single-threaded commit-stage deals are forecast risk)
- After a deal goes silent (often the one contact disengaged)
- During account expansion planning

## Core principle

**Enterprise buying groups average 6-10 people** (Gartner). Single-threaded deals close at ~half the rate of multi-threaded. The skill quantifies thread count and recommends specific people to bring in.

## What "thread count" means

A thread = a stakeholder the rep has engaged at least once in the last 30 days via:
- Direct meeting / call
- Email reply (not just sent)
- LinkedIn message reply

Cc'd people without engagement don't count.

## Workflow

1. Pull all open opps with close date in next 90 days
2. For each opp, count engaged threads in last 30 days
3. Classify:
   - **Single-threaded (1):** 🔴 forecast risk
   - **Lightly threaded (2-3):** 🟡 acceptable for early-stage, risky for commit
   - **Multi-threaded (4+):** 🟢

4. For under-threaded opps, recommend specific additional stakeholders:
   - Use known buying group composition for similar deals at similar accounts
   - Pull org chart from LinkedIn for the account
   - Suggest titles to add (e.g., "no IT involved yet — risk for security review")

5. Flag stalled deals where thread count dropped
6. Weekly report to RevOps + sales managers

## Output format

```markdown
*Multi-Thread Status — week of [date]*

*Open pipeline by thread count:*
| Threading | Opps | $ value | % |
|---|---|---|---|
| Single | 18 | $1.2M 🔴 | 22% |
| Light (2-3) | 31 | $2.1M | 38% |
| Multi (4+) | 25 | $2.2M | 40% |

*Single-threaded deals in commit-stage:* $X — these are forecast risk

*Per-opp action list (top 10):*
| Account | Stage | Owner | Threads | Recommend add | Why |
|---|---|---|---|---|---|
| Acme | Negotiation | J. Smith | 1 | CFO | No financial sign-off identified |
| Beta | Proposal | M. Lee | 2 | Head of IT | Security review missing |

*Thread-loss watch:*
- [Account] dropped from 4 → 2 threads in last 21 days — investigate
```

## Connectors

- CRM (required — activity + opp data)
- Gmail / Outlook (engagement signals)
- LinkedIn Sales Nav (stakeholder mapping)
- Gong / Fireflies (call attendee tracking)
- Slack (delivery)

## Gotchas

- "Cc'd" doesn't count as engaged — actual two-way is the bar
- Don't recommend threads naively — too many = annoying. ONE specific add is more actionable than a list of 5.
- Track thread velocity (added over time) not just count — fast-adding deals are healthier than static ones
- Some segments (SMB) don't need 4+ threads — calibrate by segment
