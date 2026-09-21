# Playbook 01 — Attribulator / apply-script-bin

## Prerequisites

- Tools: `C:\Users\andre\_Main\games\nfs2005\qol-tools\Attribulator\`
- Target: `-qol` only
- Backup first under `qol-tools\backups\<dated>\`

## Steps

1. Prefer **`apply-script-bin`** against the **current live** `gameplay.bin` / `FE_ATTRIB.bin` (not a weeks-old unpack).
2. If full unpack needed: unpack from **live** `-qol\GLOBAL`, edit YAML, pack, then copy **only** the bins you meant to change.
3. After gameplay script: copy **`gameplay.bin` + `gameplay.lzc` only** to `-qol\GLOBAL\`.
4. After FE script: copy **`FE_ATTRIB.bin`** only.
5. Never deploy script-out `attributes.bin` if size drifts from original.

## Verify

- Game boots; spot-check the field you changed (cash, bounty, unlock level).
- Optional: re-unpack live and grep the field.

## Rollback

Restore bins from the dated backup folder (PB 09).

## Evidence (verified 2026-09-19…2026-09-21)

- Stale YAML pack dropped cash/bounty/visual; fixed via apply-script-bin on live gameplay.
- A3 Junkman preserved across cash/bounty re-apply when only gameplay was copied.

## Links

- [`../../qol-plan/knowledge/04-DATI-E-TOOL.md`](../../qol-plan/knowledge/04-DATI-E-TOOL.md)
- [`../../qol-plan/knowledge/11-COHERENCE-FREEZE.md`](../../qol-plan/knowledge/11-COHERENCE-FREEZE.md)
- [`../ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
