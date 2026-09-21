# Playbook 03 — Visual unlock (bin + save)

## Goal

Shop visual max after Sonny (#15): all FE levels through LEVEL_08, Cost $0. Marker uniques stay gated.

## Bin side

1. Script pattern: `qol-tools\scripts\qol-visual-unlock-l8.nfsms` (UpgradeLevel **8** on visual `upgrade_*` nodes).
2. Apply via apply-script-bin on live `gameplay` (PB 01).
3. `ConvertBigBangUpgradeAward("vinyls")` → **`UNLOCKABLE_VINYLS_GROUP_BODY` (entity 40)**.
4. Shop lock: `part.UpgradeLevel <= TheUnlockData[ent].CareerUnlockLevel` (career, not backroom special-case).
5. `gMaxPartLevels[BODY] = 6` in exe; awarding **8** still sets CareerUnlockLevel to 8.
6. UI string “beat BL #N” comes from `CUSTOMIZATION_VISUAL_VINYLS_{level}` hash — not a live BL check.

## Save side (critical)

- Awards apply **when the rival is beaten**. Raising bin after the fact does **not** rewrite old CareerUnlockLevel.
- If Body/flame/tribal still locked: patch entity **40** (and related visual entities as needed) to 8 — PB 02.
- Shop vs marker: `reward_hud` / `reward_vinyl` one-offs ≠ listino; 3 HUD uniques stay marker-gated by decision.

## FE Cost

Visual part costs in `FE_ATTRIB` already $0 (category level arrays). Unlock is separate from price.

## Evidence (verified 2026-09-21)

- Live gameplay hash matched L8 install backup.
- Save VBODY 3→8 + MD5; user confirmed in-game Body/tribal/flames unlocked.
- Backup: `20260921-vinyl-l8` (bin), `20260921-vinyl-save-l8` (save).

## Links

- [`../../qol-plan/knowledge/10-VISUAL-UNLOCK-MAX.md`](../../qol-plan/knowledge/10-VISUAL-UNLOCK-MAX.md)
- [`../../qol-plan/knowledge/08-MARKERS-CLARIFIED.md`](../../qol-plan/knowledge/08-MARKERS-CLARIFIED.md)
- [`02-vndry-save-md5.md`](02-vndry-save-md5.md)
