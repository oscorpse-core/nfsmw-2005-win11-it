# Fail-open sessionStart tip for QoL agent discipline (Windows).
# Reads stdin (ignored) and prints additional_context JSON.
[Console]::InputEncoding = [System.Text.Encoding]::UTF8
$null = [Console]::In.ReadToEnd()
$payload = @{
  additional_context = "Read AGENTS.md first; classify via agent/SITUATIONS.md. Edit only the -qol game copy. Freeze (qol-plan/knowledge/11-COHERENCE-FREEZE.md) is CLOSED. Do not git commit/push or publish a Release unless the user explicitly asks."
} | ConvertTo-Json -Compress
[Console]::Out.Write($payload)
exit 0
