#!/bin/bash
# Pre-skill hook: verify that required connectors are wired before any deal-desk skill runs.
# Stub implementation — replace with real checks once connector auth patterns are decided per portco.

set -e

REQUIRED_CONNECTORS=("salesforce" "slack" "gong")
MISSING=()

# TODO: replace with real connector-status checks
# For each connector, check whether Claude Code has an active MCP / OAuth / API key wired.
# Example structure:
#
#   for c in "${REQUIRED_CONNECTORS[@]}"; do
#     if ! claude-mcp-status "$c" >/dev/null 2>&1; then
#       MISSING+=("$c")
#     fi
#   done

if [ ${#MISSING[@]} -gt 0 ]; then
  cat <<EOF
{
  "result": "block",
  "message": "radian-deal-desk requires these connectors before running: ${MISSING[*]}. Run /mcp to wire them up, then retry."
}
EOF
  exit 0
fi

echo '{"result": "continue"}'
