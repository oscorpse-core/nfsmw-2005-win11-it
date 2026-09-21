# Lotto Car Lot — speciali + calibrazione barre FE

Data: **2026-09-21** · **CHIUSO** (ordine confermato in game)  
Copia: `-qol` · Freeze: [`11-COHERENCE-FREEZE.md`](11-COHERENCE-FREEZE.md)  
Backup FE: `qol-tools\backups\20260921-lot-febars\`  
Barre: [`dumps/cars-lot-fe-bars.csv`](dumps/cars-lot-fe-bars.csv)  
Griglia: [`dumps/cars-lot-perf-calibrated.csv`](dumps/cars-lot-perf-calibrated.csv)

---

## Stato

| Voce | |
|------|--|
| Speciali in FE (no pink) | OK |
| Rank Cost/Unlock su **TS+Acc+Han** wiki | OK pack + OK in game |
| Save VNDRY | **38** auto (Camaro, C6.R, SL65, GT2, M3, M3 GTR; no RX-8) |
| Proxy torque/mass | **Deprecato** |
| Vendita listino | Stesso Cost FE → A4 dà **100%** (`15`) |
| Pink-slip drive | `UnlockedAt` **≥ # rivale** (batti → guidi subito) — OK 2026-09-21 |

---

## Metodo (canonico)

1. Score = TopSpeed + Acceleration + Handling (0–10, barre negozio).  
2. Fonte: [NFS Encyclopedia – MW Cars](https://needforspeed.miraheze.org/wiki/Need_for_Speed:_Most_Wanted_(2005)/Cars).  
3. Soft: stesso multiset Cost/`UnlockedAt`, riassegnato per rank (debole→early/cheap).  
4. Proxy solo se assenti in wiki: `m3`, `m3_gtre46`, `rx8speed` (colonna `Source` nel CSV).  
5. **Override pink:** per ogni auto pink-slip, `UnlockedAt = max(rank_febars, #rivale)` così non resti bloccato dopo il marker (es. Vic/Supra: era 11 → **13**).

### Check (confermati utente)

| Auto | Score | Unlock | Cost |
|------|------:|-------:|-----:|
| Punto | 1.2 | 16 | 19000 |
| Supra | 6.1 | **13** (pink Vic) | 24500 |
| C6.R | 27.5 | 2 | 210000 |

---

## Speciali A1 (FE)

In listino rank con le altre. Su VNDRY: 6 (RX-8 Speed solo FE).  
Near-max fisse (C6.R, SL65, GT2, …): `IsCustomizable` false — non sono “base maxata”.

### Save: speciali nascoste

Flag entry unlock: `20` = nascosta, `01` = in lotto. Edit → ricalcolare **MD5** `[0x34 .. len-16)`.

---

## Audit performance (storico A1)

| Auto | Customizable | Lettura |
|------|--------------|---------|
| camaro | false | Fisso mild |
| sl65 / c6r / 911gt2 | false | Quasi max fisso |
| m3_gtr / e46 | false | Race fisso |
| m3 / rx8speed | true | Path upgrade |

Prezzi/unlock **attuali** = CSV febars, non tabelle soft A1 vecchie.
