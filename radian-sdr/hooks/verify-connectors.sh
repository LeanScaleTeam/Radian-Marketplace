#!/bin/bash
# Pre-skill hook: verify required connectors are wired before any radian-sdr skill runs.
# SDR connectors are the messiest surface — SEPs, email tools, calendars, enrichment APIs
# all differ per portco. Block early with a clear error rather than producing garbage.

set -e

# Connectors needed differ by skill. Default to the union; individual skills can override
# via their own connector-check if needed.
REQUIRED_CONNECTORS=("salesforce" "slack")        # baseline — every skill needs these
OPTIONAL_CONNECTORS=("email" "calendar" "enrichment")  # skill-dependent

MISSING=()

# TODO: replace with real connector-status checks per portco's auth pattern.
#
#   for c in "${REQUIRED_CONNECTORS[@]}"; do
#     if ! claude-mcp-status "$c" >/dev/null 2>&1; then
#       MISSING+=("$c")
#     fi
#   done
#
# Note: "email" could be Outreach / Salesloft / Apollo / Gmail / Outlook — accept any.
# "enrichment" could be Clay / Apollo / ZoomInfo / Clearbit — accept any.

if [ ${#MISSING[@]} -gt 0 ]; then
  cat <<EOF
{
  "result": "block",
  "message": "radian-sdr requires these connectors before running: ${MISSING[*]}. Run /mcp to wire them up, then retry. SDR skills will produce bad outputs (or fail silently) without the right connectors."
}
EOF
  exit 0
fi

echo '{"result": "continue"}'
