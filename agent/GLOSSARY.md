# GLOSSARY

| Term | Meaning |
|------|---------|
| **Blacklist / BL #** | Rival index 15→1. `CurrentBin` in save = next rival to beat. |
| **`-qol`** | Local QoL game copy; only safe edit target. |
| **VLT** | Vault attribute system; edited via Attribulator YAML / scripts. |
| **Attribulator** | Tool under `qol-tools\Attribulator\` for unpack/pack/apply-script-bin. |
| **UpgradeLevel** | Awarded on boss beat from `race_bin_XX/unlocks/upgrade_*`; written into save unlock data. |
| **TheUnlockData** | Save array of 57 `UnlockDatum` (8 bytes each): CareerUnlockLevel, etc. |
| **UNLOCKABLE_VINYLS_GROUP_BODY (40)** | Entity updated by `upgrade_vinyls`; **all** vinyl layer0 shop checks map here. |
| **PART_UPGRADE_LEVEL_UNIQUE (7)** | Unique upgrade tier in FE enums; needs CareerUnlockLevel ≥ 7 in shop. |
| **Shop listino** | Normal customize catalog gated by CareerUnlockLevel. |
| **Marker unique** | One-off `reward_*` (pink, Junkman, reward_hud/vinyl/…). Not the same as shop fasce. |
| **S1** | `SelectableMarkerCount = 6` — take all markers. |
| **FE-bars** | Lot ranking by TopSpeed+Accel+Handling wiki bars → Cost/UnlockedAt. |
| **Pink drive** | Pink-slip car `UnlockedAt` forced ≥ rival # so you can drive after marker. |
| **A3 / A4** | Junkman 7×2 stock; sell = 100% FE Cost. |
| **apply-script-bin** | Patch fields on existing bin without full stale YAML pack. |
| **Background docs** | `qol-plan/knowledge/01–09` — historical; open on demand. |

IT product narrative: [`../qol-plan/knowledge/03-ECONOMIA-E-SHOP.md`](../qol-plan/knowledge/03-ECONOMIA-E-SHOP.md), [`08-MARKERS-CLARIFIED.md`](../qol-plan/knowledge/08-MARKERS-CLARIFIED.md).
