#!/bin/bash
# Block actual sends in v1 — draft only.
set -e
INPUT=$(cat)
BLOCKED=("gmail__send" "outlook__send" "outreach__send" "salesloft__send" "apollo__send_email" "hubspot__send_email" "linkedin__send_message")
TOOL=$(echo "$INPUT" | python3 -c "import sys,json;print(json.load(sys.stdin).get('tool_name',''))" 2>/dev/null || echo "")
for p in "${BLOCKED[@]}"; do
  if [[ "$TOOL" == *"$p"* ]]; then
    echo "{\"result\":\"block\",\"message\":\"radian-outbound v1 is draft-only. Tool '$TOOL' would actually send. Deliver drafts to Slack for rep review.\"}"
    exit 0
  fi
done
echo '{"result":"continue"}'
