# Economia — dump + numeri soft (**APPLICATO**)

Data: 2026-09-19  
Dump: `dumps\*.csv`  
Stato: **scritto su `-qol`** (backup `qol-tools\backups\20260919-economy-soft\`).  
Playtest: prezzi auto/perf OK; cash gare da verificare su eventi nuovi.

---

## Moltiplicatori

| Voce | Formula | Note |
|------|---------|------|
| Premi gare + rival (`CashValue`) | **×1.4** + arrotondamento | `race_bin_*` con CashValue > 0 |
| Marker `CashReward` | **Vanilla** | S1 li prende già tutti |
| Performance `Cost` > 0 | **×0.7** + arrotondamento | Unlock fasce vanilla |
| Auto Car Lot | **×0.7** + smoothing per `UnlockedAt` | Outlier bucket → ~1.35× mediana |
| Start / multe | Vanilla | — |
| Bounty | Vedi `13-BOUNTY-SOFT.md` (progressiva, non ×0.7 fisso) | |

Arrotondamento: &lt;10k → multipli di 100; ≥10k → multipli di 500.

---

## Auto proposte (`dumps\cars-proposed.csv`)

| Auto | UnlockedAt | Vanilla | Nuovo |
|------|------------|---------|-------|
| cobaltss | 16 | 26000 | **18000** |
| is300 | 16 | 27000 | **19000** |
| punto | 16 | 27000 | **19000** |
| gti | 16 | 35000 | **24500** |
| a3_20t | 14 | 32000 | **22500** |
| tt | 14 | 35000 | **24500** |
| eclipsegt | 13 | 30000 | **21000** |
| a4_32 | 13 | 35000 | **24500** |
| clio / supra | 12 | 40000 | **28000** |
| cts / rx8 | 11 | 32000 | **22500** |
| mustanggt | 11 | 36000 | **25000** |
| lancerevo8 | 10 | 36000 | **25000** |
| sl500 | 10 | 75000 | **34000** (smoothed) |
| gto / monaro | 9 | 35000 | **24500** |
| caymans | 9 | 60000 | **33000** (smoothed) |
| rx7 | 8 | 31000 | **21500** |
| imprezzawrx | 8 | 42000 | **29500** |
| elise | 7 | 48000 | **33500** |
| clk500 | 7 | 75000 | **45000** (smoothed) |
| 997s | 6 | 75000 | **52500** |
| db9 | 6 | 90000 | **63000** |
| viper | 5 | 98000 | **68500** |
| gallardo | 5 | 120000 | **84000** |
| corvette_car | 4 | 80000 | **56000** |
| 911turbo | 4 | 105000 | **73500** |
| murcielago | 3 | 265000 | **185500** |
| fordgt | 3 | 270000 | **189000** |
| carrera_gt | 2 | 280000 | **196000** |
| slr | 2 | 300000 | **210000** |
| m3_gtre46 | 15 | 500000 | **350000** |

Start ~30k: cobalt/punto/is300 ancora comprabili; GTI richiede qualche gara in più (voluto).

---

## Performance proposte (estratto engine)

| Level | Vanilla | Nuovo |
|-------|---------|-------|
| Race (L02) | 5500 | **3800** |
| Pro (L03) | 14200 | **9900** |
| Super Pro (L04) | 29800 | **21000** |
| Ultimate (L05) | 98000 | **68500** |

Tabella completa: `dumps\performance-proposed.csv`.

---

## Cash rival (IsMarkerRace) proposto

| Boss race | Vanilla | Nuovo |
|-----------|---------|-------|
| #15 Sonny | 5000 | **7000** |
| #14 | 6000 | **8400** |
| #13 | 6000 | **8400** |
| #12 | 8000 | **11000** |
| #11 | 10000 | **14000** |
| … | … | ×1.4 |
| #2 Bull | 75000 | **105000** |

Gare normali es. Sonny 1500 → **2100**. Lista: `dumps\cashvalue-proposed.csv`.

Marker CashReward (Sonny 10k, ecc.) = **non modificati**.

---

## Fuori da questo file

- Bounty → **fatto** in `13-BOUNTY-SOFT.md`
- Unlock timing auto / fasce performance → **vanilla** (non soft)
