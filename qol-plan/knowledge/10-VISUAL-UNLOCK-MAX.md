# Visual unlock max (**APPLICATO** + playtest OK)

Data: 2026-09-19 · **re-apply live 2026-09-21** (perso col pack A3; ripristinato)  
Intent: pezzi + estetiche sbloccate senza progressione fasce; performance livellata; costi visual **$0**.

## Come

In `gameplay` VLT, nodi `race_bin_XX/unlocks/upgrade_*`:

| Categoria | Max UpgradeLevel |
|-----------|------------------|
| bodykit, decals, hood, hud, numbers, paint, rims, roofscoop, spoiler, tint, **vinyls** | **8** (copre tutto `PART_UPGRADE_EXOTIC_LEVEL_01`–`08` in FE) |

> **2026-09-21 L8:** il primo unlock usava i max dei nodi vanilla (es. vinyls=**6**). In FE `carparts/vinyls` arriva a **LEVEL_08** → fasce 7–8 (integrali tribal/fiamme ecc.) restavano locked lungo la BL. Fix: `qol-visual-unlock-l8.nfsms`, backup `20260921-vinyl-l8`. Stesso alzamento su hood/rims/spoiler/… per coerenza.

Su **race_bin_15** anche `upgrade_decals1`, `upgrade_hud1`, `upgrade_numbers` a L8.  
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

Backup: `20260919-visual-unlock-max` · `20260921-reapply-visual` · `20260921-vinyl-l8`  
Script: `qol-visual-unlock-max.nfsms`, `qol-visual-unlock-add15.nfsms`, `qol-visual-unlock-l8.nfsms`

**Nota:** alcuni HUD/unique restano da **marker** (`reward_hud` su #13/#9/#2) — non sono listino shop; il QoL sblocca le fasce shop, non i pezzi unique da marker.

**Decisione 2026-09-21:** i **3** HUD unique da marker restano gated (come vanilla). Shop visual per il resto = max post-#15. Non sbloccare i 3 post-#15.

## Playtest

- [x] Dopo #15 shop visual tutto a $0  
- [x] Performance ancora gated  
- [x] Re-apply 2026-09-21: bin15 hud/decals/numbers + max livelli  
- [x] Visual **L8** applicato in live (vinyls/integrali + altre cat. fino a FE LEVEL_08)  
- [ ] Conferma in-game aerografie **integrali** (tribal/fiamme) sbloccate post-Sonny dopo L8  

## Distinzione (2026-09-21)

| Cosa | Dove | QoL |
|------|------|-----|
| Vinyls shop / aerografie integrali (tutte le auto) | FE `carparts/vinyls` LEVEL_01–08 | Unlock **L8** + $0 |
| HUD unique ×3 | Marker `reward_hud` | Restano gated |
