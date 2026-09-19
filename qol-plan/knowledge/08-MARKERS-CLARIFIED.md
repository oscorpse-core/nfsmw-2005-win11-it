# Marker — cosa sono davvero (chiarimento)

> QoL: **S1** = `SelectableMarkerCount = 6` (prendi tutti). Zero RNG pink/Junkman.  
> Dettaglio freeze: `11-COHERENCE-FREEZE.md`.

Per non complicarci: tre cose **diverse** che il gioco mescola dopo il boss.

---

## 1. Unlock shop automatici (NON sono i marker)

Quando batti un boss, il bin ha già `unlocks/upgrade_*` (es. freni/motore livello 1).

- Sbloccano pezzi **normali** da comprare in negozio (Race → …).
- **Non** sono unici, **non** sono Junkman.
- Quantità: illimitata (paghi e metti).
- Arrivano **già senza scegliere marker**.

→ Con il nostro piano (fasce vanilla + prezzi soft) questi restano com’è. Non c’entrano col “problema marker”.

---

## 2. Junkman (marker “Unique Performance”)

- Tipi di boost: freni, sospensioni, trasmissione, turbo/supercharger, gomme, motore, (NOS quasi assente in carriera).
- In carriera i **drop sono pochi**: freni **solo** Sonny, motore **solo** JV; altri tipi si ripetono di più.
- Sono **stock limitato**: li metti su **poche** auto (spesso “abbasti per una macchina quasi full”, non per tutto il garage).
- **Non** sono “sblocco negozio per sempre a listino”: prendi il pezzo (Back Room) e lo usi.

Quindi sì: la tua lettura è corretta — **non** è un catalogo infinito; è un bonus scarso.

---

## 3. Marker estetica / “unique part” (vinyl, rim, hood, spoiler speciali…)

- **Sì**, sono pezzi **unici** (non il listino body kit normale).
- Quantità limitata / legati a quel reward.
- Molti unique visual, se non li prendi, in vanilla diventano disponibili **dopo Razor** in shop.
- Con il nostro piano **listino visual già tutto subito + gratis**, questi unique sono solo “extra cosmetici”, non il grosso del feel “faccio la macchina come voglio”.

---

## 4. Altri marker (consumabili)

Cash bonus, jail free, impound strike, sblocca auto dal deposito, pink slip (auto rivale).

- Pink slip = **unica** via “auto del rivale in garage” (setup/livrea).
- Jail/impound = aiutano coi cops (gameplay).

---

## Schema mentale

```text
Batti boss
 ├── già automatico: unlock pezzi NORMALI in shop (fasce)
 └── marker (scegli 2/6):
      ├── pink slip        → auto rivale
      ├── Junkman          → 1 pezzo scarso (potenza extra)
      ├── unique visual    → cosmetica unica
      └── consumabili      → cash / jail / impound
```

---

## Implicazione sul modello B (perché fermarsi era giusto)

Avevamo scritto “Junkman sbloccato in shop a prezzo soft per sempre”.  
Nei dati vanilla **non è così**: Junkman = pezzo scarso da marker.  
Trasformarlo in listino shop = **cambiare il design** (più lavoro, più “god” su più auto).

Unique estetici da marker: con listino già aperto, **meno critici**.

Il dolore vero da QoL resta soprattutto:

1. **Pink slip RNG** (auto rivale)  
2. Eventuale **miss Junkman** su Sonny/JV (freni/motore una volta sola)  
3. Economia / visual listino (già nel freeze, senza marker)

---

## Opzioni semplici (senza complicarci)

| Opzione | Cosa fai | Pro | Contro |
|---------|----------|-----|--------|
| **S1 — Solo ExOpts** | `SelectableMarkerCount = 6` | Una riga ini; prendi **tutti** i marker ogni boss (pink+Junkman+unique+consumabili) | UI marker resta; dai anche jail/impound (un filo più soft sui cops) |
| **S2 — ExOpts + togli consumabili dalla pool** | Count = size pool; in pool solo pink+Junkman+unique+cash | Niente miss permanenti; no jail auto | Serve edit VLT (T1); UI marker resta |
| **S3 — Solo pink slip sicura** | Garantire auto; Junkman/unique lasciati vanilla o S1 dopo | Minimo intervento | Junkman ancora “scegli o perdi” se non S1 |
| **S4 — Junkman shop infinito soft** | Come B “puro” | Garage tutto Junkman-abile | Più complesso; cambia bilanciamento potenza |

**Consiglio per “al meglio senza complicarsi”:**  
parti da **S1** (una riga). Risolve pink + Junkman miss + unique in un colpo.  
Se i cops diventano troppo gentili per i jail free extra, allora **S2**.  
S4 solo se un giorno vorrai davvero Junkman su tutte le auto.
