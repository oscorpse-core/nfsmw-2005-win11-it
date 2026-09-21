---
name: nfsmw-release-pack
description: >-
  Publish NFS MW Win11 IT GitHub Release assets (7z.001/002) via publish-release.ps1
  for vanilla (-Line vanilla) or QoL (-Line qol). Use ONLY when the user explicitly
  asks for release, publish, or gh release upload. Keywords: release, 7z, gh, publish, QoL Release.
---

# nfsmw-release-pack

1. Confirm explicit user request and **which line** (vanilla / qol).
2. Follow [`agent/playbooks/10-public-release-assets.md`](../../../agent/playbooks/10-public-release-assets.md).
3. Copy `pack-docs\…\LEGGIMI.txt` (and `QOL.md` for QoL) into the pack root before 7z.
4. Run `publish-release.ps1 -Line vanilla` or `-Line qol` (optional `-ReplaceExisting` for that tag only).

**Do not:** wipe all Releases; ship QoL into the vanilla tag; publish without explicit ask.
