# Playbook 06 — Post-change coherence audit

## When

User asks if save matches bin / freeze is coherent / “tutto chiuso”.

## Checklist

1. **MD5** VNDRY valid (`[0x34..len-16)`).
2. **CurrentBin** from career header (after CaseFileName walk — see PB 02). Beaten rivals = `15 .. CurrentBin+1`.
3. From live unpack of gameplay: max visual `UpgradeLevel` on **beaten** race bins.
4. Compare save CareerUnlockLevel for BODYKIT/HOODS/RIMS/VBODY/HUD/… ≥ bin max (QoL visual should be 8 after patch).
5. Perf categories should stay **low / progressive** (not all 8).
6. `gameplay.bin` hash vs known-good L8 backup if visual in scope.
7. Spot FE: e.g. Supra `UnlockedAt` 13; ExOpts UnlockAllThings=0; A4 bytes `90 90`.

## Evidence (verified 2026-09-21)

- CurrentBin=12 → beaten #15–#13; visual save all 8 after patch; perf still ~1–2; MD5 OK; gameplay == L8 install.

## Links

- [`../../qol-plan/knowledge/09-VERIFY-POST-PACK.md`](../../qol-plan/knowledge/09-VERIFY-POST-PACK.md)
- [`../../qol-plan/knowledge/11-COHERENCE-FREEZE.md`](../../qol-plan/knowledge/11-COHERENCE-FREEZE.md)
- [`02-vndry-save-md5.md`](02-vndry-save-md5.md)
- [`03-visual-unlock-bin-and-save.md`](03-visual-unlock-bin-and-save.md)
