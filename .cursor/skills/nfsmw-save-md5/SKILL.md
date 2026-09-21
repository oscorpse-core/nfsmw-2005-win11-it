---
name: nfsmw-save-md5
description: >-
  Edit NFS Most Wanted VNDRY career save unlock table and recalculate MD5.
  Use when CareerUnlockLevel wrong, save patch, VNDRY, checksum, integrali still
  locked after bin change; keywords: VNDRY, MD5, TheUnlockData, UnlockDatum, save.
---

# nfsmw-save-md5

1. Read [`agent/playbooks/02-vndry-save-md5.md`](../../../agent/playbooks/02-vndry-save-md5.md).
2. Backup VNDRY; locate unlock blob; patch Career/QuickRace levels; MD5 `[0x34..len-16)`.
3. Tell user to reload save if the game was running.

**Do not:** edit save without MD5; skip backup.
