# Visual unlock max (**APPLICATO** in live)

Data: 2026-09-19 · re-apply + **L8** 2026-09-21  
Intent: pezzi + estetiche sbloccate senza progressione fasce; performance livellata; costi visual **$0**.  
**Punto fermo:** implementazione chiusa · playtest integrali + save coerente **OK** (2026-09-21).

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
- [x] Playtest: aerografie **integrali** (Body/tribal/fiamme) sbloccate · save allineato  



## Distinzione (2026-09-21)

| Cosa | Dove | QoL |
|------|------|-----|
| Vinyls shop / aerografie integrali (tutte le auto) | FE `carparts/vinyls` LEVEL_01–08 | Unlock **L8** + $0 |
| HUD unique ×3 | Marker `reward_hud` | Restano gated |

## Save vs bin (gap integrali — 2026-09-21)

`upgrade_vinyls` scrive in save su `UNLOCKABLE_VINYLS_GROUP_BODY` (`TheUnlockData[40]`).  
Lo shop sblocca pezzi con `part.UpgradeLevel <= CareerUnlockLevel`. Il messaggio “batti # BL” è la stringa `CUSTOMIZATION_VISUAL_VINYLS_N`, non un check live sulla BL.

Se Sonny/#14/#13 sono già battuti **prima** del patch L8, il save resta al vecchio livello (es. **VBODY=3**) anche col bin a 8 → pack **Body / fiamme / tribal** restano locked. Hood/rim possono essere già a 6 perché ri-awarded dopo il primo visual max.

**Fix save (fatto su VNDRY):** `CareerUnlockLevel`/`QuickRaceUnlockLevel` visual → **8** (incl. VBODY + gruppi flame/tribal/…); MD5 `[0x34..len-16)`.  
Backup: `qol-tools\backups\20260921-vinyl-save-l8\`.  
Alternative senza patch: battere un altro rivale con `upgrade_vinyls` dopo L8 in bin (ri-award).
