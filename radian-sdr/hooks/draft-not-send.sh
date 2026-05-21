#!/bin/bash
# Pre-tool hook: hard-block any tool call that would ACTUALLY SEND an email or
# create a calendar invite in v1 of radian-sdr.
#
# Rationale: v1 is "draft + human sends." This is the deterministic guardrail
# that enforces that promise — a SKILL.md instruction can be ignored by the model
# under pressure, a hook cannot.
#
# Hook input (stdin): JSON with tool_name, tool_input.
# Hook output (stdout): JSON with result=continue or result=block.

set -e

INPUT=$(cat)

# Tools to block in v1 (anything that performs an actual send).
# Extend this list as new SEP / email MCP servers come online.
BLOCKED_TOOL_PATTERNS=(
  "gmail__send"
  "outlook__send"
  "outreach__send"
  "salesloft__send"
  "apollo__send_email"
  "hubspot__send_email"
  "calendar__create_event"   # block invite-creation too; drafts only
)

TOOL_NAME=$(echo "$INPUT" | python3 -c "import sys, json; print(json.load(sys.stdin).get('tool_name', ''))" 2>/dev/null || echo "")

for pattern in "${BLOCKED_TOOL_PATTERNS[@]}"; do
  if [[ "$TOOL_NAME" == *"$pattern"* ]]; then
    cat <<EOF
{
  "result": "block",
  "message": "radian-sdr v1 is draft-only. Tool '$TOOL_NAME' would actually send/create an artifact. Draft the content, deliver to Slack for human review, and let the rep send from their own inbox. Override only by explicitly disabling this hook in your local plugin settings."
}
EOF
    exit 0
  fi
done

echo '{"result": "continue"}'
