# FILE-MAP — lever → file → tool → playbook

| Lever | Game / save file | Tool | Playbook |
|-------|------------------|------|----------|
| `CashValue` race/rival | `-qol\GLOBAL\gameplay.bin` | Attribulator / apply-script | 01, 04 |
| `RequiredBounty` | `gameplay` (gpcore) | apply-script | 01, 04 |
| Visual `upgrade_*` UpgradeLevel | `gameplay` race_bin_* | apply-script (`*-l8.nfsms`) | 01, 03 |
| Junkman `reward_*` | `gameplay` | VLT edit + pack gameplay only | 01, 08 |
| Auto/perf `Cost`, visual Cost $0 | `FE_ATTRIB.bin` | Attribulator pack FE | 04 |
| Lot FE-bars / speciali / pink UA | `FE_ATTRIB.bin` | pack FE | 04 |
| Entity attributes | `attributes.bin` | **Do not change** (keep = original) | — |
| Sell % | `speed.exe` | binary NOP | 05 |
| Marker count / garage / UnlockAllThings | `scripts\NFSMWExtraOptionsSettings.ini` | text | 07 |
| DualSense FE | `scripts\NFSMostWanted.WidescreenFix.ini` | text | 07 |
| Career unlock levels | `%Documents%\NFS Most Wanted\VNDRY\VNDRY` | byte edit + MD5 | 02, 03, 06 |
| Authoritative lot CSV | `qol-plan/knowledge/dumps/cars-lot-fe-bars.csv` | read-only data | 04 |
| A4 offset finder | `qol-plan/knowledge/scripts/a4_find_sell.py` | reference | 05 |
| Public assets | `dist\*.7z.00x`, `RELEASE_NOTES.md` | `publish-release.ps1` | 10 |
| Backups | `qol-tools\backups\*` | copy restore | 09 |
