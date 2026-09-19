# Punto 9 — Come tecnico (modello B)

> **SOSPESO.** Canonico in produzione = **S1** (`SelectableMarkerCount = 6`).  
> Questo doc resta come bozza tecnica alternativa. Vedi `11-COHERENCE-FREEZE.md`.

Obiettivo originale B: dopo boss, senza RNG, permanenti; cops non regali.

## Vincoli dai dati

Sul BossRace (`IsMarkerRace: true`):

- `RewardsForWinner` = **pool marker** (scegli N con Extra Options `SelectableMarkerCount`)
- `race_bin_XX/unlocks` = **già automatici** al beat (fasce shop `upgrade_*` livello) — non sono Junkman
- Junkman / pink slip / unique marker stanno nella pool come `reward_pink_slip`, `reward_brakes` (Sonny), `reward_vinyl`, `reward_cash_bonus`, `reward_out_of_jail_free`, …

Extra Options già nel pack: `SelectableMarkerCount` (1–6).  
Non c’è leva “skip UI marker / auto-apply senza schermata” documentata in ExOpts.

## Strategia a fasi (sicurezza → purezza UX)

### Fase T0 — Smoke (nessun VLT)

| Edit | File | Valore |
|------|------|--------|
| Garage | `scripts\NFSMWExtraOptionsSettings.ini` | `PurchasedCarLimit = 25` |

Test: gioco parte, carriera ok.

### Fase T1 — Payout B “affidabile” (UI marker ancora presente ma senza scelta dolorosa)

1. Per ogni `race_bin_01`…`15` BossRace: **riscrivere** `RewardsForWinner` includendo **solo**:
   - `reward_pink_slip*`
   - `reward_cash_bonus*` (un solo bonus; `CashReward` calibrato)
   - reward Junkman di quel boss (`reward_brakes` / `reward_chassis` / `upgrade_*` junkman-side — quello già in pool vanilla)
   - unique visual/part (`reward_vinyl`, `reward_rims`, `reward_hood`, …) già in pool
2. **Escludere** dalla pool: `reward_out_of_jail_free`, `reward_add_impound_box`, `reward_release_car_from_impound`
3. Impostare `SelectableMarkerCount` = **numero pezzi in pool** (tipicamente 4–5, max 6)  
   → dopo il boss **prendi tutti** i marker B (niente miss pink/Junkman/unique).  
   UI c’è ancora, ma non c’è RNG né trade-off.

**Nota Junkman vs testo B “shop a pagamento soft”:**  
In T1 il Junkman arriva come **pezzo stock** (come se avessi preso il marker) — è il path naturale nei dati.  
“Sblocco Back Room illimitato a prezzo soft” = **Fase T3** (più ricerca su `junkman` / fe).  
T1 rispetta l’intento “batti → ottieni, niente miss forever”; T3 raffina il *come* economico.

### Fase T2 — Prova “niente UI marker”

Su **un solo** boss di test (es. Sonny):

- `IsMarkerRace = false`
- lasciare in `RewardsForWinner` solo i reward B

Smoke: se il gioco **assegna tutti** i reward senza schermata → estendere a tutti i bin.  
Se no (crash / zero reward / solo cash) → restare su T1.

### Fase T3 — Economia + visual + Junkman shop (dopo T1 stabile)

| Item | Metodo |
|------|--------|
| Cash gare / rival ↑ | `CashValue` su eventi / BossRace |
| Bonus post-boss | unico `CashReward` in pool (o assorbito in `CashValue` rival se T2 ok) |
| Prezzi auto soft + sensati | `fe_attrib` `Cost` / eventuale retouch |
| Performance soft | `carparts` Cost arrays; **UnlockedAt** fasce **non** anticipare |
| Visual listino subito + gratis | visual `Cost=0`, `UnlockedAt=0` (o early) |
| Unique in shop gratis | Cost 0 + unlock post-boss (già da reward/unlock) |
| Junkman shop soft illimitato | ricerca T3; finché no, vale pezzo da T1 |
| Bounty soft | solo dopo isolamento campo |
| Livrea rivale shop | legata a pink slip / vinyl unique — verificare in playtest |

### Fase T4 — Bounty soft

Solo a campo noto (oggi: interi in `gameplay.bin`, YAML non mappato). Non indovinare.

---

## Cosa **non** fare

- `UnlockAllThings` / `ShowAllCarsInFE`
- Dare jail/impound in automatico (rompe B / tensione cops)
- Abbassare unlock fasce Ultimate early
- Toccare originale; solo `-qol` + backup

---

## Ordine operativo concreto

1. Backup `GLOBAL\` + `scripts\NFSMWExtraOptionsSettings.ini` → `qol-tools\backups\YYYYMMDD\`
2. **T0** PurchasedCarLimit=25 → test utente
3. Script/edit YAML: slim `RewardsForWinner` tutti i bin + SelectableMarkerCount  
4. `Attribulator pack -b` su GLOBAL  
5. Playtest: battere Sonny (o save test) → pink + junkman + unique + cash; no jail  
6. Decisione T2 (no UI) sì/no  
7. T3 economia/visual  
8. T4 bounty  

---

## Rischi aperti (onesti)

| Rischio | Mitigazione |
|---------|-------------|
| Pack VLT corrompe boot | Backup + pack un file alla volta / smoke |
| T2 IsMarkerRace=false non auto-grant | Restare T1 |
| Unique “in shop” vs “pezzo da marker” | Playtest; T3 se serve |
| Contare SelectableMarkerCount ≠ size pool | Calcolare per bin; non hardcodare 6 se pool=4 |

---

## Decisione tecnica proposta (da confermare implicitamente andando avanti)

**Partiamo da T0 + T1** (affidabile, allineato a B al 95%).  
T2 solo dopo playtest T1.  
T3 economia in parallelo non bloccante sul payout boss.
