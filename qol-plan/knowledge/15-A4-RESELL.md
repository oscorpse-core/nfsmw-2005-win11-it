# A4 — Resell / vendita auto

Data: **2026-09-21** · **OK** su `-qol` (verifica statica; v2)  
Target: **vendita = 100% Cost** FE (listino). Perf investita: fuori scope v1.

---

## Vanilla

- I dealer pagano **metà** del prezzo stock.  
- Gli upgrade performance **non** aumentano il sell.  
- Logica: `AwardCash(GetCost() / 2)` + UI dialog `GetCost() / 2`  
  (decomp `uiQRCarSelect.cpp`; stessa su PC v1.3).

---

## Perché non VLT / ExOpts

| Dove | Risultato |
|------|-----------|
| `fe_attrib` | Solo `Cost` — niente Resale% |
| Extra Options | Nessuna leva sell |
| Path QoL | Patch mirata `speed.exe` (4 byte) |

---

## Patch PC (`speed.exe` v1.3, ImageBase `0x400000`)

| Ruolo | VA | Vanilla | Patch |
|-------|-----|---------|-------|
| Award cash alla vendita | `0x7C1F65` | `D1 E8` (`shr eax,1`) | `90 90` |
| Importo nel dialog conferma | `0x7C2351` | `D1 E8` | `90 90` |

Ancore UI (stesso cluster): confirm `0xA46253BA`, stringa `0xB4A40135`, can’t-sell-only `0x9A772BD6`.

Diff totale vs vanilla: **esattamente 4 byte**. Non tocca input/pad/camera.

---

## Storia breve

1. Prima patch → rollback (sintomi pad).  
2. Causa pad = DualSense + Widescreen (`ImproveGamepadSupport`), **non** A4.  
3. Controlli OK → **v2** riapplicata.  
4. Backup pre-A4: `qol-tools\backups\20260921-a4-resell-v2\speed.exe` (MD5 vanilla `C0516B48…`).

---

## Verifica statica (2026-09-21)

| Check | Risultato |
|-------|-----------|
| Diff vs vanilla | **4 byte** |
| Siti `/2` | `D1 E8` → `90 90` (award + dialog) |
| Context | sell hash → GetCost → NOP → add cash / format UI |
| Decomp | `GetCost()/2` senza shift = **100% Cost** |

→ **A4 OK** senza bisogno di entrare in game. Smoke opzionale.

## Decisione

| Voce | Scelta |
|------|--------|
| Target v1 | Sell = **100% Cost** |
| Perf nel sell | No |
| Pink / speciali | Stesso Cost FE |
| Stato | **OK** (static) |

## Non fare

- Toccare la copia originale  
- Patch random sui ~428 float `0.5`  
- Promettere rimborso pezzi senza hook pezzi  
- Rollback Widescreen se i controlli stanno bene
