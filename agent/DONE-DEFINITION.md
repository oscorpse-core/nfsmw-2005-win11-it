# DONE-DEFINITION

## Bin / VLT edit (gameplay or FE)

- [ ] Backup under `qol-tools\backups\<dated>\`
- [ ] Change via apply-script-bin or pack from **live** unpack
- [ ] Copy **only** the intended bin(s) to `-qol`
- [ ] Note hashes / backup name in reply or docs
- [ ] If unlock-related: run coherence thinking (PB 06); warn about save reload

## Save edit (VNDRY)

- [ ] Backup VNDRY file
- [ ] Patch intended `UnlockDatum` fields only
- [ ] Recalc MD5 `[0x34 .. len-16)`; verify match
- [ ] Tell user to quit/reload save if game was open

## Docs / freeze

- [ ] `11` / `PLAN` / `00-INDEX` agree
- [ ] No false “pending” checkboxes
- [ ] Agent canon updated if procedure/offset changed

## Release (only if user asked)

- [ ] Playbook 10 checklist complete (correct **line**: vanilla vs qol)
- [ ] Explicit user OK for tag/assets
- [ ] `LEGGIMI.txt` (+ `QOL.md` if QoL) inside the 7z root
- [ ] Matching `RELEASE_NOTES*.md`; README dual-line still accurate
- [ ] `publish-release.ps1 -Line …` did **not** delete the other Release
- [ ] Smoke extract + `_CommonRedist` + boot
