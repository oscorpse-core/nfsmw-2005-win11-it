---
name: nfsmw-vlt-pack
description: >-
  NFS MW Attribulator VLT unpack/pack/apply-script-bin on -qol gameplay or FE_ATTRIB.
  Use when editing CashValue, bounty, unlock UpgradeLevel, Junkman rewards, or packing
  vault bins; keywords: Attribulator, apply-script-bin, gameplay.bin, vlt-unpack, pack rule.
---

# nfsmw-vlt-pack

1. Read [`agent/playbooks/01-attribulator-apply-script-bin.md`](../../../agent/playbooks/01-attribulator-apply-script-bin.md).
2. Backup, then apply-script-bin or pack from **live** unpack only.
3. Copy only intended bins to `-qol`.
4. Do not touch `attributes.bin` from script-out.

**Do not:** pack stale YAML; deploy whole script-out tree.
