#!/bin/bash
# Pre-skill hook: verify required marketing ops connectors are wired.
set -e

REQUIRED_CONNECTORS=("salesforce_or_hubspot" "marketing_automation" "slack")
MISSING=()

# TODO: replace with real connector-status checks. Common stacks:
#   - CRM: Salesforce, HubSpot
#   - MA: Marketo, HubSpot, Customer.io, Pardot
#   - Analytics: GA4, Heap, Amplitude
#   - Intent: 6sense, Bombora, G2, ZoomInfo Intent
#   - Enrichment: Clay, Clearbit, Apollo, ZoomInfo, Cognism

if [ ${#MISSING[@]} -gt 0 ]; then
  cat <<EOF
{
  "result": "block",
  "message": "radian-marketing-ops requires these connectors: ${MISSING[*]}. Run /mcp to wire them up. Without them, scoring and routing will run on incomplete data."
}
EOF
  exit 0
fi

echo '{"result": "continue"}'
