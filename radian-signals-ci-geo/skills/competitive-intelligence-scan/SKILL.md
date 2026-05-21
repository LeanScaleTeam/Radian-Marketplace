---
name: competitive-intelligence-scan
description: Track competitor messaging, positioning, pricing, and feature launches systematically — keep sales / marketing armed with current battle cards. Use weekly; on-demand when sales loses to a specific competitor.
---

# competitive-intelligence-scan

## When to use

- Weekly automated scan (continuous)
- Sales just lost a deal to competitor X
- Pre-pricing change (need competitor benchmark)
- Pre-product launch (avoid colliding with competitor announcements)
- New competitor enters the market

## Core principle

**90%+ of B2B companies cite CI as important but only ~25% have a structured program** (Crayon/Klue). Companies with formal CI win 41% more competitive deals. Most CI lives in Slack threads or rep memory — not in a structured library.

## What gets tracked per competitor

| Dimension | Source |
|---|---|
| Public messaging / positioning | Website, blog, social |
| Pricing & packaging | Public pricing pages, sales-leaked decks |
| Product launches / feature releases | Changelog, blog, social |
| Customer wins | Case studies, press releases, LinkedIn |
| Negative signals | Layoffs, exec departures, missed targets |
| Hiring trends | Job postings — predicts where they're investing |
| Funding events | Crunchbase / PitchBook |
| Win/loss vs. them | Internal CRM data |
| What our reps hear on calls | Gong / Fireflies competitor mentions |

## Workflow

1. **Define competitor watchlist** (typically 3-7 — more is unmanageable)
2. **Continuous monitoring:**
   - Weekly website crawl (diff vs. prior week)
   - Daily social monitoring (LinkedIn, Twitter)
   - News alerts
   - Internal call mention tracker (Gong)
3. **Weekly digest:**
   - What changed across competitors this week
   - Trending mentions in our calls
   - New objections heard
4. **Battle card maintenance:**
   - Per competitor: positioning frame, differentiation, common objections, response frames, won-deal examples, lost-deal examples
   - Update on any material change
5. **Post-loss interview:**
   - When we lose to competitor X, capture WHY in structured way
   - Update battle card with new learning

## Output format

Weekly digest:

```markdown
*Competitive Scan — week of [date]*

*Material changes:*

🔴 *[Competitor A]* — new pricing page, lowered enterprise tier by 20%
   - Implication: expect pricing pressure on $X+ deals
   - Battle card updated: section "Why we're worth the premium"

🟡 *[Competitor B]* — launched [feature]
   - This was a gap we'd been hearing about
   - Product team flagged for roadmap discussion
   - SE / sales: response frame in battle card

🟢 *[Competitor C]* — public layoffs reported
   - Signal: instability — fold into competitive positioning ("we're growing while they cut")

*In-call mentions this week:*
| Competitor | Mentions | Win rate when raised |
| A | 14 | 32% |
| B | 8 | 41% |
| C | 3 | 67% |

*New objections detected:*
- [Competitor A]'s new pricing came up 4 times — reps need refreshed response
```

Per battle card (request from rep):

```markdown
*Battle Card — [Competitor A] — Updated [date]*

*Positioning:* [our framing of who they are]

*Differentiation:*
- Where we win: [...]
- Where they win: [...]
- Where it's a coin flip: [...]

*Common objections + responses:*
- "[A's] cheaper" → [response frame]
- "[A] has [feature]" → [response frame]

*Won-deal examples:*
- [Customer] / [Date] / [Why they chose us]

*Lost-deal examples + lessons:*
- [Account] / [Date] / [Why they chose A] / [What we'd do differently]
```

## Connectors

- Web scraping (competitor sites)
- News API
- LinkedIn / Twitter (social monitoring)
- Crunchbase / PitchBook
- CRM (win/loss data)
- Gong / Fireflies (call mentions)
- Optional: Klue / Crayon (managed CI platforms)
- Slack (delivery)

## Gotchas

- Watchlist of 3-7 — not 20. CI quality > coverage.
- Battle cards decay — they're useless if not refreshed. Build the refresh cadence into the skill.
- Public CI > leaked CI — don't use anything obtained unethically
- Audio examples of reps handling competitive deals well > written battle cards
