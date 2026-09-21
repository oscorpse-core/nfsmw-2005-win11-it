# Freeze coerente (canonico)

**Punto fermo:** 2026-09-21  
**Fonte di verità.** Se altri file contraddicono → vale questo.

Copia: `...\nfsmw-2005-win11-it-qol` · Originale pack: intatto · Release pubblica: **v1.0.1** (senza QoL).

---

## Scopo

Stesso loop carriera; meno grind/RNG/economia; libertà di spesa; **non** alleggerire skill/cops/gare.

---

## CHIUSO (tutto presente in live `-qol`)

| Area | Canonico | Live |
|------|----------|------|
| Win / milestones / storia / mappa | Vanilla | — |
| Difficoltà gare / cops / heat | Vanilla | — |
| Marker | **S1** count = **6** | OK |
| Pink / Junkman / unique | Via S1 | OK |
| Visual | Unlock **L8** post-#15 · Cost **$0** (shop fino a FE LEVEL_08; vinyls/integrali) | OK |
| Performance unlock | Fasce **vanilla** | OK |
| Performance / auto **Cost** | **×0.7** + lotto FE-bars | OK (`FE_ATTRIB`) |
| Premi gare/rival `CashValue` | **×1.4** | OK |
| Bounty `RequiredBounty` | Soft ×0.85/0.75/0.65 | OK |
| Marker `CashReward` | Vanilla | — |
| Speciali Car Lot | In FE; no pink; soft; no RX-8 save | OK |
| Garage | **25** | OK |
| UnlockAllThings | **0** | OK |
| Controlli DualSense | ImproveGamepad**=0**, DZ **28**, StickLook**=0** | OK |
| **A4 Resell** | Vendita = **100% Cost** | OK |
| **A3 Junkman** | **7×2** su #15–#2 (NOS×2); Razor no | OK · Taz→chassis |
| **Pink drive** | `UnlockedAt` ≥ # rivale | OK |
| 3 HUD unique marker | Restano gated (vanilla) | OK |

### Save `VNDRY`

38 auto; whitelist FE. A3: Taz → chassis confermato.

---

## APERTO (backlog)

Nessuno. Freeze carriera **finito**.

### Smoke opzionale (non backlog)

- [ ] Aerografie integrali post-Sonny dopo Visual L8 (`10`)

---

## SCARTATO / FUORI SCOPE

| Voce | Decisione | Perché |
|------|-----------|--------|
| Pink rivali in Car Lot | **SCARTATO** | Livree via mod; pink solo marker S1 |
| Visual day-one | **SCARTATO** | Già post-#15 L8 + $0 |
| Modello B | **SCARTATO** | S1 basta |
| A2 unlock mid anticipato | **SCARTATO** | Fasce perf vanilla |
| UnlockAllThings = 1 | **SCARTATO** | Resta 0 |
| Rank lotto TORQUE/MASS | **SCARTATO** | Barre FE |
| Junkman shop infinito | **SCARTATO** | A3 = 7×2 marker |
| Pack auto community | **FUORI SCOPE** | Progetto a parte |
| QoL in Release pubblica | **Non ora** | Solo copia `-qol` + docs |

---

## Flusso soldi

| | |
|--|--|
| Entrate | Gare + rival (**×1.4**) + marker cash (S1) |
| Uscite | Auto + perf soft (+ multe). Visual **$0** |
| Vendita | **100% Cost** FE (A4) |

---

## Checklist implementazione

- [x] Marker ×6 · visual unlock · Cost FE soft · lotto FE-bars  
- [x] Controlli DualSense  
- [x] A4 static + playtest sell  
- [x] A3 pack + Taz→chassis  
- [x] CashValue ×1.4 · bounty soft  
- [x] Spot bounty #14  
- [x] Visual re-apply 2026-09-21 (hud/decals/numbers su #15)  
- [x] Visual **L8** (`qol-visual-unlock-l8.nfsms`)  
- [x] Pink-slip `UnlockedAt` ≥ BL rivale  
- [x] 3 HUD unique restano gated  

---

## Riferimenti

`04` · `10` · `12` · `13` · `14` · `15` · `16` · [`../PLAN.md`](../PLAN.md)
