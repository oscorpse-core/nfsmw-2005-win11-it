# NFS Most Wanted 2005 — Win11 IT

Pack **già pronto in italiano** di *Need for Speed: Most Wanted (2005) Black Edition* per **Windows 11**.

Mod, fix widescreen, Extra Options, doppiaggio e voci della polizia in italiano sono **già installati**. Non serve aggiungere nulla per giocare: scarichi, estrai, avvii `speed.exe`, scegli **Italian**.

> **Questo repository contiene solo la documentazione.**  
> Il pacchetto di gioco (~3–4 GB) sta nelle **[Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases)** (archivi divisi in 2 pezzi per i limiti di GitHub).

Repo: [oscorpse-core/nfsmw-2005-win11-it](https://github.com/oscorpse-core/nfsmw-2005-win11-it)

---

## Indice

1. [Requisiti](#requisiti)
2. [Download e installazione](#download-e-installazione)
3. [Prima avvio](#prima-avvio)
4. [Dove mettere la cartella](#dove-mettere-la-cartella)
5. [Cosa include](#cosa-include)
6. [Controller](#controller)
7. [Voci della polizia (IT / ENG)](#voci-della-polizia-it--eng)
8. [Cambio lingua (`LangChangeWS.bat`)](#cambio-lingua-langchangewsbat)
9. [Save Editor](#save-editor)
10. [Problemi frequenti](#problemi-frequenti)
11. [Limiti noti](#limiti-noti)
12. [Credits](#credits)

---

## Requisiti

| Voce | Dettaglio |
|------|-----------|
| Sistema | **Windows 11** (uso principale testato) |
| Spazio disco | ~4 GB liberi dopo l’estrazione |
| Estrattore | **[7-Zip](https://www.7-zip.org/)** (consigliato) o tool che gestisca archivi multi-volume `.7z.001` / `.7z.002` |
| Risoluzione | Fino a **1920×1080** testata e consigliata |
| Pad | Xbox / XInput, oppure **DualSense (PS5)** — senza tool extra |

Serve anche una copia legale del gioco: questo pack è un setup personale preconfigurato, non un sostituto della licenza.

---

## Download e installazione

### 1. Scarica i pezzi dalla Release

1. Apri **[Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases)**.
2. Nella release più recente scarica **entrambi** i file:
   - `nfsmw-2005-win11-it.7z.001`
   - `nfsmw-2005-win11-it.7z.002`
3. Mettili **nella stessa cartella** (es. `Downloads\nfsmw\`).

> Se manca anche un solo pezzo, l’estrazione fallisce.

### 2. Estrai con 7-Zip

1. Installa [7-Zip](https://www.7-zip.org/) se non ce l’hai.
2. Tasto destro su **`nfsmw-2005-win11-it.7z.001`** → **7-Zip** → **Estrai qui** (o “Estrai in…”).
3. 7-Zip userà automaticamente anche il `.002`.
4. Ottieni la cartella **`nfsmw-2005-win11-it`**.

Non serve unire i pezzi a mano: basta partire dal `.001`.

### 3. Sposta la cartella dove preferisci

Vedi [Dove mettere la cartella](#dove-mettere-la-cartella). Poi segui [Prima avvio](#prima-avvio).

---

## Prima avvio

Questa release è **già impostata per l’italiano** (Widescreen Fix, Extra Options, FMV IT, copspeech IT, ecc.). Non serve installare mod né lanciare script per la prima partita.

1. Entra nella cartella estratta `nfsmw-2005-win11-it`.
2. Avvia **`speed.exe`** (doppio clic).
3. Alla schermata lingua scegli **Italian**  
   (unico passo “manuale”: il pack è già IT, ma la lingua va confermata — è normale).
4. In **Opzioni → Video** imposta la risoluzione (fino a **1920×1080** è ok e testata).
5. Se usi il pad: collegalo **prima** dell’avvio, oppure con il gioco già aperto.

Da qui in poi: riapri sempre `speed.exe` **da questa stessa cartella**.

---

## Dove mettere la cartella

Consigliato: **dentro il tuo profilo utente**, in una cartella giochi tua, per esempio:

```text
C:\Users\TUO_NOME\Games\nfsmw-2005-win11-it\
```

oppure:

```text
C:\Users\TUO_NOME\Documents\Games\nfsmw-2005-win11-it\
```

**Meglio evitare:**

- `C:\Program Files\` o `Program Files (x86)\` (permessi / UAC)
- Cartelle sincronizzate (OneDrive, Google Drive, Dropbox) — file bloccati o lenti
- Path lunghissimi o con caratteri strani
- Disco di rete / USB lentissima come unica copia di gioco

Tieni il nome cartella semplice: `nfsmw-2005-win11-it` va bene.

---

## Cosa include

- Gioco **Black Edition**
- **Widescreen Fix** + **Extra Options** (già installati)
- **Italiano**: menu, filmato, voci polizia
- Inglese di backup dove serve (es. alcune cutscene blacklist)
- **`Tools\Save Editor NFS-MW.exe`** — opzionale, per salvataggi / cheat

**File importanti (non cancellare):**

- `speed.exe`
- `dinput8.dll`
- cartella `scripts\`

Non cancellare le cartelle del gioco (`CARS`, `TRACKS`, `SOUND`, `MOVIES`, ecc.).

---

## Controller

- **Xbox** (o pad XInput compatibile): funziona da subito.
- **PlayStation 5 (DualSense):** funziona da subito su questo setup (testato); **non** serve DS4Windows.
- In generale non servono Steam Input né altri wrapper.
- Se il pad non risponde: prova un altro cavo/USB, oppure riavvia il gioco con il pad già collegato.

---

## Voci della polizia (IT / ENG)

Di default senti i poliziotti in **italiano**.

Il gioco legge solo i file qui:

```text
SOUND\SPEECH\copspeech.big
SOUND\SPEECH\copspeech.csi
SOUND\SPEECH\copspeech.evt
SOUND\SPEECH\copspeech.idx
```

| Percorso | Contenuto |
|----------|-----------|
| `SOUND\SPEECH\` (file in questa cartella) | **Italiano** — attivo |
| `SOUND\SPEECH\_english_backup\` | **Inglese** — copia di scorta, non usata |

### Passare all’inglese

1. Copia i 4 file italiani da `SOUND\SPEECH\` in una cartella di backup (es. `_italian_backup`).
2. Copia i 4 file da `_english_backup\` dentro `SOUND\SPEECH\` (sostituisci).

### Tornare all’italiano

Rimetti i file IT al posto di quelli in `SOUND\SPEECH\`.

---

## Cambio lingua (`LangChangeWS.bat`)

Di norma basta la scelta **Italian** all’avvio — non ti serve lo script.

Se la lingua **non resta** impostata:

1. Tasto destro su **`LangChangeWS.bat`** → **Esegui come amministratore**
2. Digita **`9`** e Invio (= Italian)
3. Riapri `speed.exe`

Usa solo questo file (versione WS / registro utente).

> Nota: lo script **non** gestisce lo scambio delle voci polizia. Per IT/ENG cops vedi la sezione sopra.

---

## Save Editor

Percorso: `Tools\Save Editor NFS-MW.exe`

- **Non serve** per giocare.
- Serve solo se vuoi modificare i salvataggi (progressi / cheat).
- Lascia l’exe in `Tools\` (non nella root del gioco).
- I salvataggi di solito **non** stanno nella cartella del gioco: sono nel profilo Windows (Documenti / AppData).
- **Prima di editare:** fai una copia del file di salvataggio.

---

## Problemi frequenti

| Cosa succede | Cosa fare |
|--------------|-----------|
| Nessuna scelta lingua / niente widescreen / pad assente | Controlla che ci siano `dinput8.dll` e la cartella `scripts\` (non spostarli) |
| Menu in italiano ma poliziotti in inglese | In `SOUND\SPEECH\` devono esserci i file IT, non quelli ENG |
| Il gioco non parte / errori strani | Sposta la cartella sotto `C:\Users\TUO_NOME\Games\` e riprova (evita Program Files) |
| Estrazione fallisce / “archivio danneggiato” | Hai scaricato **tutti** i pezzi (`.001` e `.002`)? Sono nella stessa cartella? Riescaricali |
| Scheda video AMD o Intel, problemi grafici | Apri `scripts\NFSMostWanted.WidescreenFix.ini`, cerca `ForcedGPUVendor` (di default NVIDIA). Prova a metterlo a `0` |

---

## Limiti noti

- Testato su **Windows 11**, uso principale in **italiano**.
- Oltre **1080p** / ultrawide: non garantito.
- Questo repository Git **non** contiene i binari del gioco: solo README e file di supporto. Il download del pack è solo da **Releases**.

---

## Credits

- Widescreen Fix (community / ThirteenAG e autori correlati)
- Extra Options — [ExOptsTeam/NFSMWExOpts](https://github.com/ExOptsTeam/NFSMWExOpts)
- MultiCore / language packs e ItDub (autori dei pack usati)

---

## Note sul repository

| Cosa | Dove |
|------|------|
| Documentazione | Questo repo (`README.md`) |
| Pacchetto giocabile | [Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases) |
| Codice / asset di gioco | **Non** versionati in git (volontariamente) |

Se aggiorni il pack su un’altra macchina: scarica di nuovo la Release, estrai in una cartella nuova (o sostituisci dopo backup), avvia `speed.exe`.
