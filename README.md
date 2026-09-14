# NFS Most Wanted 2005 — Win11 IT

Pack **completo e già giocabile** di *Need for Speed: Most Wanted (2005) Black Edition* per **Windows 11**, in italiano.

Nella cartella trovi **già tutto**: gioco, Widescreen Fix, Extra Options, menu/FMV/voci polizia in italiano, tool opzionali.  
**Non serve il disco del gioco**, non serve installare mod a parte, non serve scaricare altro per la prima partita.

Flusso in una riga: **scarichi i 2 pezzi → estrai col `.001` → sposti la cartella sotto il tuo utente → `speed.exe` → Italian → 1080p**.

> **Questo repository contiene solo la documentazione.**  
> Il gioco sta **solo** nelle **[Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases)** (archivio diviso in 2 pezzi).  
> Il repo è **privato**: per scaricare Assets devi essere **loggato su GitHub** con un account che ha accesso.

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
| Account GitHub | Loggato, con accesso a questo repo **privato** (altrimenti non scarichi gli Assets) |
| Spazio disco | **~3 GB** per scaricare i 2 archivi + **~4 GB** per la cartella estratta. Se tieni archivi *e* cartella insieme servono circa **7 GB** temporanei |
| Estrattore | **[7-Zip](https://www.7-zip.org/)** — obbligatorio in pratica per `.7z.001` / `.7z.002` |
| Risoluzione in-game | **1920×1080** (vedi [Risoluzione e monitor](#risoluzione-e-monitor)) |
| Pad | Xbox / XInput, oppure **DualSense (PS5)** — senza tool extra |
| Disco di gioco | **Non richiesto** |

---

## Download e installazione

Segui **nell’ordine** i tre passi. Non saltare il pezzo `.002`.

### 1. Scarica entrambi i pezzi dalla Release

1. Accedi a GitHub con un account che vede questo repo.
2. Apri la release **[v1.0.0](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases/tag/v1.0.0)** (o l’ultima in **[Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases)**).
3. Nella sezione **Assets** scarica **tutti e due** i file:
   - `nfsmw-2005-win11-it.7z.001` (~1,99 GB)
   - `nfsmw-2005-win11-it.7z.002` (~1,08 GB)
4. Mettili **nella stessa cartella** (es. `C:\Users\TUO_NOME\Downloads\nfsmw\`).

**Non** basta il solo `.001`. **Non** estrarre/aprire il solo `.002`. Se manca un pezzo, 7-Zip fallisce.

### 2. Estrai con 7-Zip

1. Installa [7-Zip](https://www.7-zip.org/) se non ce l’hai (poi riapri Esplora file).
2. Vai nella cartella dove hai i due file `.7z.001` e `.7z.002`.
3. Tasto destro su **`nfsmw-2005-win11-it.7z.001`**  
   - Su Windows 11, se non vedi 7-Zip: **Mostra altre opzioni**, poi **7-Zip**.
4. Scegli **Estrai qui** oppure **Estrai in “nfsmw-2005-win11-it\”**.
5. Aspetta la fine: 7-Zip legge da solo anche il `.002`.
6. Controlla che sia comparsa la cartella **`nfsmw-2005-win11-it`** e che dentro ci siano almeno:
   - `speed.exe`
   - `dinput8.dll`
   - cartella `scripts\`
   - cartella `Tools\`

Se uno di questi manca, l’estrazione non è andata a buon fine: riescarica entrambi i pezzi e ripeti dal `.001`.

### 3. Sposta la cartella nel percorso consigliato

1. Crea (se non esiste) la cartella `Games` sotto il tuo utente, es. `C:\Users\TUO_NOME\Games\`.
2. **Sposta tutta** la cartella `nfsmw-2005-win11-it` lì dentro (non solo `speed.exe`).
3. Percorso finale atteso:

```text
C:\Users\TUO_NOME\Games\nfsmw-2005-win11-it\speed.exe
```

Dettagli e alternative: [Dove mettere la cartella](#dove-mettere-la-cartella). Poi: [Primo avvio](#primo-avvio).

---

## Dove mettere la cartella

Metti il gioco **sotto il tuo profilo utente**, su disco interno locale, path semplice.

**Consigliato:**

```text
C:\Users\TUO_NOME\Games\nfsmw-2005-win11-it\
```

**Alternativa valida:**

```text
C:\Users\TUO_NOME\Documents\Games\nfsmw-2005-win11-it\
```

Sostituisci `TUO_NOME` con il tuo nome utente Windows (cartella già presente in `C:\Users\`).

**Perché qui:**

- scrittura libera (config / file creati dal gioco) senza UAC di `Program Files`;
- path corto e stabile se qualcosa va storto;
- niente sync cloud che blocca i file.

**Meglio evitare:**

| Dove | Perché |
|------|--------|
| `C:\Program Files\` o `Program Files (x86)\` | UAC / permessi: comportamenti strani o scrittura negata |
| Cartelle sync (OneDrive, Google Drive, Dropbox, ecc.) | file bloccati, sync, latenza, rischio corruzione |
| Solo rete / NAS / USB come unica copia | lentezza e disconnessioni; tieni una copia su disco interno |
| Path lunghissimi o con caratteri strani | tool/mod vecchi gestiscono male path esotici |

Nome cartella consigliato: `nfsmw-2005-win11-it`. Sposta **sempre l’intera cartella**.

---

## Primo avvio

Il pack è **già** impostato per l’italiano (Widescreen Fix, Extra Options, FMV IT dove presenti, copspeech IT). Non serve installare mod né lanciare `LangChangeWS.bat` per la prima partita.

1. Apri `C:\Users\TUO_NOME\Games\nfsmw-2005-win11-it\`.
2. Doppio clic su **`speed.exe`**.
3. Se Windows SmartScreen / Defender dice che l’app è sconosciuta: **Ulteriori informazioni** → **Esegui comunque** (solo se hai scaricato dalla *tua* Release di questo repo).
4. Alla schermata **lingua** scegli **Italian** e conferma.  
   È l’unico passo “manuale”: i file sono già IT, ma la lingua va scelta all’avvio — è normale.
5. Vai in **Opzioni → Video** e imposta **1920×1080**.
6. Se usi il pad: collegalo **prima** di avviare, oppure con il gioco già aperto.

Da qui in poi: avvia **sempre** `speed.exe` da questa stessa cartella (non da un’altra copia incompleta).

---

## Risoluzione e monitor

| Scenario | Cosa fare |
|----------|-----------|
| Monitor Full HD | In-game: **1920×1080** — testata e consigliata |
| Monitor grandi / ultrawide (es. ~21:9 o pannelli molto larghi) | Il gioco **parte e funziona**; **lascia comunque 1080p** nelle opzioni Video del gioco |

Il desktop Windows può stare a risoluzione più alta: conta la risoluzione **scelta dentro il menu Video di NFS**.

---

## Cosa include

Setup **ready-to-play** già assemblato:

| Elemento | Dove / nota |
|----------|-------------|
| Gioco **Black Edition** | File completi nella cartella (niente ISO/disco) |
| Widescreen Fix + Extra Options | `dinput8.dll` + `scripts\` (`NFSMostWanted.WidescreenFix.*`, `NFSMWExtraOptions.*`) |
| Italiano | Menu; FMV italiani dove previsti; **voci polizia IT** attive |
| Backup ENG voci polizia | `SOUND\SPEECH\_english_backup\` |
| `LangChangeWS.bat` | Solo se la lingua **non resta** impostata (vedi sotto) |
| Save Editor | `Tools\Save Editor NFS-MW.exe` — **opzionale**, non serve per giocare |

**Non cancellare / non spostare fuori dalla root del pack:**

- `speed.exe`
- `dinput8.dll`
- `scripts\`
- `SOUND\`, `MOVIES\`, `CARS\`, `TRACKS\`, `FRONTEND\`, `GLOBAL\`, `LANGUAGES\`, …

---

## Controller

- **Xbox** (o pad XInput): funziona da subito.
- **PlayStation 5 (DualSense):** testato su questo setup; **non** serve DS4Windows né wrapper simili.
- Non servono Steam Input né tool di mapping.
- Se non risponde: altra porta/cavo USB, oppure chiudi il gioco, collega il pad, riapri `speed.exe`.

---

## Voci della polizia (IT / ENG)

Di default i poliziotti sono in **italiano**.

Il gioco usa **solo** questi 4 file nella root di `SOUND\SPEECH\` (non esistono cartelle `It\` / `En\` in questo pack):

```text
SOUND\SPEECH\copspeech.big
SOUND\SPEECH\copspeech.csi
SOUND\SPEECH\copspeech.evt
SOUND\SPEECH\copspeech.idx
```

| Percorso | Contenuto |
|----------|-----------|
| `SOUND\SPEECH\` (i 4 file sopra) | **Italiano** — attivo |
| `SOUND\SPEECH\_english_backup\` | **Inglese** — scorta; non usata finché non la copi sopra |

### Passare all’inglese

1. Con il gioco **chiuso**, crea `SOUND\SPEECH\_italian_backup\` (se non c’è).
2. Copia i 4 file `copspeech.*` da `SOUND\SPEECH\` dentro `_italian_backup\`.
3. Copia i 4 file da `_english_backup\` dentro `SOUND\SPEECH\` e **sostituisci** quando Windows lo chiede.
4. Riapri `speed.exe` e verifica in una rincorsa con polizia.

### Tornare all’italiano

1. Gioco chiuso.
2. Copia i 4 file da `_italian_backup\` (o dal backup che hai fatto) di nuovo in `SOUND\SPEECH\` sostituendo.
3. Riapri `speed.exe`.

> Per le voci polizia **non** usare `LangChangeWS.bat`: in questo pack lo scambio IT/ENG si fa **solo** copiando i file come sopra.

---

## Cambio lingua (`LangChangeWS.bat`)

Di norma basta **Italian** alla schermata iniziale: **non** ti serve lo script.

Usalo **solo** se la lingua **non resta** (es. menu di nuovo in inglese al riavvio).

1. Chiudi il gioco.
2. Nella root del pack: tasto destro su **`LangChangeWS.bat`** → **Esegui come amministratore**  
   (se non lo fai, lo script si ferma e dice che servono i privilegi admin).
3. Quando chiede il numero lingua: digita **`9`** e Invio (= **Italian**).
4. Aspetta il messaggio di cambio lingua, poi chiudi la finestra.
5. Riapri `speed.exe` e seleziona di nuovo **Italian** se te lo chiede.

Cosa fa in pratica: aggiorna file di frontend/lingue e scrive la chiave  
`HKCU\SOFTWARE\EA Games\Need for Speed Most Wanted` → `Language` = `Italian`.  
In questo pack **non** ci sono `SOUND\SPEECH\It\` / `En\`: le voci polizia restano gestite come nella sezione precedente.

---

## Save Editor

Percorso: `Tools\Save Editor NFS-MW.exe`

- **Non serve** per giocare.
- Serve solo per modificare salvataggi (progressi / cheat).
- Lascia l’exe in `Tools\` (non spostarlo nella root accanto a `speed.exe`).
- I salvataggi **di solito non** stanno nella cartella del pack: sono sotto il **profilo Windows** (spesso in Documenti / AppData, a seconda di come è stato avviato il gioco).
- Procedura sicura: fai **una partita** → cerca il file di save aggiornato di recente sotto il tuo utente → **copia di backup** → solo dopo apri l’editor sul file copiato/originale.

---

## Problemi frequenti

| Cosa succede | Cosa fare |
|--------------|-----------|
| Non vedi / non scarichi gli Assets | Sei loggato su GitHub? Hai accesso al repo privato? |
| Estrazione fallisce / “archivio danneggiato” | Entrambi `.001` e `.002` presenti e **nella stessa cartella**? Estrai dal **`.001`** con 7-Zip (su Win11: Mostra altre opzioni). Riescarica entrambi |
| Non trovi il menu 7-Zip | Installa 7-Zip → tasto destro sul `.001` → **Mostra altre opzioni** → 7-Zip |
| Dopo l’estrazione manca `speed.exe` / `scripts\` | Estrazione incompleta: ripeti dal passo Download |
| SmartScreen blocca `speed.exe` | Ulteriori informazioni → Esegui comunque (solo da questa Release) |
| Nessuna scelta lingua / niente widescreen / pad “morto” da fix | Nella root devono esserci `dinput8.dll` e `scripts\` insieme a `speed.exe` |
| Menu IT ma poliziotti ENG | In `SOUND\SPEECH\` devono esserci i 4 file IT (non quelli ENG) |
| Lingua non resta al riavvio | `LangChangeWS.bat` come admin → `9` → riapri `speed.exe` |
| Il gioco non parte / errori strani | Sposta sotto `C:\Users\TUO_NOME\Games\`; evita Program Files e cartelle sync |
| GPU AMD o Intel, video/opzioni strane | In `scripts\NFSMostWanted.WidescreenFix.ini` metti `ForcedGPUVendor = 0` (default pack: `0x10DE` = NVIDIA) |
| Pad non rilevato | Collega prima di `speed.exe`, altra porta USB, riavvia il gioco |

---

## Limiti noti

- Testato su **Windows 11**, uso principale in **italiano**.
- In-game: **1920×1080**. Su monitor grandi/ultrawide funziona, ma **tieni 1080p** nel menu Video.
- Alcune cutscene (es. blacklist) restano in **inglese**; gli FMV italiani ci sono dove previsti dal pack.
- Il repo Git **non** contiene i binari: solo docs. Download solo da **Releases**.

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
| Pacchetto giocabile | [Releases](https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases) — `.7z.001` + `.7z.002` |
| Binari di gioco | **Non** in git |

Su un’altra macchina: scarica di nuovo **entrambi** gli Assets, estrai dal `.001`, metti la cartella sotto `C:\Users\...\Games\`, avvia `speed.exe`.

<details>
<summary>Per chi mantiene il pack (opzionale)</summary>

Lo script locale `publish-release.ps1` (se presente) serve solo a pubblicare Assets su GitHub; non fa parte del manuale utente e non va nei binari della Release. Gli archivi in `dist/` restano fuori da git (vedi `.gitignore`).

</details>
