# Discovery tecnica v1 (sola lettura)

> Storico discovery. Implementazione finita: `11-COHERENCE-FREEZE.md`.

Data: 2026-09-19  
Copia gioco: `C:\Users\andre\_Main\games\nfs2005\nfsmw-2005-win11-it-qol`  
Tool locali: `C:\Users\andre\_Main\games\nfs2005\qol-tools\`

## Tooling

| Tool | Stato | Note |
|------|--------|------|
| **Attribulator 2.0** | OK (con rollForward .NET) | Unpack VLT → YAML; pack con backup. Profile `MOST_WANTED`, format `yml` |
| Unpack fatto | OK | `qol-tools\vlt-unpack\` (~866 file) da `GLOBAL\` |
| **Binary 2.9** | Scaricato, **non avviabile** qui | Serve .NET 6 Desktop **x64**. Utile per GlobalB/GCareer se VLT non basta |
| **Extra Options ini** | OK | Edit diretto, zero ripack |

Workflow sicuro previsto: edit YAML in `vlt-unpack` → `Attribulator pack -b` → smoke test su `-qol`.  
**Non** toccare l’originale.

---

## Mappa freeze → metodo

| Freeze | Dove | Campo / leva | Affidabilità | Rischio |
|--------|------|--------------|--------------|---------|
| Garage fino a 25 | `scripts\NFSMWExtraOptionsSettings.ini` | `PurchasedCarLimit = 25` | **Alta** | Basso |
| Premi gare ↑ | `gameplay` VLT (`race_bin_*`) | `CashValue` (es. Sonny gare 1500, rival 5000) | **Alta** | Basso se moltiplicatore uniforme |
| Cash rival ↑ | stesso | `CashValue` su `BossRace: true` | **Alta** | Basso |
| Marker cash ↑ / pink→soldi | `gameplay` rewards | `CashReward` (Sonny bonus = **10000**); slot `reward_pink_slip` → convertire in `reward_cash_bonus` con `CashReward` **>** bonus già presente | **Alta** (struttura chiara) | Medio (test marker UI) |
| 2 scelte marker | Extra Options | `SelectableMarkerCount = 2` (già così) | **Alta** | Nessuno |
| Prezzi auto soft + sensati | `fe_attrib\frontend\frontend.yml` | nodi auto (`ParentName` = manufacturer, es. `chevrolet/cobaltss`): `Cost`, `UnlockedAt` | **Alta** — dump reale fatto | Medio (smoothing manuale) |
| Prezzi performance soft | stesso file, `ParentName: carparts` | array `Cost` per fascia (Race…Ultimate) es. engine 5500/14200/29800/98000 | **Alta** | Basso |
| Visual listino subito + gratis | `fe_attrib` carparts visual | `UnlockedAt → 0` (o early), `Cost → 0` su hoods/rims/spoilers/body/paint/vinyl… | **Alta** | Basso–medio (non toccare pezzi performance) |
| Fasce performance unlock vanilla | `fe_attrib` + `race_bin_*/unlocks` | **Non abbassare** `UnlockedAt` performance; lasciare unlock da boss | **Alta** (coerente col piano) | — |
| Junkman beat-to-unlock in shop | `attributes\junkman.yml` + rewards `upgrade_*` / unlocks | Principio chiaro; **wiring shop “sempre comprabile dopo boss”** da verificare in implementazione (unlock node vs stock Back Room) | **Media** | Medio–alto |
| Unique visual beat-to-unlock + gratis | rewards `reward_vinyl` / `upgrade_*` + fe costs | Stesso tema Junkman: unlock post-boss, Cost 0 | **Media** | Medio |
| Auto rivale **subito in garage** | `RewardsForWinner` su BossRace (`IsMarkerRace: true`) include `reward_pink_slip` nella **pool** da cui scegli 2/6 | Dati OK; **auto-grant senza passare dalla scelta marker** non è un flag ovvio → serve design tecnico (sotto) | **Media / aperta** | Alto se indoviniamo male |
| Livrea rivale sempre in shop gratis | fe + vinyl unique | Collegato a unlock unique; da legare al beat boss | **Media** | Medio |
| Bounty soglie soft | Interi **esatti** (20k…10M) presenti **1×** in `gameplay.bin` raw; in YAML **non** ancora mappati a un campo tipo `RequiredBounty` | Valori esistono; campo YAML da isolare (o patch mirata / Binary) | **Bassa–media** | Alto finché non mappato |
| Mappa / win / milestones / cops | — | **No edit** | — | — |
| UnlockAllThings / ShowAllCarsInFE | ini | **Lasciare 0** | — | — |

### Dump auto (estratto reale da VLT)

Esempi `Cost` / `UnlockedAt` (UnlockedAt = soglia Blacklist carriera):

| Auto | Cost | UnlockedAt |
|------|------|------------|
| cobaltss | 26000 | 16 |
| is300 / punto | 27000 | 16 |
| gti | 35000 | 16 |
| a3_20t | 32000 | 14 |
| tt | 35000 | 14 |
| … | … | … |
| murcielago | 265000 | 3 |
| fordgt | 270000 | 3 |
| carrera_gt | 280000 | 2 |
| slr | 300000 | 2 |

→ Base perfetta per soft + smoothing “sensato”.

### Marker boss (Sonny / race_bin_15)

`RewardsForWinner` (pool marker, `IsMarkerRace: true`) include tra gli altri:

- `reward_pink_slip1`
- `reward_cash_bonus1` → **`CashReward: 10000`**
- jail free, impound, unique brakes/rims/vinyl, …

Piano: pink slip **fuori** dalla pool come RNG; auto in garage; quello slot → cash con `CashReward` > 10000.

---

## Punto delicato: auto in garage al beat

**Cosa sappiamo:** la pink slip è un reward nella lista `RewardsForWinner` del BossRace; il gioco fa scegliere 2 marker su quella lista.

**Cosa non è ancora dimostrato:** un campo “dai pink slip in automatico senza UI marker”.

### Strategie candidate (da provare in ordine, con backup)

1. **Prova dati:** vedere se esiste reward automatico separato dalla pool marker, o se ridurre la pool + altro meccanismo unlock garage.  
2. **Workaround fedele al feel:** post-boss, auto unica `Cost=0` + `UnlockedAt` coerente + (se possibile) preset livrea — *quasi* “la ottieni”, ma passa dal lotto gratis.  
3. **Ultima ratio:** ASI / hook (Extra Options non ha questa leva) — solo se 1–2 falliscono.

Non implementare finché non scegliamo strategia dopo un micro-test.

---

## Bounty soft — stato

- Guide: soglie 20k → 10M.  
- `gameplay.bin`: quegli interi compaiono (spesso 1 hit).  
- YAML unpack: **niente** campo ovvio `RequiredBounty`; c’è `Reputation` ma con altri numeri.  
→ Prima di softare: isolare offset/campo (eventualmente con Binary + .NET 6, o analisi blob).  
**Non** patchare a caso i 15 interi senza contesto.

---

## Dipendenze mancanti per chiudere discovery al 100%

1. .NET 6 Desktop (per Binary GUI) — opzionale se Attribulator basta  
2. Micro-test pack→boot gioco dopo un edit innocuo (es. solo `PurchasedCarLimit`)  
3. Decisione strategia auto-in-garage (1/2/3 sopra)  
4. Isolare campo bounty

---

## Ordine implementazione consigliato (dopo OK utente)

1. Backup `GLOBAL\` + ini sulla `-qol`  
2. `PurchasedCarLimit = 25` (smoke)  
3. Economia: `CashValue` / `CashReward` / `Cost` auto+performance  
4. Visual listino: Cost 0 + UnlockedAt early  
5. Marker pink → cash maggiore  
6. Junkman / unique beat-to-unlock  
7. Auto garage (strategia scelta)  
8. Bounty soft (solo a campo noto)  
9. Playtest carriera nuova
