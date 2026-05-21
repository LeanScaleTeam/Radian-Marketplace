# Security Policy

## What this repository contains

Plugins, skills, and hooks for Claude Code. **No customer data. No credentials. No secrets.** Skills describe workflows and call MCP-connected tools (Salesforce, Slack, Gong, etc.) at runtime using credentials that live on the installing user's machine.

## What this repository does NOT do

- Ship credentials, tokens, or API keys
- Store customer data
- Phone home to any external service
- Execute network calls on its own — only the MCP servers the user has authorized

## Security architecture for installers

When a portfolio company installs a plugin from this marketplace:

1. **Code runs locally.** Plugin code executes inside Claude Code on the user's machine. No cloud middleware.
2. **Tool access is user-scoped.** Plugins only access tools the user has connected via MCP / OAuth on their own machine.
3. **Hooks are auditable.** Every hook is a shell script in `<plugin>/hooks/*.sh`. Read them before installing.
4. **Cache model.** Plugins are copied into `~/.claude/plugins/cache/` on install — what you install is what runs. Edits to source require an explicit `/plugin update` to take effect.
5. **No auto-update unless enabled.** Auto-update can be toggled per marketplace in `/plugin` settings.

## Reporting a vulnerability

If you find a security issue:

1. **Do NOT open a public GitHub issue.**
2. Email the maintainer privately (contact via Radian Capital).
3. Include: affected plugin/skill, reproduction steps, and severity assessment.

You should expect an acknowledgment within 5 business days.

## What we'll fix urgently

- Hooks that escape their intended scope (e.g., reading files outside the plugin folder when they shouldn't)
- Skills that leak credentials in their outputs
- Hooks that fail-open in dangerous ways (e.g., `verify-connectors` returning continue when it should block)
- Any path that writes data to a third party not explicitly authorized by the user

## What we won't treat as a vulnerability

- Skills that produce wrong recommendations (file as a bug, not a security issue)
- Workflows that depend on connectors the user hasn't installed
- Performance issues
- Compatibility with non-Claude-Code harnesses
