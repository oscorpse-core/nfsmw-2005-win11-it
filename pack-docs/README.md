# pack-docs — testi da mettere **dentro** gli archivi Release

Questi file non sostituiscono README/QOL sul repo: vanno **copiati nella root del pack** prima di creare i `.7z`.

| Linea | Copia in root pack |
|-------|--------------------|
| Vanilla | `vanilla/LEGGIMI.txt` → `LEGGIMI.txt` |
| QoL | `qol/LEGGIMI.txt` → `LEGGIMI.txt` **e** repo `QOL.md` → `QOL.md` |

Procedura completa: [`../agent/playbooks/10-public-release-assets.md`](../agent/playbooks/10-public-release-assets.md).
