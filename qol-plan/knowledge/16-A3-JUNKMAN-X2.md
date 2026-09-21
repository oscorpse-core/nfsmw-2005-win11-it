# A3 — Junkman 7×2 (stock doppio)

Data: **2026-09-21**  
Copia: `-qol` · File: `GLOBAL\gameplay.bin` (+ `.lzc`)  
Backup: `qol-tools\backups\20260921-a3-junkman-x2\`  
Pre-smoke NOS: `qol-tools\backups\20260921-a3-nos-smoke-20260921-023835\`

---

## Decisioni

| Voce | Scelta |
|------|--------|
| Obiettivo | **2 pezzi** per ciascuno dei **7** tipi Junkman in carriera |
| Dove | Marker Unique Performance su Blacklist **#15–#2** (14 drop) |
| Razor (#1) | **Non toccato** (nessun Junkman vanilla) |
| Shop infinito / Back Room illimitato | **No** — solo stock da marker |
| S1 | Resta: prendi tutti i marker (niente miss RNG) |

Tipi: brakes, chassis, transmission, induction, tires, engine, **nos**.

---

## Mappa live

| # | Junkman | Note |
|---|---------|------|
| 15 | brakes | Vanilla |
| 14 | chassis | Era NOS solo in smoke; ora chassis |
| 13 | transmission | Vanilla |
| 12 | induction | Vanilla |
| 11 | tires | Vanilla |
| 10 | **nos** | Era chassis |
| 9 | chassis | Era induction |
| 8 | transmission | Vanilla |
| 7 | tires | Vanilla |
| 6 | induction | Era chassis |
| 5 | **nos** | Era induction |
| 4 | engine | Vanilla |
| 3 | brakes | Era tires |
| 2 | engine | Era induction |
| 1 | — | Razor intatto |

Conti: **2×** ciascun tipo.

---

## Come

Edit YAML `vlt-unpack\main\gameplay\race_bin_XX\gameplay.yml`: nodi reward Junkman (`ParentName: reward_*` + path `race_bin_XX/rewards/...`).  
Pack Attribulator → copia **solo** `gameplay.bin` / `gameplay.lzc` su `-qol` (FE/attributes intatti).

---

## Smoke / save

1. Phase 0: `#14` → `reward_nos`, beat Taz → marker NOS **OK** (warehouse Back Room non smoke; rischio residuo accettato).
2. Redistribute 7×2 + pack.
3. Save `Documents\NFS Most Wanted\VNDRY\VNDRY` ripristinato da backup **pre-Taz** (`20260921-a3-nos-smoke-...\VNDRY`). Copia post-Taz tenuta in `20260921-a3-junkman-x2\VNDRY-post-Taz-NOS-smoke\` (hash identico al pre in questa sessione).

Playtest: Taz → **chassis** **OK** (2026-09-21). Attesi #10/#5 → **NOS**.

---

## Nota pack

Re-apply cash/bounty (stesso giorno) via `apply-script-bin` — Junkman A3 **preservato** (verificato).  
`vlt-unpack` riallineato al live post-fix.

---

## Riferimenti

`11` freeze · `08` marker/Junkman · [`../PLAN.md`](../PLAN.md)
