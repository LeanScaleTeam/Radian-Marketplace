# radian-outbound

Outbound sales motion. Separate from `radian-sdr` (which handles inbound).

## Skills

| Skill | Tag |
|---|---|
| `target-account-list-building` | revenue driver |
| `outbound-personalization` | revenue driver |
| `multi-channel-cadence` | revenue driver |
| `email-deliverability` | revenue driver |
| `reply-handling-intent-detection` | revenue driver |

## Connectors required

- CRM (Salesforce / HubSpot)
- SEP or email tool (Outreach / Salesloft / Apollo / Smartlead / Lemlist / Gmail / Outlook)
- LinkedIn (for multi-channel)
- Slack (delivery)
- Optional: enrichment provider, deliverability tool (Glock Apps / MailReach)

## Critical: draft-only in v1

`draft-not-send.sh` blocks actual sends. Reps review and send from their own inbox. This protects deliverability + matches portco operational maturity.
