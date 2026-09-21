# Playbook 10 — Public Release assets (vanilla + QoL)

## Gate

**Only** when the user explicitly asks for a Release / publish.

Two product lines, **same GitHub repo**, **separate tags and asset names**:

| Line | Default tag | Assets in `dist\` | Notes file | In-pack docs (`pack-docs\`) |
|------|-------------|-------------------|------------|------------------------------|
| Vanilla | `v1.0.1` | `nfsmw-2005-win11-it.7z.001` + `.002` | `RELEASE_NOTES.md` | `pack-docs/vanilla/LEGGIMI.txt` |
| QoL | `v1.1.0-qol` | `nfsmw-2005-win11-it-qol.7z.001` + `.002` | `RELEASE_NOTES-QOL.md` | `pack-docs/qol/LEGGIMI.txt` + copy of `QOL.md` |

User catalog QoL: [`../../QOL.md`](../../QOL.md). Install manual: [`../../README.md`](../../README.md).

## Prerequisites

1. Explicit user OK for **which** line (vanilla / QoL / both).
2. Fresh 7z multi-volume built from the correct folder:
   - Vanilla ← untouched original pack
   - QoL ← `-qol` copy (`…\nfsmw-2005-win11-it-qol`)
3. Before compressing QoL, copy into pack root:
   - `pack-docs/qol/LEGGIMI.txt` → `LEGGIMI.txt`
   - repo `QOL.md` → `QOL.md`
4. Before compressing vanilla, copy:
   - `pack-docs/vanilla/LEGGIMI.txt` → `LEGGIMI.txt`
5. Notes files updated for the tag; README dual-line section still accurate.

## QoL binary checklist (must be in archive)

| Path | Role |
|------|------|
| `GLOBAL\gameplay.bin` + `gameplay.lzc` | Cash / bounty / visual / Junkman |
| `GLOBAL\FE_ATTRIB.bin` | Cost / FE-bars / visual $0 / pink UA |
| `GLOBAL\attributes.bin` | = vanilla (no script-out drift) |
| `speed.exe` | A4 resell 100% |
| `scripts\NFSMWExtraOptionsSettings.ini` | Marker 6, garage 25, UnlockAllThings=0 |
| `scripts\NFSMostWanted.WidescreenFix.ini` | DualSense tuned |
| `LEGGIMI.txt`, `QOL.md` | In-pack user docs |
| `_CommonRedist\` | Required runtimes |

## Steps

1. Confirm tag + line.
2. Build/refresh 7z into `dist\` with the names above.
3. Update the matching `RELEASE_NOTES*.md`.
4. Publish (streaming; does **not** delete other Releases):

```powershell
# Vanilla (first time or new tag)
.\publish-release.ps1 -Line vanilla

# QoL
.\publish-release.ps1 -Line qol

# Re-upload same tag only (deletes THAT tag's release, keeps the other line)
.\publish-release.ps1 -Line qol -ReplaceExisting
```

5. Verify GitHub Release: both `.001` and `.002` present; open notes; spot-check download names.
6. Smoke: extract on a clean path → `_CommonRedist` → `speed.exe` → Italian → 1080p. For QoL: new career; after #15 visual $0; bounty #14 = 42500.

## Do not

- Ship `-qol` into the **vanilla** tag.
- Delete all Releases (old script behavior removed — use `-ReplaceExisting` only for the target tag).
- Rewrite README into English.
- Push/publish if user only said “prepare”.
- Leave `QOL.md` / `LEGGIMI.txt` out of the QoL archive.

## Evidence (verified)

- Streaming upload path used for v1.0.1 vanilla.
- Dual-line script + notes + pack-docs; **QoL `v1.1.0-qol` published 2026-09-21** (assets `.001`/`.002` size-matched; Latest kept on vanilla).
- Draft ID resolve: prefer `GET /releases` filter by `tag_name` (drafts lack stable tag URL).

## Links

- [`../../RELEASE_NOTES.md`](../../RELEASE_NOTES.md)
- [`../../RELEASE_NOTES-QOL.md`](../../RELEASE_NOTES-QOL.md)
- [`../../QOL.md`](../../QOL.md)
- [`../../publish-release.ps1`](../../publish-release.ps1)
- [`../../README.md`](../../README.md)
- [`../../pack-docs/`](../../pack-docs/)
