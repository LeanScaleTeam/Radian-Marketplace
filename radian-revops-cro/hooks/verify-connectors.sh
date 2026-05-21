#!/bin/bash
# Pre-skill hook: verify required connectors are wired before any radian-revops-cro skill runs.
# Prevents the worst failure mode: hallucinated reports going to the CRO when the underlying
# data sources aren't actually connected.

set -e

REQUIRED_CONNECTORS=("salesforce" "slack" "gong")
MISSING=()

# TODO: replace with real connector-status checks per portco's auth pattern.
# Reference structure once decided:
#
#   for c in "${REQUIRED_CONNECTORS[@]}"; do
#     if ! claude-mcp-status "$c" >/dev/null 2>&1; then
#       MISSING+=("$c")
#     fi
#   done
#
# Note: Gong vs Fireflies — accept either. The skill itself should be transcript-source-agnostic.

if [ ${#MISSING[@]} -gt 0 ]; then
  cat <<EOF
{
  "result": "block",
  "message": "radian-revops-cro requires these connectors before running: ${MISSING[*]}. Run /mcp to wire them up, then retry. Reports without these connectors will produce hallucinated output and should never go to the CRO."
}
EOF
  exit 0
fi

echo '{"result": "continue"}'
