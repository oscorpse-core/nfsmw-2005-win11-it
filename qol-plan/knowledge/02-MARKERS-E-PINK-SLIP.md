# Marker e pink slip (“il segnale”)

> **Vanilla sotto.** QoL applicato: `SelectableMarkerCount = 6` → prendi tutti i marker (niente miss pink/Junkman).  
> Vedi `08-MARKERS-CLARIFIED.md`, `11-COHERENCE-FREEZE.md`.

## Cos’è (vanilla)

Dopo ogni Blacklist rival vinto, scegli **2 marker su 6** (vanilla).  
In Extra Options vanilla tipico: `SelectableMarkerCount = 2`.

### I 6 marker (struttura tipica)

| Tipo | Quanti | Contenuto |
|------|--------|-----------|
| **Bonus / mistero (`?`)** | 3 | Tra questi c’è **sempre** la **Pink Slip** (auto del rivale). Gli altri 2 sono fissi per quel boss (cash extra, get-out-of-jail, impound strike, sblocca auto dal deposito, …) ma **l’ordine dei 3 `?` è random** |
| Unique visual / part | tipicamente 2 | Pezzo estetico / part unico |
| Unique performance (Junkman) | tipicamente 1 | Upgrade Junkman (si stacka sulle fasce normali) |

Quindi: la pink slip **c’è sempre**, ma sta in **1 dei 3 `?`**. Con sole **2** scelte totali puoi:

- prendere 2 `?` e **mancare** la pink slip
- prendere Junkman / visual e **rinunciare** alla pink slip
- oppure reload / rifare il rival (meta-game 2005 odioso)

In `GLOBAL\gameplay.bin` compaiono stringhe tipo:

- `reward_pink_slip1`
- `reward_out_of_jail_free1`
- `reward_cash_bonus1`
- `reward_add_impound_box1`
- `reward_release_car_from_impound1`
- `upgrade_engine1`, `upgrade_bodykit1`, …

→ i reward marker sono dati di gameplay, non “magia hardcoded sola”.

## Due modi diversi di “avere l’auto del rivale”

| | Pink slip (marker) | Unlock Car Lot |
|--|--------------------|----------------|
| Cosa ottieni | L’auto **del rivale** (setup/livrea tipica) **gratis in garage** | Versione **comprabile** (spesso anche auto *diverse* sbloccate da quel boss) |
| Condizione | Indovinare il `?` giusto (o lucky) | Solo aver battuto il rivale + soldi |
| Frustration 2005 | Alta (RNG) | Bassa (soldi / slot garage) |

La tua frase *“lo batti, la ottieni senza il segnale giusto”* = **togliere il gate RNG della pink slip**, non necessariamente aprire tutto il lotto a inizio gioco.

## Junkman / unique vs shop normale

- **Shop performance** (Race → Pro → Super Pro → Ultimate): si sblocca avanzando Blacklist, si **compra**.
- **Junkman** (dai marker Unique Performance): pezzi speciali, Back Room negozio (tasto dedicato), quantità limitata per carriera.
- Unique visual da marker: se non li prendi, molti diventano disponibili **dopo aver finito Razor** (quindi in late-game meno critici della pink slip).

## Leve già nel pack (Extra Options) — solo nota, non decisioni

| Opzione | Effetto rilevante |
|---------|-------------------|
| `SelectableMarkerCount` | Se = **3** e scegli tutti e 3 i `?` → pink slip **garantita** (più gli altri 2 bonus). Se = **6** → prendi tutto (molto più “cheat”) |
| `UnlockAllThings` (F5 / ini) | Sblocca “tutto” — troppo grezzo rispetto al tuo obiettivo soft |
| `ShowAllCarsInFE` | Tutte le auto in lotto su **nuovi** save — non è “batti → ottieni”, è sandbox lotto |

Queste non sostituiscono la knowledge: servono dopo, quando decidiamo il *come* tecnico.
