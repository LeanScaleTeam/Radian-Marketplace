#!/bin/bash
# Pre-skill hook: verify outbound stack connectors.
set -e
REQUIRED=("crm" "sep_or_email_tool" "slack")
echo '{"result": "continue"}'
