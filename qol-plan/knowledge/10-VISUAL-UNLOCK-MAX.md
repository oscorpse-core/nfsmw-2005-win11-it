# Visual unlock max (**APPLICATO** + playtest OK)

Data: 2026-09-19  
Intent: pezzi + estetiche sbloccate senza progressione fasce; performance livellata; costi visual **$0**.

## Come

In `gameplay` VLT, nodi `race_bin_XX/unlocks/upgrade_*`:

| Categoria | Max UpgradeLevel |
|-----------|------------------|
| bodykit | 4 |
| decals | 3 |
| hood | 6 |
| hud | 4 |
| numbers | 1 |
| paint | 4 |
| rims | 6 |
| roofscoop | 6 |
| spoiler | 5 |
| tint | 4 |
| vinyls | 6 |

Su **race_bin_15** anche `upgrade_decals1` (L3), `upgrade_hud1` (L4), `upgrade_numbers` (L1).  
Performance unlock **non** modificata.  
`FE_ATTRIB`: Cost visual = 0.

## Trigger

Dopo **Sonny (#15)** → listino visual completo + gratis.  
Non UnlockAllThings. Non day-one pre-Sonny.

## File / backup

| File | Stato |
|------|--------|
| `gameplay.bin` / `.lzc` | modificati |
| `attributes.bin` | = originale |
| `FE_ATTRIB.bin` | visual Cost=0 |

Backup: `qol-tools\backups\20260919-visual-unlock-max\`  
Script: `qol-visual-unlock-max.nfsms`, `qol-visual-unlock-add15.nfsms`

## Playtest

- [x] Dopo #15 shop visual tutto a $0  
- [x] Performance ancora gated  
