# NFS Most Wanted 2005 — Win11 IT

Pack **completo e già giocabile** di *Need for Speed: Most Wanted (2005) Black Edition* per **Windows 11**, in italiano.

Nella cartella trovi **già tutto**: gioco, Widescreen Fix, Extra Options, menu/FMV/voci polizia in italiano, tool opzionali.  
**Non serve il disco del gioco**, non serve installare mod a parte, non serve scaricare altro per la prima partita: scarichi la Release, estrai, avvii `speed.exe`, scegli **Italian**.

> **Questo repository contiene solo la documentazione.**  
> Il pacchetto di gioco (~3 GB compressi, ~4 GB estratti) è solo nelle **[Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases)** (archivio diviso in 2 pezzi per i limiti di GitHub).

Repo: [oscorpse-core/nfsmw-2005-win11-it](https://github.com/oscorpse-core/nfsmw-2005-win11-it)  
Release attuale: **[v1.0.0](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases/tag/v1.0.0)**

---

## Indice

1. [Requisiti](#requisiti)
2. [Download e installazione](#download-e-installazione)
3. [Dove mettere la cartella](#dove-mettere-la-cartella)
4. [Primo avvio](#primo-avvio)
5. [Risoluzione e monitor](#risoluzione-e-monitor)
6. [Cosa include](#cosa-include)
7. [Controller](#controller)
8. [Voci della polizia (IT / ENG)](#voci-della-polizia-it--eng)
9. [Cambio lingua (`LangChangeWS.bat`)](#cambio-lingua-langchangewsbat)
10. [Save Editor](#save-editor)
11. [Problemi frequenti](#problemi-frequenti)
12. [Limiti noti](#limiti-noti)
13. [Credits](#credits)
14. [Note sul repository](#note-sul-repository)

---

## Requisiti

| Voce | Dettaglio |
|------|-----------|
| Sistema | **Windows 11** (uso principale testato) |
| Disco | ~4 GB liberi **dopo** l’estrazione |
| Estrattore | **[7-Zip](https://www.7-zip.org/)** (consigliato) — deve gestire archivi multi-volume `.7z.001` / `.7z.002` |
| Risoluzione | **1920×1080** testata e consigliata in-game (vedi [Risoluzione e monitor](#risoluzione-e-monitor)) |
| Pad | Xbox / XInput, oppure **DualSense (PS5)** — senza tool extra |
| Disco di gioco | **Non richiesto** — il setup giocabile è già nella cartella del pack |

---

## Download e installazione

### 1. Scarica entrambi i pezzi dalla Release

1. Apri la release **[v1.0.0](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases/tag/v1.0.0)** (o l’ultima in **[Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases)**).
2. Scarica **tutti e due** i file Assets:
   - `nfsmw-2005-win11-it.7z.001`
   - `nfsmw-2005-win11-it.7z.002`
3. Mettili **nella stessa cartella** (es. `Downloads\nfsmw\`).

Se manca anche un solo pezzo, l’estrazione fallisce.

### 2. Estrai con 7-Zip

1. Installa [7-Zip](https://www.7-zip.org/) se non ce l’hai.
2. Tasto destro su **`nfsmw-2005-win11-it.7z.001`** → **7-Zip** → **Estrai qui** (o “Estrai in…”).
3. 7-Zip userà automaticamente anche il `.002`.
4. Ottieni la cartella **`nfsmw-2005-win11-it`**.

Non serve unire i pezzi a mano: basta partire dal **`.001`**.

### 3. Sposta la cartella nel percorso consigliato

Segui [Dove mettere la cartella](#dove-mettere-la-cartella), poi [Primo avvio](#primo-avvio).

---

## Dove mettere la cartella

Metti il gioco **sotto il tuo profilo utente**, in una cartella giochi locale, con un percorso semplice.

**Consigliato:**

```text
C:\Users\TUO_NOME\Games\nfsmw-2005-win11-it\
```

**Alternativa valida:**

```text
C:\Users\TUO_NOME\Documents\Games\nfsmw-2005-win11-it\
```

(Sostituisci `TUO_NOME` con il tuo nome utente Windows.)

**Perché qui:**

- permessi di scrittura normali (salvataggi, config, eventuali file creati dal gioco);
- niente UAC tipico di `Program Files`;
- path corto e prevedibile, utile se qualcosa va storto.

**Meglio evitare:**

| Dove | Perché |
|------|--------|
| `C:\Program Files\` o `Program Files (x86)\` | UAC / permessi: il gioco può non scrivere o comportarsi in modo strano |
| Cartelle sync (OneDrive, Google Drive, Dropbox, ecc.) | file bloccati, sync in corso, latenza, corruzione |
| Solo su rete / NAS / USB come unica copia | lentezza e disconnessioni; tieni almeno una copia su disco interno |
| Path lunghissimi o con caratteri strani | alcuni tool/mod vecchi gestiscono male path esotici |

Tieni il nome cartella semplice: `nfsmw-2005-win11-it` va bene. Sposta **tutta** la cartella, non solo `speed.exe`.

---

## Primo avvio

Questo pack è **già impostato per l’italiano** (Widescreen Fix, Extra Options, FMV IT dove presenti, copspeech IT, ecc.). Non serve installare mod né lanciare script per la prima partita.

1. Entra nella cartella estratta `nfsmw-2005-win11-it`.
2. Avvia **`speed.exe`** (doppio clic).
3. Alla schermata lingua scegli **Italian**.  
   È l’unico passo “manuale”: il contenuto è già IT, ma la lingua va confermata all’avvio — è normale.
4. In **Opzioni → Video** imposta la risoluzione a **1920×1080** (consigliata).
5. Se usi il pad: collegalo **prima** dell’avvio, oppure con il gioco già aperto.

Da qui in poi: riapri sempre `speed.exe` **da questa stessa cartella**.

---

## Risoluzione e monitor

| Scenario | Cosa fare |
|----------|-----------|
| Monitor Full HD | Imposta **1920×1080** in-game — testata e consigliata |
| Monitor grandi / ultrawide (es. ~21:9 o pannelli molto larghi) | Il gioco **parte e funziona** anche su questi display; **tieni comunque la risoluzione di gioco a 1080p** |

In sintesi: desktop o pannello possono essere più grandi/larghi; la risoluzione **nel menu Video del gioco** resta **1920×1080**.

---

## Cosa include

Setup **ready-to-play** già assemblato:

- Gioco **Black Edition** (file di gioco completi nella cartella)
- **Widescreen Fix** + **Extra Options** già in `scripts\` (caricati via `dinput8.dll`)
- **Italiano**: menu, FMV italiani dove presenti, **voci della polizia in italiano**
- Inglese di backup dove serve (es. alcune cutscene blacklist restano in inglese)
- **`LangChangeWS.bat`** — solo se la lingua non resta impostata (vedi sotto)
- **`Tools\Save Editor NFS-MW.exe`** — opzionale, non serve per giocare

**File / cartelle critici (non cancellare e non spostare fuori dalla root del pack):**

- `speed.exe` — eseguibile del gioco
- `dinput8.dll` — loader delle mod ASI
- `scripts\` — `NFSMostWanted.WidescreenFix.*`, `NFSMWExtraOptions.*`
- `SOUND\`, `MOVIES\`, `CARS\`, `TRACKS\`, `FRONTEND\`, `GLOBAL\`, `LANGUAGES\`, …

---

## Controller

- **Xbox** (o pad XInput compatibile): funziona da subito.
- **PlayStation 5 (DualSense):** funziona su questo setup (testato); **non** serve DS4Windows né wrapper simili.
- In generale non servono Steam Input né altri tool di mapping.
- Se il pad non risponde: altro cavo/porta USB, oppure riavvia il gioco con il pad già collegato.

---

## Voci della polizia (IT / ENG)

Di default i poliziotti sono in **italiano**.

Il gioco legge **solo** questi file in `SOUND\SPEECH\`:

```text
SOUND\SPEECH\copspeech.big
SOUND\SPEECH\copspeech.csi
SOUND\SPEECH\copspeech.evt
SOUND\SPEECH\copspeech.idx
```

| Percorso | Contenuto |
|----------|-----------|
| `SOUND\SPEECH\` (i 4 file in questa cartella) | **Italiano** — attivo |
| `SOUND\SPEECH\_english_backup\` | **Inglese** — copia di scorta, non usata finché non la copi sopra |

### Passare all’inglese

1. Copia i 4 file italiani da `SOUND\SPEECH\` in una cartella di backup (es. `SOUND\SPEECH\_italian_backup\`).
2. Copia i 4 file da `_english_backup\` dentro `SOUND\SPEECH\` (sostituisci quelli presenti).

### Tornare all’italiano

Rimetti i 4 file IT al posto di quelli in `SOUND\SPEECH\`.

> `LangChangeWS.bat` **non** gestisce questo scambio: le voci polizia si cambiano solo così.

---

## Cambio lingua (`LangChangeWS.bat`)

Di norma basta scegliere **Italian** all’avvio — **non** ti serve lo script.

Se la lingua **non resta** impostata (menu in inglese dopo il riavvio, ecc.):

1. Tasto destro su **`LangChangeWS.bat`** (nella root del pack) → **Esegui come amministratore**
2. Digita **`9`** e Invio (= Italian)
3. Riapri `speed.exe`

Usa solo questo file (versione WS / chiave registro utente `HKCU\SOFTWARE\EA Games\Need for Speed Most Wanted`).

---

## Save Editor

Percorso: `Tools\Save Editor NFS-MW.exe`

- **Non serve** per giocare.
- Serve solo se vuoi modificare i salvataggi (progressi / cheat).
- Lascia l’exe in `Tools\` (non nella root del gioco).
- I salvataggi di solito **non** stanno nella cartella del pack: sono nel profilo Windows (Documenti / AppData).
- **Prima di editare:** fai una copia del file di salvataggio.

---

## Problemi frequenti

| Cosa succede | Cosa fare |
|--------------|-----------|
| Nessuna scelta lingua / niente widescreen / pad assente | Controlla che ci siano `dinput8.dll` e la cartella `scripts\` nella root del pack (non spostarli) |
| Menu in italiano ma poliziotti in inglese | In `SOUND\SPEECH\` devono esserci i 4 file IT, non quelli ENG |
| Il gioco non parte / errori strani | Sposta la cartella sotto `C:\Users\TUO_NOME\Games\` e riprova; evita Program Files e cartelle sync |
| Estrazione fallisce / “archivio danneggiato” | Hai scaricato **entrambi** `.001` e `.002`? Sono nella stessa cartella? Estrai dal `.001` con 7-Zip. Riescarica se serve |
| GPU AMD o Intel, problemi grafici / opzioni video strane | Apri `scripts\NFSMostWanted.WidescreenFix.ini`, cerca `ForcedGPUVendor` (di default `0x10DE` = NVIDIA). Prova a metterlo a `0` |
| Pad non rilevato | Collega il pad prima di `speed.exe`, oppure riavvia il gioco; prova un’altra porta USB |

---

## Limiti noti

- Testato su **Windows 11**, uso principale in **italiano**.
- Risoluzione in-game consigliata: **1920×1080**. Su monitor grandi/ultrawide il gioco funziona, ma **tieni 1080p** nelle opzioni Video.
- Alcune cutscene (es. blacklist) restano in **inglese**; tutorial/story FMV italiani sono presenti dove previsti dal pack.
- Questo repository Git **non** contiene i binari del gioco: solo documentazione. Il download è solo da **Releases**.

---

## Credits

- Widescreen Fix (community / ThirteenAG e autori correlati)
- Extra Options — [ExOptsTeam/NFSMWExOpts](https://github.com/ExOptsTeam/NFSMWExOpts)
- MultiCore / language packs e ItDub (autori dei pack usati)

---

## Note sul repository

| Cosa | Dove |
|------|------|
| Documentazione | Questo repo (`README.md`, `.gitignore`) |
| Pacchetto giocabile | [Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases) — `nfsmw-2005-win11-it.7z.001` + `.002` |
| Codice / asset di gioco | **Non** versionati in git (volontariamente) |

Se aggiorni il pack su un’altra macchina: scarica di nuovo la Release, estrai in una cartella nuova (o sostituisci dopo un backup), avvia `speed.exe`.

<details>
<summary>Per chi mantiene il pack (opzionale)</summary>

Lo script locale `publish-release.ps1` (se presente) serve solo a pubblicare Assets su GitHub; non fa parte del manuale utente e non va nei binari della Release. Gli archivi in `dist/` restano fuori da git (vedi `.gitignore`).

</details>
