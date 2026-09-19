# A1 — Speciali in Car Lot (**APPLICATO**)

Data: 2026-09-19 (perf audit + retune)  
Copia: `-qol`  
Backup: `qol-tools\backups\20260919-a1-specials-perfprice\` (+ unlock/cost precedenti)

## Audit performance

| Auto | Customizable | Engine `_top` | Torque vs peer | Lettura |
|------|--------------|---------------|----------------|---------|
| camaro | **false** | no | ~112% mustang stock / **58%** ult | Fisso, poco sopra stock |
| sl65 | **false** | no | ~**90%** viper Ultimate | **Quasi max** fisso |
| corvettec6r | **false** | no | ~**90%** corvette Ultimate | **Quasi max** fisso |
| 911gt2 | **false** | no | ~**80%** 911turbo Ultimate | Forte, quasi top |
| m3_gtr / e46 | **false** | no | pacchetto unico hyper | Fisso late |
| m3 | **true** | (n/d street) | upgradeabile | Stock path |
| rx8speed | **true** | — | upgradeabile | Stock path |

`m3gtre46careerstart` = solo prologo (più debole); non è il listino E46.

## Prezzi / unlock (dopo retune)

| Auto | Cost | Unlock | Note |
|------|------|--------|------|
| rx8speed | 32000 | 9 | customizable — invariato |
| camaro | **40000** | **10** | fisso mild |
| m3 | 55000 | 7 | customizable — invariato |
| sl65 | **145000** | **3** | quasi-ult |
| corvettec6r | **165000** | **3** | quasi-ult |
| 911gt2 | **160000** | **2** | forte fisso |
| m3_gtr | 280000 | 2 | ok |
| m3_gtre46 | 350000 | 2 | ok |

## Playtest

**Importante:** il catalogo Car Lot è fissato alla **creazione del salvataggio**.  
Su un save già iniziato resti a **32** auto anche se `FE_ATTRIB` ha i speciali.  
→ Serve una **carriera nuova** sulla copia `-qol` (dopo questo patch).

1. Nuova carriera → contare auto in lotto (attese **>32**, tipicamente ~37–40 sbloccabili col progress)  
2. Mid: Camaro (@#10) / RX-8 Speed (@#9) / M3 (@#7)  
3. Late: SL65 / C6.R (@#3), GT2 / GTR (@#2) — già near-max  
4. Se ancora 32 dopo new save → prova `ShowAllCarsInFE = 1` (solo new save; può mostrare anche auto debug/cop)  

Pink non toccate.
