# radian-deal-desk

Mid-funnel deal desk automation. Built from Chiraag's daily deal desk workflow at Radian.

## What it does

| Skill | Purpose |
|---|---|
| `deal-approval-check` | Assess if a proposed deal meets current approval criteria |
| `contract-structurer` | Pull payment terms, billing terms, and discount levers to get deals done |
| `rep-contract-coach` | Teach reps the difference between cost vs. payment terms |
| `deal-strategy-validator` | Validate deal strategy against historical wins |

Plus `deal-desk-reviewer` subagent for gray-area judgment calls — the "today I approve it, tomorrow I don't" cases.

## Connectors required

- **Salesforce** — for opp data and approval history
- **Slack** — for routing approvals and rep coaching
- **Gong** or **Fireflies** — for call context behind deals

On first skill run, the connector-verify hook will tell you what's missing and walk you through setup.

## Status

v0.1 — skill workflows fully specified. Connector wiring (the `verify-connectors.sh` hook) is intentionally a no-op until a real portco's MCP setup defines what to check. The `approval-audit-log.sh` PostToolUse hook writes a durable JSONL audit trail by default.

## Suggested rollout order at a new portco

1. `deal-approval-check` (highest-value, simplest)
2. `contract-structurer`
3. `rep-contract-coach`
4. `deal-strategy-validator`
