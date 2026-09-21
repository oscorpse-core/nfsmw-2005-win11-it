# NFS Most Wanted 2005 — versione QoL (Win11 IT)

Documento **per chi gioca**: cos’è la versione QoL, cosa cambia rispetto al pack vanilla, cosa resta uguale.

| | |
|--|--|
| **Due linee** | Stesso repo GitHub: Release **vanilla** [**v1.0.1**](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases/tag/v1.0.1) e Release **QoL** [**v1.1.0-qol**](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases/tag/v1.1.0-qol) (Assets `nfsmw-2005-win11-it-qol.7z.00x`). |
| **Installazione** | Stesse regole del [README](README.md): 2 pezzi → estrai il `.001` → sposti la cartella → `_CommonRedist` → `speed.exe` → Italian → 1080p. Nel pack estratto leggi anche `LEGGIMI.txt`. |
| **Note Release QoL** | [`RELEASE_NOTES-QOL.md`](RELEASE_NOTES-QOL.md) |
| **Base** | Stesso pack completo IT Win11. Il QoL **aggiunge** soft e fix di qualità di vita sulla carriera. |
| **Save** | Consigliata una **carriera nuova** nella cartella QoL. Non mischiare save vanilla ↔ QoL. |

---

## In una frase

Stesso Most Wanted: **stessa storia, stesse gare, stessi cops**.  
Meno grind economico e meno RNG sui marker; più libertà di spendere e di personalizzare **dopo** i primi rivali — **senza** rendere le gare più facili.

---

## Quale Release scegliere

| Vuoi… | Scarica |
|-------|---------|
| Gioco completo IT senza i nostri soft carriera | Release **vanilla** — Assets `nfsmw-2005-win11-it.7z.001` + `.002` |
| Stesso pack **più** economia soft, visual shop, Junkman, vendita 100%, garage 25, DualSense **tarato**, ecc. | Release **QoL** — Assets `nfsmw-2005-win11-it-qol.7z.001` + `.002` |

Non mischiare le due cartelle di gioco.

---

## Filosofia (cosa abbiamo voluto)

| Sì | No |
|----|-----|
| Meno grind soldi / bounty / prezzi | Alleggerire skill di guida o AI polizia |
| Marker Blacklist più affidabili (ne prendi di più) | Sbloccare tutto day-one (`UnlockAllThings`) |
| Shop visual ricco e gratis **dopo Sonny (#15)** | Anticipare le **fasce performance** (restano vanilla) |
| Vendita auto al 100% del listino | Pink dei rivali in Car Lot (restano solo da marker) |
| Garage più capiente | Pack auto community / modelli extra |

---

## Cosa modifica o aggiunge (elenco completo)

### Economia e listino

| Voce | Cosa fa il QoL |
|------|----------------|
| Premi gare e rival (`CashValue`) | Circa **+40%** rispetto al vanilla (**×1.4**) |
| Prezzi auto e pezzi performance in negozio | Circa **−30%** (**×0.7**), con arrotondamenti sensati |
| Listino Car Lot | Prezzi/sblocchi ricalibrati sulle **barre FE** (Top Speed + Accel + Handling) |
| Auto speciali in lotto | Comparono in Car Lot (rank con le altre): **Camaro**, **Corvette C6.R**, **SL65**, **911 GT2**, **M3**, **M3 GTR** (e varianti correlate in FE). **Non** include le livree pink dei rivali. RX-8 Speed resta solo lato FE dove previsto |
| Bounty richiesta Blacklist | **Ridotta in modo progressivo**: early ×0.85, mid ×0.75, late ×0.65 (es. #15 → 17 000; Razor #1 → 6 500 000 invece di 10 000 000) |
| Cash dai marker | **Invariato** (vanilla); con più marker (sotto) li prendi più spesso |
| Vendita auto (A4) | Rivendi al **100% del Cost** di listino |
| Multa / soldi iniziali | Vanilla |

### Marker Blacklist e premi unici

| Voce | Cosa fa il QoL |
|------|----------------|
| Numero marker per rivale (S1) | **6** marker (Extra Options) — meno miss RNG |
| Junkman (A3) | Su #15–#2: **due pezzi** per ciascuno dei 7 tipi Junkman (freni, telaio, cambio, aspirazione, gomme, motore, NOS). **Razor (#1)** invariato |
| Pink-slip | Restano **solo** dai marker S1; dopo aver battuto il rivale puoi **guidarle subito** (sblocco negozio allineato al # rivale) |
| 3 HUD “unique” da marker | Restano **gated dai marker** (come in vanilla) |

### Personalizzazione (visual shop)

| Voce | Cosa fa il QoL |
|------|----------------|
| Quando | Dopo **Sonny (#15)** |
| Cosa | Fasce shop visual al **massimo** (bodykit, vernici, cerchi, alettoni, **aerografie/integrali**, ecc.) |
| Costo | Pezzi visual in negozio a **$0** |
| Performance | Gli sblocchi pezzi **performance** restano sulle **fasce vanilla** |

### Qualità di vita / setup

| Voce | Cosa fa il QoL |
|------|----------------|
| Garage | Capacità **25** (Extra Options) |
| DualSense (PS5) | Come il vanilla: **funziona senza DS4Windows**. In più, in QoL l’ini Widescreen è **già tarata** (`ImproveGamepad=0`, deadzone stick **28**, StickLook off) per FE/camera più stabili |
| Lingua / Widescreen / ExOpts / redistributable | Base come il pack vanilla IT |

### Cosa **non** cambia (sacro)

- Storia, cutscene, mappa, **condizioni di vittoria**, milestone  
- Difficoltà gare, AI rivali, **cops / heat**  
- Fasce di sblocco **performance** lungo la Blacklist  
- Nessun cheat “sblocca tutto” (`UnlockAllThings` resta **disattivato**)

---

## Cosa abbiamo **scartato** (non è nel QoL)

| Idea | Perché no |
|------|-----------|
| Pink dei rivali in Car Lot | Le livree pink restano premio marker |
| Visual completo day-one (prima di Sonny) | Il soft visual parte post-#15 |
| Anticipare pezzi performance a metà carriera | Fasce perf = vanilla |
| `UnlockAllThings = 1` | Troppo “cheat”; rompe la progressione |
| Junkman infinito in Back Room | Solo stock doppio da marker (A3) |
| Pack auto della community | Fuori scope (progetto a parte) |

---

## Tabella bounty (riferimento)

| # | Vanilla | QoL |
|---|---------|-----|
| 15 | 20 000 | **17 000** |
| 14 | 50 000 | **42 500** |
| 13 | 100 000 | **85 000** |
| 12 | 180 000 | **153 000** |
| 11 | 300 000 | **225 000** |
| 10 | 500 000 | **375 000** |
| 9 | 790 000 | **592 500** |
| 8 | 1 180 000 | **885 000** |
| 7 | 1 680 000 | **1 260 000** |
| 6 | 2 300 000 | **1 495 000** |
| 5 | 3 050 000 | **1 982 500** |
| 4 | 4 050 000 | **2 632 500** |
| 3 | 5 550 000 | **3 607 500** |
| 2 | 7 550 000 | **4 907 500** |
| 1 | 10 000 000 | **6 500 000** |

---

## Flusso soldi (come si gioca in pratica)

```text
Entrate:  gare + rival (×1.4)  +  cash marker (vanilla, ma ne prendi di più)
Uscite:   auto + performance (prezzi soft)  +  multe (vanilla)
          visual shop = gratis dopo #15
Vendita:  100% del Cost di listino
```

---

## Installazione

1. Scarica **entrambi** `nfsmw-2005-win11-it-qol.7z.001` **e** `.002`.  
2. Estrai **solo** il `.001` con [7-Zip](https://www.7-zip.org/).  
3. Sposta sotto `C:\Users\TUO_NOME\Games\nfsmw-2005-win11-it-qol\` (evita Program Files / cloud).  
4. Installa `_CommonRedist\` **prima** di `speed.exe`.  
5. Avvia → **Italian** → **1920×1080** → preferisci **Nuova carriera**.

Dettaglio passo-passo: [README](README.md). Sintesi in cartella: `LEGGIMI.txt`. Note tag: [`RELEASE_NOTES-QOL.md`](RELEASE_NOTES-QOL.md).

---

## Note e limiti

- Testato su **Windows 11**, uso principale in **italiano**.  
- In-game resta **1080p**.  
- Alcune cutscene restano in inglese (come nel pack base).  
- Il QoL **non** è un trainer: alleggerisce economia/RNG/shop, non cops e win condition.  
- Docs tecniche maintainer: `qol-plan\` (non serve per giocare).

---

## Riepilogo lampo

| Area | QoL |
|------|-----|
| Gare / cops / storia | = vanilla |
| Cash premi | ×1.4 |
| Prezzi shop auto/perf | ×0.7 + listino FE-bars |
| Bounty BL | soft progressiva |
| Marker | 6 per rivale |
| Junkman | 7 tipi ×2 (#15–#2) |
| Visual shop | max + $0 dopo #15 |
| Vendita auto | 100% Cost |
| Garage | 25 |
| Pink in lotto | no (solo marker) |
| Unlock tutto | no |

*Canon prodotto (freeze 2026-09-21): allineato a `qol-plan/knowledge/11-COHERENCE-FREEZE.md`.*
