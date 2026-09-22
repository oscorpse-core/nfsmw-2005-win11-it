## NFS Most Wanted 2005 — Win11 IT QoL (v1.1.0-qol)

Pack **completo e già giocabile** come la linea vanilla, **più** soft carriera (economia, visual shop, marker/Junkman, vendita 100%, garage 25, DualSense tarato, ecc.).

- Stessa base: Black Edition + Widescreen + Extra Options + italiano + **`_CommonRedist`**.
- **Non** alleggerisce gare, cops, heat né condizioni di vittoria.
- **Obbligatorio:** dopo l’estrazione, installa `_CommonRedist\` **prima** di `speed.exe`.
- Repo **privato**: serve login GitHub con accesso.

| Documento | Link |
|-----------|------|
| **Cosa cambia rispetto al vanilla** (catalogo completo) | [QOL.md](https://github.com/oscorpse-core/nfsmw-2005-win11-it/blob/main/QOL.md) |
| Manuale install (procedure comuni) | [README](https://github.com/oscorpse-core/nfsmw-2005-win11-it#readme) |
| Release **vanilla** (senza soft) | [v1.0.1](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases/tag/v1.0.1) · [RELEASE_NOTES.md](https://github.com/oscorpse-core/nfsmw-2005-win11-it/blob/main/RELEASE_NOTES.md) |

**Consiglio:** carriera **nuova** su questa cartella. Non mischiare save vanilla ↔ QoL.

---

### Cosa include in più (sintesi)

| Area | QoL |
|------|-----|
| Premi gare/rival | ×1.4 |
| Prezzi auto/perf | ×0.7 + listino FE-bars |
| Bounty Blacklist | soft progressiva (early ×0.85 … late ×0.65) |
| Marker per rivale | **6** |
| Junkman | 7 tipi ×2 su #15–#2 |
| Visual shop | max + **$0** dopo Sonny (#15) |
| Vendita auto | **100%** del Cost FE |
| Garage | **25** |
| DualSense | ini Widescreen tarata (deadzone 28, ImproveGamepad off) |
| Gare / cops / storia / fasce perf | = vanilla |

Dettaglio, tabella bounty, scartati: **[QOL.md](https://github.com/oscorpse-core/nfsmw-2005-win11-it/blob/main/QOL.md)**.

### Download + estrazione

| | |
|--|--|
| **Scarica** | **Entrambi** `nfsmw-2005-win11-it-qol.7z.001` **e** `.7z.002`, stessa cartella |
| **Estrai** | **Solo** il `.001` con [7-Zip](https://www.7-zip.org/) |
| **Il `.002`** | Non si estrae a parte |

Cartella tipica dopo estrazione: `nfsmw-2005-win11-it-qol` (con `LEGGIMI.txt`, `QOL.md`, `speed.exe`, `_CommonRedist\`, …).

Sposta sotto:

```text
C:\Users\TUO_NOME\Games\nfsmw-2005-win11-it-qol\
```

Poi `_CommonRedist` → `speed.exe` → **Italian** → Video **1920×1080**.

### File di gioco toccati dal QoL (integrità pack)

Oltre al pack vanilla, questa Release include modifiche a:

| Path | Ruolo QoL |
|------|-----------|
| `GLOBAL\gameplay.bin` (+ `.lzc`) | CashValue, bounty, visual unlock, Junkman A3 |
| `GLOBAL\FE_ATTRIB.bin` | Cost soft, visual $0, FE-bars, pink UnlockedAt |
| `speed.exe` | Vendita 100% Cost (A4) |
| `scripts\NFSMWExtraOptionsSettings.ini` | Marker 6, garage 25 |
| `scripts\NFSMostWanted.WidescreenFix.ini` | DualSense tarato |
| `LEGGIMI.txt` + `QOL.md` | Guide in cartella |

`GLOBAL\attributes.bin` resta allineato al vanilla (non drift da pack script).

### Avvio

1. `speed.exe` (SmartScreen: Ulteriori informazioni → Esegui comunque se serve).
2. Lingua **Italian**.
3. Video **1920×1080**.
4. Pad Xbox / DualSense senza DS4Windows.

### Housekeeping pack (2026-09-22)

- Rimosso residuo `NFSMostWanted.WidescreenFix.ini.bak-before-gamepad-0`.
- Widescreen live: **`ForcedGPUVendor = 0x10DE`** (menu Video / risoluzioni alte su NVIDIA), ombre **2048**, SMAA **0**, gamma **1**, DualSense tarato (ImproveGamepad 0, DZ 28).
- Profilo “quality+” (4096 / SMAA / gamma 2) **scartato** dopo test: poco guadagno visivo, micro-stutter, risoluzioni 2K perse con `ForcedGPUVendor = 0`.
