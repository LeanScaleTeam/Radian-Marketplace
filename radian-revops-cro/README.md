# radian-revops-cro

CRO / Head of RevOps view. "How Chiraag runs RevOps" packaged as a plugin.

## What it does

| Skill | Purpose |
|---|---|
| `daily-cro-gong-summary` | End-of-day Gong call summary → Slack to the CRO |
| `forecast-stage-validator` | Validate that opps are in the right forecast stage |
| `churn-signal-scan` | Surface accounts showing churn signals |
| `pipeline-health-report` | Pipeline coverage, velocity, and stage conversion |

Plus `revops-analyst` subagent for business insight questions — gray-area judgment, not deterministic playbooks.

## Connectors required

- **Salesforce** — pipeline + forecast data
- **Slack** — daily delivery + CRO async
- **Gong** or **Fireflies** — call signal extraction

## Status

v0.1 — skill workflows fully specified. Connector wiring (the `verify-connectors.sh` hook) is intentionally a no-op until a real portco's MCP setup defines what to check.
