# A4 — Resell / vendita auto

Data: 2026-09-19  
Target utente: **prezzo vendita = Cost d’acquisto** (listino FE). Perf investita: *nice later*; per ora basta 100% Cost.

---

## Vanilla (confermato)

- Tutorial EN in `LANGUAGES\English.bin`: i dealer danno **metà** del prezzo stock originale.  
- Upgrade performance **non** aumentano il sell; soldi pezzi persi (visual: trick downgrade→credito, non per perf).  
- Community / guide: ≈ **50%** del `Cost` FE.

## Cosa abbiamo cercato

| Dove | Risultato |
|------|-----------|
| `fe_attrib` / schema Attribulator | Solo `Cost` — **nessun** Resale/Sell% |
| Extra Options ini / readme | **Nessuna** leva sell |
| `speed.exe` stringhe SellCar/SellPrice | Assenti; ~428 float `0.5` (non isolabile a caso) |
| ShowAllCars / Unlimiter | Non installati; non risolvono sell |

→ **Non implementabile con solo pack VLT** (stesso metodo di economia/A1).

---

## Path implementazione

1. **ASI hook** (preferito): intercettare calcolo sell → `return Cost` (o `Cost * 1.0f` invece di `0.5f`).  
   - Loader già presente (ExOpts / WidescreenFix in `scripts\`).  
   - Serve reverse mirato su funzione sell (stringhe UI `Sell Car` / `trade this car in for %s` come ancore).  
2. **Patch binaria** `speed.exe` — fragile su versioni / checksum.  
3. Workaround dati: **no** (raddoppiare Cost rompe l’acquisto).

## Decisione

| Voce | Scelta |
|------|--------|
| Target v1 | Sell = **100% Cost** FE |
| Perf nel sell | Fuori scope v1 |
| Pink / speciali | Stessa formula sul loro Cost |
| Stato | Discovery **chiusa** · impl **in coda ASI** |

## Playtest (quando ASI pronto)

1. Compra auto a Cost X → vendi → cash +X  
2. Auto upgradata → ancora solo +X (v1)  
3. Ultima auto in garage → soft-lock sell vietato (vanilla resta)

## Non fare

- Toccare originale  
- Patch exe a caso sui 428× `0.5`  
- Promettere sell+perf senza hook che legga pezzi installati
