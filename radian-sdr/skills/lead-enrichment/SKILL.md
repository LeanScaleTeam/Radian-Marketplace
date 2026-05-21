---
name: lead-enrichment
description: Enrich an inbound lead with firmographic data, contact info, recent news, and account context. Use when a new lead lands, before outreach, or when the user says "enrich this lead", "tell me about this company", or "research this contact".
---

# lead-enrichment

## When to use

- New inbound lead lands (form-fill, chat, demo request)
- Before drafting outreach (always — never email a cold lead unenriched)
- Pre-meeting prep for an SDR or AE
- Manual research request from a rep
- Bulk re-enrichment of a stale account list

## Core principle

**Enrichment is fuel for the next step, not an end in itself.** Don't dump every field you can find — pull the 6–10 facts that change how this lead should be approached. The rest is noise.

## What to pull

### Company
- Industry / sub-industry
- Headcount (band, not exact — exact is usually wrong)
- Estimated revenue / funding stage
- Tech stack (especially relevant tools — CRM, data warehouse, etc.)
- Recent news / press in last 90 days (funding, exec hires, product launches, layoffs)
- Hiring signals (open roles in target persona's function)

### Contact
- Verified role / title
- LinkedIn URL
- Tenure at company
- Prior role / company (often predictive of buying behavior)
- Public content (posts, articles) — useful for personalization

### Account history
- Existing record in CRM (prior opp, prior customer, prior touch)
- Other contacts from the same account already engaged
- Account-level intent signals (G2 traffic, 6sense, Bombora, web visits)

## Workflow

1. **Check for existing CRM record first**
   - Salesforce / HubSpot lookup by email domain, then by company name
   - If existing: surface prior history (opp closed-lost? Existing customer? Prior contact?)

2. **Pull external enrichment** (parallel calls)
   - Enrichment API: Clay / Apollo / ZoomInfo / Clearbit (whichever is wired)
   - LinkedIn (via enrichment provider; don't scrape directly)
   - News API for recent company news

3. **Synthesize, don't dump**
   - 6–10 facts max
   - Lead with what changes the outreach approach (e.g., "just hired a new VP of Eng — buying signal" beats "headquartered in Austin")

4. **Deliver to SDR via Slack**
   - Short structured card
   - Link to full CRM record for drill-in
   - Tag the next-step skill the SDR should run (`personalized-outreach-email` or `inbound-lead-triage`)

## Output format

```markdown
*Lead Enrichment — [Contact Name] @ [Company]*

*Quick read:* [1-sentence "who is this and what's the angle"]

*Contact:*
- Role: [title]
- Tenure: [X months at Company]
- Prior: [last role / company]
- LinkedIn: [url]

*Company:*
- Industry: [industry]
- Size: [headcount band]
- Stage: [funding stage / public]
- Stack (relevant): [tools]

*Recent signals (last 90d):*
- [e.g., raised Series B 30 days ago]
- [hiring 3 SDRs — outbound motion ramping]
- [new VP of Sales joined from Company X]

*CRM history:* [prior opp / prior touch / never engaged]

*Recommended next step:* [draft outreach / triage as P0 / route to AE / etc.]
```

## Connectors used

- Salesforce or HubSpot — CRM lookup (required)
- Enrichment API — Clay / Apollo / ZoomInfo / Clearbit (at least one required)
- Slack — delivery to SDR
- Optional: web search / news API for fresh signals

## Gotchas

- Don't pull enrichment if the lead is already a customer — escalate to AE/CSM instead
- Don't dump every field — the rep won't read it
- Verify role / title against LinkedIn when enrichment provider data is stale (common for fast-growing companies)
- Tenure < 6 months is a buying signal; tenure > 5 years is often a non-buyer
