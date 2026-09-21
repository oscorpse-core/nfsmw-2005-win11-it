# Dati nel pack e tool

Path e leve della copia **`-qol`**. Freeze: [`11-COHERENCE-FREEZE.md`](11-COHERENCE-FREEZE.md).

**Root QoL:** `C:\Users\andre\_Main\games\nfs2005\nfsmw-2005-win11-it-qol`  
**Tool / backup (fuori da questo repo):** `C:\Users\andre\_Main\games\nfs2005\qol-tools\`  
**Docs:** `qol-plan\` in questo repository.

---

## Dove guardare

| Path | Ruolo |
|------|--------|
| `GLOBAL\gameplay.bin` | Eventi, `CashValue`, marker, bounty |
| `GLOBAL\FE_ATTRIB.bin` | Listino auto Cost / `UnlockedAt`, visual Cost |
| `GLOBAL\attributes.bin` | Attributi entity |
| `GLOBAL\GLOBALB.BUN` | Vault grande |
| `CARS\` | Dati auto |
| `LANGUAGES\` | Testi (es. tutorial sell “half”) |
| `speed.exe` | Runtime; **A4** = 2× NOP `/2` sell (`15`) |
| `scripts\NFSMWExtraOptionsSettings.ini` | Marker, garage, … |
| `scripts\NFSMostWanted.WidescreenFix.ini` | HUD/FOV + **pad DualSense** |
| `dinput8.dll` | ASI loader (Widescreen + ExOpts) |

---

## Extra Options (QoL attuale)

```ini
StartingCash = 0
AwardedCash = 10000
UnlockAllThings = 0
ShowAllCarsInFE = 0
SelectableMarkerCount = 6
PurchasedCarLimit = 25
EnableMaxPerformanceOnShop = 1
```

Diff vs pack stock: soprattutto **marker 6** e **garage 25**.

---

## Widescreen Fix — controlli DualSense (QoL attuale)

File: `scripts\NFSMostWanted.WidescreenFix.ini`

| Chiave | Valore | Perché |
|--------|--------|--------|
| `ImproveGamepadSupport` | **0** | Con DualSense raw (DInput) =1 rompe FE/mapping |
| `LeftStickDeadzone` | **28.0** | Contro drift orbit camera |
| `RightStickDeadzone` | **28.0** | Idem |
| `StickLookSensitivity` | **0.0** | Niente look stick fantasma |

Backup ini: `NFSMostWanted.WidescreenFix.ini.bak-before-gamepad-0`.  
Per pad XInput “pulito” (DS4Windows/Steam + hide DS): si può rivalutare ImproveGamepad 1/2.

---

## Tool usati

| Tool | Uso |
|------|-----|
| **Attribulator 2.0** | Unpack/pack VLT (`gameplay`, `FE_ATTRIB`) |
| Dump CSV | `qol-plan\knowledge\dumps\` |
| Script A4 | `knowledge\scripts\a4_find_sell.py` (riferimento hash) |
| Binary 2.9 | Scaricato; non obbligatorio se Attribulator basta |
| Decomp community | Confermato `GetCost()/2` (GC/Xbox → stessa logica PC) |

Workflow VLT: edit YAML in `qol-tools\vlt-unpack` → `Attribulator pack` → smoke su `-qol` · **sempre backup** prima.

---

## File toccati dal QoL (sintesi)

| File | Cosa | Live |
|------|------|------|
| `FE_ATTRIB.bin` | Soft Cost, visual $0, lotto FE-bars, speciali, pink `UnlockedAt` ≥ # | OK |
| `gameplay.bin` | CashValue ×1.4 · bounty soft · visual unlock **L8** · **A3** Junkman 7×2 | OK |
| `speed.exe` | A4 sell 100% Cost (4 byte) | OK |
| ExOpts ini | Marker 6, garage 25 | OK |
| Widescreen ini | Pad DualSense | OK |

Save: `Documents\NFS Most Wanted\VNDRY\` — whitelist 38 auto.

**Pack rule:** `vlt-unpack` deve essere unpack del live corrente. Preferire `apply-script-bin` + copia **solo** `gameplay.bin`/`.lzc` (mai `attributes` dallo script-out se size drift).
