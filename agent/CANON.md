# CANON — QoL / pack snapshot (EN)

**Freeze date:** 2026-09-21 · **Status:** CLOSED · **Backlog:** none  
**Product truth (IT):** [`../qol-plan/knowledge/11-COHERENCE-FREEZE.md`](../qol-plan/knowledge/11-COHERENCE-FREEZE.md)  
**Plan (IT):** [`../qol-plan/PLAN.md`](../qol-plan/PLAN.md)

## Paths

| Role | Absolute path |
|------|----------------|
| Original pack | `C:\Users\andre\_Main\games\nfs2005\nfsmw-2005-win11-it` |
| QoL copy | `C:\Users\andre\_Main\games\nfs2005\nfsmw-2005-win11-it-qol` |
| Tools / backups | `C:\Users\andre\_Main\games\nfs2005\qol-tools\` |

## Public vs QoL

| Surface | State |
|---------|--------|
| GitHub Release | **v1.0.1** — stock pack, **no** QoL |
| Local `-qol` | Full QoL freeze applied + playtested |
| This repo | Docs + agent ecosystem |

## Touch map (QoL live)

| File under `-qol` | Change |
|-------------------|--------|
| `GLOBAL\gameplay.bin` (+ `.lzc`) | CashValue ×1.4, bounty soft, visual unlock L8, Junkman A3 7×2 |
| `GLOBAL\FE_ATTRIB.bin` | Soft Cost ×0.7, visual Cost $0, FE-bars lot, pink `UnlockedAt` ≥ rival # |
| `GLOBAL\attributes.bin` | **Unchanged** (= original) |
| `speed.exe` | A4 sell = 100% Cost (2× NOP) |
| `scripts\NFSMWExtraOptionsSettings.ini` | Marker 6, garage 25, UnlockAllThings 0 |
| `scripts\NFSMostWanted.WidescreenFix.ini` | DualSense: ImproveGamepad 0, DZ 28, StickLook 0 |

## Sacred vanilla (do not soften)

- Race difficulty, cops, heat, win / milestones / map
- Performance **unlock bands** (UpgradeLevel progression)
- Marker unique HUD ×3 (`reward_hud` on #13/#9/#2) — stay gated
- Marker `CashReward` amounts (vanilla)

## Pack rule

Do not repack from stale YAML. Prefer `apply-script-bin` on current live bins. Copy **only** `gameplay.bin` / `gameplay.lzc` after gameplay edits.
