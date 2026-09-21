# QoL Most Wanted 2005 — piano

**Aggiornato:** 2026-09-21  
**Copia attiva:** `C:\Users\andre\_Main\games\nfs2005\nfsmw-2005-win11-it-qol`  
**Originale:** intatto (`...\nfsmw-2005-win11-it`)  
**Fonte di verità:** [`knowledge/11-COHERENCE-FREEZE.md`](knowledge/11-COHERENCE-FREEZE.md)

Scopo: stesso loop carriera; meno grind/RNG/economia; libertà di spesa; gare/cops intatti.

---

## Stato rapido

| Area | Stato |
|------|--------|
| Freeze carriera | **FINITO** live + playtest OK |
| Soft cash ×1.4 + bounty soft | **OK** |
| Visual unlock max post-#15 · **L8** (vinyls/integrali) | **OK** live · playtest L8 **domani** |
| A3 Junkman 7×2 · A4 sell 100% · pink drive | **OK** |
| Sospesi / backlog QoL | **Nessuno** |

---

## Chiuso (non riaprire)

| ID | Cosa | Live |
|----|------|------|
| S1 | Marker count **6** | ExOpts |
| Visual | Unlock **L8** post-#15 · Cost **$0** (shop; non i 3 HUD unique) | OK · `10` |
| Soft Cost | Auto/perf **×0.7** + lotto FE-bars | `FE_ATTRIB` |
| Soft cash | Gare/rival `CashValue` **×1.4** | `gameplay` · `12` |
| Bounty | Soft ×0.85/0.75/0.65 | `gameplay` · `13` |
| Garage | **25** | ExOpts |
| A1 | Speciali in lotto; VNDRY **38** (no RX-8) | `14` |
| Controlli | DualSense: ImproveGamepad**0**, DZ **28**, StickLook**0** | Widescreen |
| A4 | Sell = **100% Cost** | `speed.exe` · `15` · playtest OK |
| A3 | Junkman **7×2** (#15–#2, NOS×2); Razor no | `16` · Taz→chassis OK |
| Pink drive | `UnlockedAt` auto pink-slip **≥ # rivale** | FE · Vic/Supra ecc. |

---

## Scartato / fuori scope

| Voce | Decisione | Perché |
|------|-----------|--------|
| Pink rivali in Car Lot | **SCARTATO** | Livree via mod → compra auto + applica livrea; pink solo marker S1 |
| Visual day-one | **SCARTATO** | Già unlock max post-#15 + $0 |
| Modello B (no UI marker) | **SCARTATO** | S1 basta |
| A2 unlock mid anticipato | **SCARTATO** | Fasce perf vanilla |
| UnlockAllThings = 1 | **SCARTATO** | Resta **0** |
| Rank lotto TORQUE/MASS | **SCARTATO** | Sostituito da barre FE |
| Junkman shop infinito | **SCARTATO** | A3 = stock 7×2 da marker |
| Pack auto community | **FUORI SCOPE** | Progetto a parte (save/CARS) |

---

## Path

| Ruolo | Path |
|-------|------|
| Originale | `...\nfs2005\nfsmw-2005-win11-it` |
| QoL | `...\nfs2005\nfsmw-2005-win11-it-qol` |
| Tool / backup | `...\nfs2005\qol-tools\` |
| Docs | `qol-plan\` |

### Backup utili

| Backup | Cosa |
|--------|------|
| `20260921-reapply-cash-bounty\` | Pre re-apply cash/bounty |
| `20260921-reapply-visual\` | Pre re-apply visual (+ installed) |
| `20260921-vinyl-l8\` | Pre Visual **L8** (aerografie/integrali) |
| `20260921-pink-unlockedat\` | `FE_ATTRIB` pre–pink UnlockedAt |
| `20260921-a3-junkman-x2\` | Pre-pack A3 |
| `20260921-a3-nos-smoke-*\` | Pre-Taz VNDRY |
| `20260921-a4-resell-v2\` | `speed.exe` pre-A4 |
| `20260921-lot-febars\` | FE pre–FE-bars |
| economy / bounty / a1 `20260919-*` | Storico |

**Pack rule:** non ripackare da YAML stale. `vlt-unpack` riallineato al live. Preferire `apply-script-bin` su `gameplay` corrente; copiare **solo** `gameplay.bin`/`.lzc`.

---

Knowledge: [`knowledge/00-INDEX.md`](knowledge/00-INDEX.md).
