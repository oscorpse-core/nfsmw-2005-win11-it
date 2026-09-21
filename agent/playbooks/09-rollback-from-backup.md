# Playbook 09 — Rollback from backup

## Location

`C:\Users\andre\_Main\games\nfs2005\qol-tools\backups\`

## Useful named backups (from PLAN)

| Folder | Restores |
|--------|----------|
| `20260921-reapply-cash-bounty\` | Pre cash/bounty re-apply |
| `20260921-reapply-visual\` | Pre visual re-apply |
| `20260921-vinyl-l8\` | Pre visual L8 gameplay |
| `20260921-vinyl-save-l8\` | Pre visual save L8 VNDRY |
| `20260921-pink-unlockedat\` | Pre pink UnlockedAt FE |
| `20260921-a3-junkman-x2\` | Pre A3 gameplay / related |
| `20260921-a4-resell-v2\` | Pre-A4 `speed.exe` |
| `20260921-lot-febars\` | Pre FE-bars |

## Steps

1. Identify which file(s) broke (gameplay / FE / exe / VNDRY / ini).
2. Copy from matching backup over `-qol` or Documents path.
3. Do not mix unrelated backups blindly.
4. Re-run PB 06 if unlock-related.

## Evidence (verified 2026-09-21)

- Multiple successful restores during A3/visual/cash sessions; vinyl-save backup taken before CareerUnlockLevel patch.

## Links

- [`../../qol-plan/PLAN.md`](../../qol-plan/PLAN.md) (path / backup naming)
- [`../../qol-plan/knowledge/04-DATI-E-TOOL.md`](../../qol-plan/knowledge/04-DATI-E-TOOL.md)
- [`../../qol-plan/knowledge/11-COHERENCE-FREEZE.md`](../../qol-plan/knowledge/11-COHERENCE-FREEZE.md)
