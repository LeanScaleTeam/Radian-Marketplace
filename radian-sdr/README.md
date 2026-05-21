# radian-sdr

Top-of-funnel inbound SDR workflows. Built from Chiraag's "what does an inbound lead agent look like?" ask.

## What it does

| Skill | Purpose |
|---|---|
| `lead-enrichment` | Enrich a new inbound lead with firmographic + contact data |
| `personalized-outreach-email` | Draft a personalized first-touch email from the enriched lead |
| `inbound-lead-triage` | Score + route inbound leads (priority, owner, next action) |
| `meeting-scheduler-followup` | Follow-up sequence after a meeting is booked or missed |

Plus `sdr-coach` subagent for rep coaching on outreach quality and response handling.

## Caveat

Top-of-funnel hits the most connector immaturity (SEPs, email tools, calendars). v0.1 outputs are **"draft + human sends"** rather than fully autonomous. Full headless SDR is a v2 goal once the underlying tool MCPs mature.

## Connectors required

- **Salesforce** or HubSpot — for lead records
- **Slack** — for routing + coaching
- Email tool (Outreach / Salesloft / Apollo / native Gmail) — for outreach send
- Calendar — for scheduling follow-ups

## Status

v0.1 scaffold. Skills are stubs.
