# Playbook 02 — VNDRY save unlock + MD5

## Prerequisites

- Profile: `%USERPROFILE%\Documents\NFS Most Wanted\VNDRY\VNDRY`
- Backup copy before edit
- Game closed or user must reload after write

## Locate unlock table

1. Find ASCII `MW-` CaseFileName in the save (e.g. `MW-5774-VNDRY`).
2. Unlock blob starts at: **CaseFileName_offset + 16 + 0x12C4**.
3. Layout: 57 × `UnlockDatum` (8 bytes):  
   `[0]=CareerUnlockLevel, [1]=CareerIsNewPart, [2]=CareerTimesSeen, [3]=pad, [4]=QuickRaceUnlockLevel, …`
4. Important entity indices (see FE enum): vinyl **BODY = 40**; HUD = 17; hoods = 14; etc.

## MD5

- Hash bytes **`[0x34 .. length-16)`** (end exclusive of last 16).
- Write 16-byte digest at **file end**.
- Verify recomputed hash equals trailing 16 bytes.

## Verify

- MD5 match true.
- Spot-check CareerUnlockLevel for patched entities.
- In-game: quit to menu / reload profile.

## Rollback

Restore VNDRY from backup (e.g. `qol-tools\backups\20260921-vinyl-save-l8\`).

## Evidence (verified 2026-09-21)

- CaseFileName at `0x429D` → unlock at `0x5571` on profile VNDRY.
- MD5 `[0x34..len-16)` matched stored digest.
- VBODY was **3** after beating #15–#13 pre-L8; patched to **8** → integrali unlocked in playtest.

## Links

- [`03-visual-unlock-bin-and-save.md`](03-visual-unlock-bin-and-save.md)
- [`06-post-change-coherence.md`](06-post-change-coherence.md)
- [`../../qol-plan/knowledge/10-VISUAL-UNLOCK-MAX.md`](../../qol-plan/knowledge/10-VISUAL-UNLOCK-MAX.md)
