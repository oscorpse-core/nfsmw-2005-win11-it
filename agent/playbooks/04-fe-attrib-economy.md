# Playbook 04 — FE economy / lot / pink / cash / bounty

## FE_ATTRIB (`-qol`)

| Lever | QoL |
|-------|-----|
| Auto + perf `Cost` | Soft **×0.7** (+ rounding rules in knowledge 12) |
| Visual Costs | **$0** |
| Lot order | FE-bars (TS+Acc+Han); CSV live: `dumps/cars-lot-fe-bars.csv` |
| Specials A1 | In FE; VNDRY 38 cars (no RX-8); see knowledge 14 |
| Pink-slip `UnlockedAt` | `max(rank, rival#)` so drive works after marker |

## gameplay

| Lever | QoL |
|-------|-----|
| `CashValue` | **×1.4** (races + rival) |
| Marker `CashReward` | Vanilla |
| `RequiredBounty` | Soft ×0.85 / ×0.75 / ×0.65 (early/mid/late) |

## Steps

1. Backup FE and/or gameplay.
2. Prefer apply-script-bin / pack FE from live unpack.
3. Copy only changed bins to `-qol`.
4. Spot-check: known cash (e.g. early race), bounty #15=17000, #14=42500; Supra UA=13.

## Evidence (verified 2026-09-19…2026-09-21)

- Soft economy + FE-bars + pink UA playtested; bounty spot #14 OK; cash re-apply after A3 pack OK.

## Links

- [`../../qol-plan/knowledge/12-ECONOMY-NUMBERS.md`](../../qol-plan/knowledge/12-ECONOMY-NUMBERS.md)
- [`../../qol-plan/knowledge/13-BOUNTY-SOFT.md`](../../qol-plan/knowledge/13-BOUNTY-SOFT.md)
- [`../../qol-plan/knowledge/14-A1-SPECIALS-CARLOT.md`](../../qol-plan/knowledge/14-A1-SPECIALS-CARLOT.md)
- [`../../qol-plan/knowledge/03-ECONOMIA-E-SHOP.md`](../../qol-plan/knowledge/03-ECONOMIA-E-SHOP.md)
