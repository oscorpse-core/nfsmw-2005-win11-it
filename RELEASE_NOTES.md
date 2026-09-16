## NFS Most Wanted 2005 — Win11 IT (v1.0.1)

Pack **completo e già giocabile**: Black Edition + Widescreen Fix + Extra Options + italiano (menu, FMV dove presenti, voci polizia) + **`_CommonRedist`** (runtime obbligatori).

- **Non serve il disco del gioco** — tutto è nella cartella estratta.
- **Non serve** installare mod a parte per la prima partita.
- **Obbligatorio:** dopo l’estrazione, installa i file in `_CommonRedist\` **prima** di avviare `speed.exe` (altrimenti il gioco spesso non parte).
- **Windows 11** (testato). Repo **privato**: serve login GitHub con accesso.

Manuale completo (procedure passo-passo): [README](https://github.com/oscorpse-core/nfsmw-2005-win11-it#readme)

---

### Novità in v1.0.1

- Inclusa la cartella **`_CommonRedist\`** nel pack (Visual C++, DirectX, OpenAL, .NET 4.0, XNA).
- Documentazione aggiornata: passo install redistributable obbligatorio.

### Download + estrazione (importante)

| | |
|--|--|
| **Scarica** | **Entrambi** `.7z.001` **e** `.7z.002` (~1,99 GB + ~0,93 GB), stessa cartella |
| **Estrai** | **Solo** il `.001` con [7-Zip](https://www.7-zip.org/) (Win11: Mostra altre opzioni → 7-Zip → Estrai qui) |
| **Il `.002`** | **Non** si estrae a parte: 7-Zip lo usa da solo durante l’estrazione del `.001` |

Sono **un solo** archivio spezzato in 2 pezzi, non due pack diversi. Manca il `.002` → estrazione fallisce.

Poi ottieni `nfsmw-2005-win11-it` con almeno: `speed.exe`, `dinput8.dll`, `scripts\`, **`_CommonRedist\`**, `Tools\`.

Spazio: ~3 GB download + ~4 GB estratti (~7 GB se tieni archivi e cartella insieme).

### Dove metterla

Crea se serve `Games`, poi sposta **tutta** la cartella qui:

```text
C:\Users\TUO_NOME\Games\nfsmw-2005-win11-it\
```

Evita `Program Files`, OneDrive/Google Drive/Dropbox, path strani.

### Redistributable — prima di `speed.exe`

Apri `_CommonRedist\` e installa **tutti** i file (ordine consigliato nel README):

1. `vcredist_x86.exe` / `vcredist_x64.exe`
2. `vcredist_2015-2019_x86.exe` / `vcredist_2015-2019_x64.exe`
3. `dxwebsetup.exe` (serve Internet)
4. `oalinst.exe`
5. `dotNetFx40_Full_setup.exe`
6. `xnafx40_redist.msi`

Se un installer dice “già installato”, ok. Se chiede riavvio, riavvia e continua.

### Avvio

1. Doppio clic su **`speed.exe`** (se SmartScreen chiede: Ulteriori informazioni → Esegui comunque).
2. Lingua: **Italian**.
3. **Opzioni → Video**: **1920×1080** (anche su monitor grandi/ultrawide: tieni 1080p in-game).
4. Pad Xbox / DualSense: ok senza DS4Windows.

### Incluso già pronto

Gioco completo · Widescreen Fix + Extra Options · italiano + backup copspeech ENG · **`_CommonRedist\`** · `Tools\Save Editor NFS-MW.exe` (opzionale) · `LangChangeWS.bat` (solo se la lingua non resta: admin → `9`).
