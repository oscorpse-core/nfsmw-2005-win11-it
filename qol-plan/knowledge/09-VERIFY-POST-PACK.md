# Verifica post-errore pack (2026-09-19)

> Storico del fix pack FE visual. Stato attuale più ampio: `11-COHERENCE-FREEZE.md`.

## Cosa era andato storto

Attribulator `pack -b` direttamente su `GLOBAL` → Access denied.  
Pack su cartella temp → aveva riscritto anche `attributes.bin` / `gameplay.bin` / `gameplay.lzc` (size anomale).

## Correzione applicata

- `attributes.bin`, `gameplay.bin`, `gameplay.lzc` → **ripristinati identici all’originale**
- `FE_ATTRIB.bin` → tenuto il **nuovo** (visual cost = 0)

## Check hash (OK)

| File | vs originale |
|------|----------------|
| attributes.bin | identico |
| gameplay.bin | identico |
| gameplay.lzc | identico |
| GLOBALB.BUN / GlobalB.lzc | identici |
| FE_ATTRIB.bin | **diverso** (voluto) |

## Check contenuto FE (re-unpack)

| Categoria | Costi > 0 |
|-----------|-----------|
| hoods, rims, bodykits, vinyls, spoilers, paint | **0** (gratis) |
| engine, brakes (performance) | ancora a pagamento (max 98k / 26.8k) |

## Extra Options

- `SelectableMarkerCount = 6`
- `PurchasedCarLimit = 25`
- `UnlockAllThings = 0` (stato)

## Conclusione

Stato copia QoL **coerente e ripulito** dall’errore di pack.  
Manca solo smoke test in gioco (parte + shop visual a $0).
