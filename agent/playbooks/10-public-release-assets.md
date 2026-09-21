# Playbook 10 — Public Release assets

## Gate

**Only** when the user explicitly asks for a Release / publish. QoL is **not** in v1.0.1 by default.

## Pieces

| Piece | Path |
|-------|------|
| Notes | `RELEASE_NOTES.md` |
| Assets | `dist\nfsmw-2005-win11-it.7z.001` + `.002` |
| Uploader | `publish-release.ps1` (streaming; avoids gh hang on ~2GB) |
| User manual | `README.md` (Italian) — keep install correct for the tag |

## Steps

1. Confirm tag / whether QoL is included (today: usually **no**).
2. Build/refresh 7z multi-volume in `dist\` if needed (outside agent inventiveness — follow existing maintainer flow).
3. Update `RELEASE_NOTES.md` for that tag.
4. Run `publish-release.ps1` with credentials/environment already set by maintainer.
5. Verify GitHub Release assets both present.

## Do not

- Ship `-qol` binaries into public Release without explicit decision.
- Rewrite README into English.
- Push if user only said “prepare” without publish.

## Evidence (verified)

- Script and v1.0.1 flow exist in repo; used for public pack installs.

## Links

- [`../../RELEASE_NOTES.md`](../../RELEASE_NOTES.md)
- [`../../publish-release.ps1`](../../publish-release.ps1)
- [`../../README.md`](../../README.md)
