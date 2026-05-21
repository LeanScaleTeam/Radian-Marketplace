# Radian Marketplace

**End-to-end GTM Claude Code plugins for Radian Capital portfolio companies.**

Install once. Get updates centrally. Replace the busywork the rev org used to do manually with structured, AI-augmented workflows that run on top of the tools every portco already pays for (Salesforce / HubSpot, Gong / Fireflies, Slack, the SEP, etc.).

12 plugins. 81 skills. Sourced from a first-principles catalog of GTM problems with industry-validated data behind each.

---

## Architecture

```
                            ┌───────────────────────────────────────┐
                            │   radian-business-fundamentals        │
                            │   Positioning · ICP · Narrative ·     │
                            │   Pricing · Org · Growth Model        │
                            │   (CEO-level advisory layer)          │
                            └─────────────────┬─────────────────────┘
                                              │
                                              ▼
   ┌────────────────────────────────────────────────────────────────────────────────┐
   │                              T H E   F U N N E L                                │
   ├────────────────────────────────────────────────────────────────────────────────┤
   │                                                                                │
   │  LEAD GEN                                                                      │
   │  ┌──────────────────────────┐    ┌──────────────────────────┐                  │
   │  │   radian-marketing-ops   │    │  radian-signals-ci-geo   │                  │
   │  │  Scoring · Routing ·     │    │  Intent signals ·        │                  │
   │  │  Attribution · RT enrich │◀──▶│  Competitive intel ·     │                  │
   │  │  Triggers · Re-engage    │    │  GEO/AI search · Content │                  │
   │  │  Lead/nurture reporting  │    │                          │                  │
   │  └────────────┬─────────────┘    └────────────┬─────────────┘                  │
   │               │                                │                                │
   │               ▼                                ▼                                │
   │  ┌──────────────────────────┐    ┌──────────────────────────┐                  │
   │  │     radian-outbound      │    │       radian-sdr         │                  │
   │  │  Lists · Personalization │    │  Inbound enrichment ·    │                  │
   │  │  Cadences · Deliver. ·   │    │  Outreach · Triage ·     │                  │
   │  │  Reply intent            │    │  Meeting followup        │                  │
   │  └────────────┬─────────────┘    └────────────┬─────────────┘                  │
   │               │                                │                                │
   │               └────────────────┬───────────────┘                                │
   │                                ▼                                                │
   │  CONVERSION                                                                    │
   │  ┌──────────────────────────────────────────┐    ┌──────────────────────────┐  │
   │  │        radian-sales-execution            │    │    radian-deal-desk      │  │
   │  │  SDR→AE handoff · Pre-call prep ·       │    │  Approval checks ·       │  │
   │  │  On-request enrichment · Discovery +     │◀──▶│  Contract structuring ·  │  │
   │  │  Objection coaching · Multi-thread ·     │    │  Rep coaching ·          │  │
   │  │  Post-call + long-term followup ·        │    │  Strategy validation     │  │
   │  │  AE→CS handoff                           │    │                          │  │
   │  └────────────────────┬─────────────────────┘    └──────────────────────────┘  │
   │                       │                                                         │
   │                       ▼                                                         │
   │  FULFILLMENT + RETENTION                                                       │
   │  ┌──────────────────────────────────────────┐                                  │
   │  │       radian-customer-success            │                                  │
   │  │  Kickoff · TTV · Activation · Status ·   │                                  │
   │  │  Feature adoption · Scope · Churn risk · │                                  │
   │  │  Health score · CS reporting             │                                  │
   │  └────────────────────┬─────────────────────┘                                  │
   │                       │                                                         │
   │                       ▼                                                         │
   │  EXPANSION                                                                     │
   │  ┌──────────────────────────────────────────┐                                  │
   │  │           radian-expansion               │                                  │
   │  │  Renewal management · Upsell/cross-sell ·│                                  │
   │  │  Reference program · Case studies ·      │                                  │
   │  │  Referrals · Champion job change ·       │                                  │
   │  │  Expansion reporting                     │                                  │
   │  └──────────────────────────────────────────┘                                  │
   │                                                                                 │
   └────────────────────────────────────────────────────────────────────────────────┘
                                              │
                       ┌──────────────────────┼──────────────────────┐
                       ▼                      ▼                      ▼
            ┌──────────────────┐  ┌──────────────────┐  ┌──────────────────────┐
            │ radian-crm-      │  │  radian-revops-  │  │   radian-sales-ops   │
            │ hygiene          │  │  cro             │  │  Forecasting ·       │
            │ Activity ·       │  │  Daily Gong ·    │  │  Territory · Quota · │
            │ Stage accuracy · │  │  Forecast stage· │  │  Comp · Reporting ·  │
            │ Dedupe ·         │  │  Churn signals · │  │  S→P + S→M feedback ·│
            │ Enrichment ·     │  │  Pipeline health │  │  W/L · ABS · Qual ·  │
            │ Account hierarchy│  │                  │  │  Coaching · Library  │
            └──────────────────┘  └──────────────────┘  └──────────────────────┘
                     │                     │                       │
                     └─────────────────────┴───────────────────────┘
                                        │
                                        ▼
                                CRM data backbone
                              (everything runs on this)
```

---

## How to install (for portfolio companies)

```bash
# 1. One-time: register the marketplace
/plugin marketplace add LeanScaleTeam/Radian-Marketplace

# 2. Install whichever plugins are relevant to your team
/plugin install radian-marketing-ops@radian-marketplace
/plugin install radian-deal-desk@radian-marketplace
/plugin install radian-customer-success@radian-marketplace
# ...etc
```

On first run, each plugin tells you which connectors it needs (Salesforce, Slack, Gong, etc.) and walks you through wiring them up.

To pull updates when Chiraag publishes new versions:

```bash
/plugin update <plugin>@radian-marketplace
# or enable auto-update in /plugin settings
```

---

## Plugin catalog

The funnel goes top-to-bottom. The supporting plugins on the side (`crm-hygiene`, `revops-cro`, `sales-ops`) run cross-cutting.

### 1) 🧭 `radian-business-fundamentals` — strategic, advisory layer above the funnel

Sold to founders / CEOs. Higher-touch, higher-priced, lower volume. These are prerequisites — if positioning or ICP is broken, the funnel plugins won't compound on top of weak foundations.

**Skills (7):** positioning audit · ICP/market selection (strategic) · product strategy audit · narrative builder · pricing/packaging audit · GTM org design · growth model builder

**Why this matters (data):**
- Weak positioning is the #1 root cause of slow B2B growth (April Dunford / Forrester)
- Companies that concentrate GTM on a single segment grow ~2x faster years 1-3 (a16z / Bowery)
- 1% pricing improvement = ~11% profit lift (ProfitWell)
- 30%+ of B2B sales orgs have structural inefficiencies depressing productivity 10-25% (Bridge Group)

**Metrics it moves:** Win rate · Deal size · NRR · CAC payback · Quota attainment variance

---

### 2) 📥 `radian-marketing-ops` — cross-channel lead gen + nurture ops

The plumbing between lead capture and the SDR motion. Without this, scoring/routing/triggers/nurture all run on garbage.

**Skills (8):** lead scoring · lead routing SLA · attribution/channel ROI · inbound lead enrichment (real-time) · behavioral trigger detection · cold lead re-engagement · lead gen reporting · lead nurture reporting

**Why this matters (data):**
- Leads contacted within 5 min are 9x more likely to convert vs 30+ min (Inside Sales / Velocify)
- Median B2B first-touch time sits at ~42 hours — far past the conversion window
- Companies with lead scoring see 192% higher conversion to opportunity (Aberdeen)
- 76% of marketers struggle to attribute revenue accurately to specific channels (Salesforce)
- 25-30% of B2B lead databases go inactive within 12 months (HubSpot)

**Metrics it moves:** Lead-to-opp conversion · Speed-to-lead · Marketing ROI clarity · CAC · Database engagement rate

---

### 3) 📤 `radian-outbound` — outbound sales motion

Separate from `radian-sdr` (which handles inbound). Outbound has its own list-building, personalization, multi-channel, deliverability, and reply-handling pain.

**Skills (5):** target account list building · outbound personalization · multi-channel cadence · email deliverability · reply handling + intent detection

**Why this matters (data):**
- Reps spend ~21% of time on research and list-building (Salesforce State of Sales)
- Generic outbound: ~1% reply rates; personalized: 2-5x lift (Outreach / SalesLoft)
- Multi-channel cadences book 3-5x more meetings than email-only
- 17% of legitimate B2B emails land in spam silently (Validity / Litmus)

**Metrics it moves:** Outbound reply rate · Meetings booked per rep · Rep selling time · Inbox placement rate

**Critical:** v1 is **draft-only** — hook blocks any tool that would actually send. Reps review and send from their own inbox.

---

### 4) 📧 `radian-sdr` — inbound SDR workflows

The inbound equivalent of `radian-outbound`. Lead lands → enriched → triaged → personalized first-touch drafted → meeting followup.

**Skills (4):** lead enrichment · personalized outreach email · inbound lead triage · meeting scheduler followup

**Why this matters (data):**
- 71% of B2B leads are wasted because they aren't contacted fast enough (HBR)
- Personalization beyond tokens lifts reply rates 2-5x
- 80% of B2B sales need 5+ followups, yet 44% of reps give up after one (Marketing Donut)

**Metrics it moves:** Lead-to-opp conversion · Speed-to-first-touch · Meeting book rate · Cadence-exit accuracy

---

### 5) 🤝 `radian-sales-execution` — mid-funnel conversion

The execution layer between SDR-qualified meeting and closed-won. Closes the gaps where deals stall, slip, or die.

**Skills (9):** SDR→AE handoff · pre-call prep · on-request enrichment · discovery quality coach · objection handling coach · multi-threading tracker · post-call followup · long-term followup · AE→CS handoff

**Why this matters (data):**
- Top reps ask 11-14 questions per disco call; bottom reps 4-6 (Gong) — depth of pain identified is the #1 predictor of close
- Enterprise buying groups average 6-10 people (Gartner); single-threaded deals close at ~half the rate
- 80% of B2B sales require 5+ followups
- 60% of qualified deals end in "no decision" — momentum loss between touches is the primary driver
- 60-80% of closed-lost deals eventually buy — rarely from the rep who let them cool

**Metrics it moves:** Win rate · Cycle time · Average deal size · Win-back rate · Stage conversion

---

### 6) 💰 `radian-deal-desk` — approval, structuring, rep coaching at the close

Mid-funnel commercial layer. Built for the deal-desk-running RevOps lead.

**Skills (4):** deal approval check · contract structurer (payment/billing/discount levers) · rep contract coach · deal strategy validator

**Plus** `deal-desk-reviewer` subagent for gray-area judgment ("today I approve, tomorrow I don't" cases).

**Why this matters (data):**
- Up to 20% of B2B deals slip or die in contracting/procurement (McKinsey)
- Most "price" objections are value-framing or payment-terms problems, not real cost problems
- Approval criteria drift quarter-to-quarter — static rulebooks don't work

**Metrics it moves:** Quote-to-close cycle time · Discount discipline · Approval bar consistency · Rep contract literacy

**Hook:** PostToolUse audit log writes every approval decision + reasoning to durable trail (compliance + training data).

---

### 7) 🧹 `radian-crm-hygiene` — the operational backbone

The plumbing every other plugin depends on. Garbage CRM = garbage everywhere downstream (reports, forecasts, AI output, segmentation).

**Skills (5):** activity capture · stage accuracy · deduplication · enrichment backlog · account hierarchy mapping

**Why this matters (data):**
- Reps spend 65-70% of their time on non-selling activity, much of it CRM admin (Salesforce)
- ~70% of CRM data decays or goes stale within a year of entry (HubSpot / Gartner)
- 10-30% of B2B CRM records are duplicates
- Industry forecast accuracy in B2B SaaS averages ~50% — largely a CRM data quality problem
- Clay publicly identifies account-entity mapping as an unsolved B2B GTM problem

**Metrics it moves:** Forecast accuracy · Rep selling time · Pipeline coverage reliability · Account-level reporting accuracy

---

### 8) 🌱 `radian-customer-success` — onboarding through ongoing through risk

Renewal-protective layer. Covers the 4 phases: kickoff → activation → ongoing delivery → support → health monitoring.

**Skills (9):** kickoff quality · time-to-value tracker · activation monitor · status visibility · feature adoption (SaaS) · scope management (services) · churn risk detection · health score calibration · product/fulfillment reporting

**Why this matters (data):**
- 23% of B2B churn is attributed to poor onboarding (HubSpot); 35-50% traces to first-90-days experience overall (Gainsight)
- Companies with TTV under 24h have 60%+ higher activation (Userpilot / Mixpanel)
- Activated users are 5-10x more likely to retain (Amplitude)
- 87% of customers cite proactive communication as a top retention factor (Zendesk)
- The average SaaS product has ~80% of features used by <10% of users (Pendo)
- 60-70% of churn is predictable 90+ days in advance from behavioral signals (Gainsight)
- 52% of services projects experience scope creep >25% (Standish Group)

**Metrics it moves:** Gross retention · NRR · Time-to-value · Activation rate · CSAT/NPS · Save rate

---

### 9) 📊 `radian-revops-cro` — CRO/RevOps daily view

Built for Chiraag specifically — "how I run RevOps" packaged so portfolio CROs get the same daily view.

**Skills (4):** daily CRO Gong summary · forecast stage validator · churn signal scan · pipeline health report

**Plus** `revops-analyst` subagent for open-ended business questions.

**Metrics it moves:** Pipeline coverage clarity · Forecast accuracy · Time to course-correct · ARR at risk visibility

---

### 10) 📈 `radian-expansion` — NRR engine

Grow existing accounts + leverage them as a growth channel. Includes the highest-ROI motion in modern B2B sales: **champion job change play**.

**Skills (8):** renewal management · upsell opportunity detection · cross-sell opportunity detection · reference program activation · case study production · referral program · champion job change play · expansion reporting

**Why this matters (data):**
- 30-50% of renewals are influenced by competitive alternatives — structured renewal motions lift retention 10-20 points
- Usage-driven expansion outperforms time-based campaigns by 3-5x (Gainsight / Vitally)
- Existing customers cost 5-25x less to sell to than new (Bain)
- 92% of B2B buyers trust peer recommendations more than vendor claims (TechTarget / Gartner)
- Referred customers have 16% higher LTV and 18% lower churn (Wharton) — 83% are willing to refer but only 29% do (the gap is **asking**)
- 80%+ of B2B buyers want a case study in their industry before serious engagement (CMI)

**Metrics it moves:** NRR · GRR · Cross-sell attach rate · Referral-sourced pipeline · Reference utilization · Win rate on competitive deals

---

### 11) 🛰️ `radian-signals-ci-geo` — AI-native plays

Things that didn't exist 18 months ago. Operationalized intent signals + competitive intelligence + AI search optimization (GEO) + content systems.

**Skills (6):** signal-based GTM engine · competitive intelligence scan · GEO/AI search monitor · content strategy + topic selection · content distribution · content-to-pipeline conversion

**Why this matters (data):**
- Companies that operationalize intent signals see 2-3x higher conversion on flagged accounts (6sense / Bombora)
- Clay publicly admits signal aggregation is still "too noisy, not actionable" — the unsolved problem is **prioritization and play-routing**
- Companies with formal CI win 41% more competitive deals (Crayon)
- Gartner projects 25%+ of search traffic shifts from traditional to AI engines by 2026
- 90%+ of pages on the internet get zero organic search traffic (Ahrefs)
- Best-in-class teams spend 50%+ of content time on distribution, not production (Animalz / Ross Simmonds)

**Metrics it moves:** Signal-to-action conversion rate · Win rate in competitive deals · AI search citation rate · Content-sourced pipeline

---

### 12) 🧮 `radian-sales-ops` — the meta-layer

Forecasting, design, comp, reporting, feedback systems, win/loss, ABS, qualification, coaching, library. The systems that surround the sales motion.

**Skills (12):** forecasting · sales territory design · quota target setting · sales compensation design · sales reporting · sales→product feedback · sales→marketing feedback · win/loss analysis · account-based selling · sales qualification adherence · sales coaching at scale · call review coaching

**Why this matters (data):**
- 78% of orgs miss quarterly forecast by >10% (Gartner)
- Only ~50-60% of B2B reps hit quota — sign of poorly calibrated targets
- Well-designed territories lift quota attainment by 10-20% (Alexander Group)
- Comp plan misalignment is the #1 cited reason for sales performance issues (WorldatWork)
- Sales coaching is the #1 driver of rep quota attainment (CSO Insights) — but managers can't review 50+ calls/week
- Win/loss programs lift win rates 15-30% in year one (Klue / Crayon)
- ABS-run accounts close at 2-3x the rate of standard outbound (ITSMA / TOPO)
- Sales-marketing misalignment costs ~10% of annual revenue (HubSpot / Marketo)

**Metrics it moves:** Forecast accuracy · % reps hitting quota · Win rate · Rep ramp time · Cycle time · Quota attainment variance

---

## How the plugins compose

The plugins are designed to **layer**. A typical implementation order at a new portco:

1. **Foundation first** — `radian-crm-hygiene` (everything else needs clean data)
2. **Diagnostic** — `radian-business-fundamentals` if positioning / ICP looks broken
3. **Top of funnel** — `radian-marketing-ops` + `radian-signals-ci-geo`
4. **Lead motions** — `radian-sdr` and/or `radian-outbound` depending on motion
5. **Conversion** — `radian-sales-execution` + `radian-deal-desk`
6. **Retention** — `radian-customer-success`
7. **Growth** — `radian-expansion`
8. **Cross-cutting** — `radian-revops-cro` + `radian-sales-ops` for the leadership view

You don't have to install all 12 — most portcos start with 2-4 and grow into more.

## Tags

Every skill is tagged either **revenue driver** (provable short-payback revenue impact — sells well outcome-based) or **operational** (improves operations/efficiency/quality — sells as productized fixed-fee).

The matrix in each plugin README shows the tag for every skill.

---

## Architectural notes

### Plugin / skill / hook / subagent

Each plugin is a folder containing:

- `.claude-plugin/plugin.json` — manifest + hook registration
- `skills/<skill-name>/SKILL.md` — the workflow (read live at runtime)
- `agents/<subagent>.md` — judgment-heavy delegated reasoning
- `hooks/*.sh` — deterministic guardrails (`verify-connectors`, `draft-not-send`, `approval-audit-log`)
- `README.md` — plugin-level docs

### Why hooks matter

The marketplace ships three kinds of hooks across plugins:

1. **`verify-connectors`** — every plugin checks required connectors before any skill runs. Prevents the worst failure mode: skills running on missing data and silently lying.
2. **`draft-not-send`** (in `radian-outbound` + `radian-sdr`) — hard-blocks tool calls that would actually send emails or create calendar invites in v1. The skill instruction "draft only" can be ignored by the model under pressure; the hook can't.
3. **`approval-audit-log`** (in `radian-deal-desk`) — PostToolUse writes every approval decision + reasoning to durable JSONL audit trail. Compliance + future training data.

### Hook state in v0.1

The `verify-connectors.sh` hook ships in every plugin but is intentionally a **no-op** in v0.1 — it returns `continue` regardless of state. The real connector-status check logic lives behind a `TODO:` marker because the check is portco-specific: which MCP/auth pattern Salesforce, Slack, Gong, etc. expose differs per stack.

When you install your first plugin at a real portco, fill in the connector check for THEIR stack — that's the highest-leverage hook upgrade, because it prevents the worst failure mode (skills running on missing data and silently hallucinating reports).

The `draft-not-send.sh` and `approval-audit-log.sh` hooks ARE fully functional and active immediately.

### Cache model

Plugins run from a **cache**, not the source folder. Edits to source don't propagate live — always `/plugin update` after changes. (This is the opposite of skills, which read live every session.)

---

## Local dev workflow

```bash
# Clone the repo locally
git clone https://github.com/LeanScaleTeam/Radian-Marketplace.git
cd Radian-Marketplace

# Register the local folder as a marketplace
/plugin marketplace add "$(pwd)"

# Install a plugin to test
/plugin install radian-deal-desk@radian-marketplace

# Edit files in source...
# Then refresh the cache (plugins read from cache, not live source)
/plugin update radian-deal-desk@radian-marketplace
```

When ready to share with a portco:

```bash
# Push to GitHub
git push origin main

# Portco installs from GitHub
/plugin marketplace add LeanScaleTeam/Radian-Marketplace
/plugin install <plugin>@radian-marketplace
```

