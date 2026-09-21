---
name: nfsmw-release-pack
description: >-
  Publish NFS MW Win11 IT GitHub Release assets (7z.001/002) via publish-release.ps1.
  Use ONLY when the user explicitly asks for release, publish, or gh release upload.
  Do not include QoL in public pack unless they say so.
---

# nfsmw-release-pack

1. Confirm explicit user request for Release.
2. Follow [`agent/playbooks/10-public-release-assets.md`](../../../agent/playbooks/10-public-release-assets.md).
3. Keep README Italian install accurate for the tag.

**Do not:** run this for normal QoL chats; do not push QoL silently into v1.0.x.
