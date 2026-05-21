# Contributing

Adding a new skill to an existing plugin, or building a new plugin entirely? Here's the pattern.

## Adding a skill to an existing plugin

1. Create a new directory under `<plugin>/skills/<your-skill-name>/`
2. Drop a `SKILL.md` inside (use the template below)
3. Test locally:
   ```bash
   /plugin update <plugin>@radian-marketplace
   ```
4. Commit + PR

## Creating a new plugin

1. Create a top-level directory `radian-<your-plugin>/`
2. Add `radian-<your-plugin>/.claude-plugin/plugin.json` (see existing plugins for the schema)
3. Add `radian-<your-plugin>/README.md` listing skills + connectors + status
4. Add at least one skill under `skills/` (template below)
5. Register in `.claude-plugin/marketplace.json` (root)
6. If the plugin needs hooks, add `hooks/*.sh` (executable: `chmod +x`)
7. PR

## Skill template

Drop this into `<plugin>/skills/<skill-name>/SKILL.md` and fill out each section. The frontmatter `description` matters most — it's how Claude decides when to invoke the skill, so be specific about triggers.

```markdown
---
name: skill-name
description: One sentence describing what this skill does + the situations / phrases that should trigger it. Be specific — Claude uses this to decide when to invoke.
---

# skill-name

## When to use

- Specific trigger 1 (e.g., new lead lands, scheduled cron fires, user says X)
- Specific trigger 2
- Specific trigger 3
- Anti-trigger if relevant (e.g., NOT for X — use Y skill instead)

## Core principle

One paragraph explaining the SO WHAT. Cite data where possible (`Salesforce: reps spend 65% of time on non-selling activity`). The principle should explain *why this skill exists* — what failure mode it prevents, what behavior it forces.

## Workflow

Numbered list of what the skill actually does, end-to-end:

1. Trigger / input
2. Pull from these sources
3. Process / classify / score
4. Decide
5. Output / deliver to these surfaces
6. Track these signals to improve over time

## Output format

```markdown
[Concrete example of what the skill produces — Slack message, CRM update,
email draft, report. Show the structure so the rep / CSM / leader
can see exactly what they'll get.]
```

## Connectors

- [System 1] — required for X
- [System 2] — recommended for Y
- [System 3] — optional, enables Z

## Gotchas

- Specific pitfalls or anti-patterns
- Calibration knobs (per portco, per segment, per cycle)
- Things to track over time so the skill stays sharp
- Scope distinction from related skills (link to them)
```

## Style notes

- Skills sell themselves through their `description` frontmatter. If Claude can't tell when to invoke, the skill is invisible.
- One CTA per output — don't dump 6 actions; pick the highest-leverage one
- Always include the "why" / "core principle" — gives Claude the latitude to handle edge cases
- Cite the data — keeps everyone honest on whether the skill is solving a real problem
- 80–200 lines per SKILL.md is the working band. Anything shorter and the skill is incomplete; anything longer and Claude tunes out.

## Hook patterns

Three hook types ship across this marketplace:

- **`verify-connectors.sh`** (PreToolUse) — block skills when required MCP/auth isn't wired. Defensive — prevents the worst failure mode (skills hallucinating on missing data).
- **`draft-not-send.sh`** (PreToolUse, broad matcher) — hard-block any tool that would actually send/publish/charge externally. Used in `radian-outbound` and `radian-sdr` for the v1 "draft-only" promise.
- **`*-audit-log.sh`** (PostToolUse) — write a durable JSONL audit trail of consequential actions. Used in `radian-deal-desk` for approval decisions.

All hooks live in `<plugin>/hooks/*.sh`, are made executable with `chmod +x`, and are registered in the plugin's `plugin.json` `"hooks"` block.

## Local testing

```bash
# Register the local folder as a marketplace
/plugin marketplace add "$(pwd)"

# Install your plugin
/plugin install <plugin>@radian-marketplace

# Edit, then refresh the cache (plugins don't read live)
/plugin update <plugin>@radian-marketplace
```

## Filing issues

Bug reports: include the plugin, skill, and the actual vs. expected output.
Feature requests: describe the problem first, propose the skill second.
