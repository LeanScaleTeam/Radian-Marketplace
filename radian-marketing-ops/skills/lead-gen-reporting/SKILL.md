---
name: lead-gen-reporting
description: Standing weekly/monthly lead gen report — volume, quality, source mix, conversion to MQL/SQL, cost per stage. Use when scheduled, when prepping for marketing leadership review, or when the user says "lead gen report", "MQL report", or "marketing KPI dump".
---

# lead-gen-reporting

## When to use

- Weekly marketing standup (auto-run Mon AM)
- Monthly leadership review
- Quarterly board / VC prep
- Ad-hoc "how's lead gen going" question

## Core principle

**67% of B2B marketing teams cite unified reporting as a top pain.** Most rebuild the same report manually each cycle, eating 15-25% of marketing ops capacity. This skill exists to make the report automatic + consistent.

## Standard sections

1. **Volume**
   - Leads by source (paid / organic / content / events / referral / outbound-MQL)
   - WoW + MoM delta
   - Pacing against quarterly target

2. **Quality**
   - Lead → MQL conversion %
   - MQL → SQL conversion %
   - SQL → opportunity conversion %
   - Avg lead score by source

3. **Speed**
   - Median time-to-MQL
   - Median time-to-first-touch (SLA compliance)

4. **Cost**
   - CAC by source
   - Cost per MQL by source
   - Cost per opportunity by source

5. **Source mix**
   - Diversification check (no single source >60% if possible)
   - Source trend lines

6. **Anomalies**
   - Sources that dropped >20% WoW
   - Sources with rising cost / falling conversion
   - SLA breach trends

## Workflow

1. Pull from CRM + MA + ad platforms (parallel)
2. Compute the standard metrics
3. Generate trend lines (90d window)
4. Run anomaly detection (>20% MoM change)
5. Synthesize narrative TL;DR — what's actually different this week
6. Deliver to Slack (channel configurable)

## Output format

```markdown
*Lead Gen Report — week of [date]*

*TL;DR:* [2-sentence verdict]

*Volume*
| Source | Leads | WoW | MoM | vs target |
|---|---|---|---|---|
| Paid LI | 240 | +12% | -5% | 92% |
| Content | 180 | +20% 🟢 | +18% | 110% |
| ...

*Quality*
| Source | Lead→MQL | MQL→SQL | Avg score |
|---|---|---|---|
| Paid LI | 18% | 22% | 64 |
| ...

*Cost*
| Source | Spend | CPL | CPM | CPO |
|---|---|---|---|---|

*Anomalies:*
🔴 Paid Meta CAC up 35% MoM — investigate creative fatigue
🟡 Content MQL rate up — recent guide driving qualified traffic

*Action items for week:*
- ...
```

## Connectors

- CRM (required)
- Marketing automation (required)
- Ad platforms (LinkedIn / Meta / Google)
- Slack (delivery)

## Gotchas

- Definitions matter — MQL/SQL must be defined per portco and locked
- Don't change historical methodology mid-quarter — break the trend line
- Always include narrative — raw tables don't drive decisions
