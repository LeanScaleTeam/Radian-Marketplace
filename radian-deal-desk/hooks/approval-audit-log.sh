#!/bin/bash
# Post-tool hook: log every approval decision + reasoning produced by
# deal-approval-check or deal-desk-reviewer to a durable audit trail.
#
# Rationale: compliance + future training data. Approval decisions without
# an audit trail will bite a portco eventually. Also gives Chiraag a
# historical record of "what did we approve under what context" to
# inform future gray-area judgments.
#
# Hook input (stdin): JSON with tool_name, tool_input, tool_response.
# Hook output (stdout): JSON with result=continue. Audit failures should
# NEVER block the user's flow — log to stderr and move on.

set -e

INPUT=$(cat)

TOOL_NAME=$(echo "$INPUT" | python3 -c "import sys, json; print(json.load(sys.stdin).get('tool_name', ''))" 2>/dev/null || echo "")

# Only log for the skills/agents that produce approval decisions
case "$TOOL_NAME" in
  *deal-approval-check*|*deal-desk-reviewer*)
    ;;
  *)
    echo '{"result": "continue"}'
    exit 0
    ;;
esac

# Audit destinations (in priority order; use whichever connector is wired)
AUDIT_DIR="${HOME}/.claude/radian-deal-desk-audit"
mkdir -p "$AUDIT_DIR" 2>/dev/null || true

TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
AUDIT_FILE="$AUDIT_DIR/$(date -u +%Y-%m-%d).jsonl"

# Append the full tool input + response as one JSON line per decision
echo "$INPUT" | python3 -c "
import sys, json
from datetime import datetime
try:
    data = json.load(sys.stdin)
    record = {
        'timestamp': '$TIMESTAMP',
        'tool': data.get('tool_name', ''),
        'input': data.get('tool_input', {}),
        'response': data.get('tool_response', {}),
    }
    print(json.dumps(record))
except Exception as e:
    print(json.dumps({'timestamp': '$TIMESTAMP', 'error': str(e)}), file=sys.stderr)
    sys.exit(0)
" >> "$AUDIT_FILE" 2>/dev/null || true

# TODO: in addition to local JSONL, push to:
#   1. Salesforce note on the related opp (when SF connector wired)
#   2. Slack channel #deal-desk-audit (when Slack connector wired)
# Failure of either remote push must NOT block — local JSONL is the durable record.

echo '{"result": "continue"}'
