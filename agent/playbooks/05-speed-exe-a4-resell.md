# Playbook 05 — A4 resell (`speed.exe`)

## Goal

Dealer sell price = **100%** FE `Cost` (not 50%). Perf investment still not refunded.

## Patch (PC v1.3, ImageBase `0x400000`)

| Role | VA | File offset (VA−0x400000) | Vanilla | Patch |
|------|-----|---------------------------|---------|-------|
| Award on sell | `0x7C1F65` | `0x3C1F65` | `D1 E8` | `90 90` |
| Confirm dialog | `0x7C2351` | `0x3C2351` | `D1 E8` | `90 90` |

Exactly **4 bytes** changed.

## Steps

1. Backup `speed.exe` (e.g. `20260921-a4-resell-v2`).
2. Patch both sites; verify bytes `90 90` vs bak `D1 E8`.
3. Do **not** blame A4 for DualSense FE issues (Widescreen ImproveGamepad).

## Reference

- `qol-plan/knowledge/scripts/a4_find_sell.py` for rediscovery.

## Evidence (verified 2026-09-21)

- Static verify + in-game sell OK after DualSense ini fixed separately.

## Links

- [`../../qol-plan/knowledge/15-A4-RESELL.md`](../../qol-plan/knowledge/15-A4-RESELL.md)
