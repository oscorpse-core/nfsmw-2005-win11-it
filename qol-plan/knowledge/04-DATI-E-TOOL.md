# Dati nel pack e tool

> Path e leve. QoL applicato: Extra Options (garage 25, marker 6) + VLT `gameplay` / `FE_ATTRIB`.  
> Freeze: `11-COHERENCE-FREEZE.md`.

## Dove guardare (copia `-qol`, non originale)

| Path | Ruolo probabile |
|------|-----------------|
| `GLOBAL\gameplay.bin` (+ `.lzc`) | Eventi, reward, marker (`reward_pink_slip`, race bins…) |
| `GLOBAL\attributes.bin` | Attributi / unlock entity |
| `GLOBAL\FE_ATTRIB.bin` | Frontend attributes (bounty UI, ecc.) |
| `GLOBAL\GLOBALB.BUN` / `GlobalB.lzc` | Vault grande (auto, pezzi, prezzi — tipico target Binary/VLT) |
| `CARS\` | Modelli / dati auto per cartella |
| `FRONTEND\`, `LANGUAGES\` | UI / testi |
| `scripts\NFSMWExtraOptionsSettings.ini` | Leve runtime senza ripack (marker count, unlock all, cash start, garage limit…) |
| `Tools\Save Editor NFS-MW.exe` | Save (fuori scope bilanciamento file gioco) |

## Cosa abbiamo già verificato sul disco

- Pack completo: `speed.exe`, `GLOBAL`, `CARS`, Extra Options, Widescreen Fix.
- In `gameplay.bin` ci sono i nodi reward marker (pink slip, jail free, impound, upgrade_*).
- Extra Options rilevanti per QoL (stato attuale pack):

```ini
StartingCash = 0
AwardedCash = 10000
UnlockAllThings = 0
ShowAllCarsInFE = 0
SelectableMarkerCount = 2
PurchasedCarLimit = 10
EnableMaxPerformanceOnShop = 1
```

## Tool che serviranno (fase tecnica, dopo knowledge)

- **Binary** (community NFS) / editor VLT — per prezzi, unlock, vault in `GLOBALB`
- Eventualmente unpack `.BUN` / `.lzc`
- Diff + backup file prima di ogni edit

## Metodo ricerca (prossimo)

1. Completare tabelle da guide (già avviato).
2. Installare/usare Binary sulla copia `-qol` in sola lettura → dump prezzi/unlock.
3. Aggiornare `03-ECONOMIA-E-SHOP.md` con **numeri da file**, non solo wiki.
4. Solo allora: proposte QoL con moltiplicatori giustificati.
