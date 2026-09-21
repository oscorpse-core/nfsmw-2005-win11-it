#!/usr/bin/env bash
# Fail-open: always exit 0. Injects a short AGENTS tip for QoL work.
cat >/dev/null || true
printf '%s\n' '{
  "additional_context": "Read AGENTS.md first; classify via agent/SITUATIONS.md. Edit only the -qol game copy. Freeze (qol-plan/knowledge/11-COHERENCE-FREEZE.md) is CLOSED. Do not git commit/push or publish a Release unless the user explicitly asks."
}'
exit 0
