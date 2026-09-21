# KNOWLEDGE-INDEX — 1:1 inventory (zero orphan)

Maps every existing `qol-plan` artifact to the agent layer. **Do not leave knowledge files unindexed.**

## A. Live canon (IT) — primary links

| Source | Content | Agent destination | Status |
|--------|---------|-------------------|--------|
| [`qol-plan/PLAN.md`](../qol-plan/PLAN.md) | Freeze point, closed/scartato, paths, backups | CANON, DECISIONS-CLOSED, FILE-MAP | live |
| [`qol-plan/knowledge/00-INDEX.md`](../qol-plan/knowledge/00-INDEX.md) | IT index | Bridge ↔ AGENTS | live |
| [`11-COHERENCE-FREEZE.md`](../qol-plan/knowledge/11-COHERENCE-FREEZE.md) | **Source of truth** | AGENTS L0; wins conflicts | live |
| [`04-DATI-E-TOOL.md`](../qol-plan/knowledge/04-DATI-E-TOOL.md) | Paths, ExOpts, DualSense, pack rule | FILE-MAP, PB 01/07 | live |
| [`10-VISUAL-UNLOCK-MAX.md`](../qol-plan/knowledge/10-VISUAL-UNLOCK-MAX.md) | Visual L8, HUD unique, save gap | PB 03, skill visual | live |
| [`12-ECONOMY-NUMBERS.md`](../qol-plan/knowledge/12-ECONOMY-NUMBERS.md) | ×1.4 / ×0.7 | PB 04 | live |
| [`13-BOUNTY-SOFT.md`](../qol-plan/knowledge/13-BOUNTY-SOFT.md) | Bounty bands | PB 04 | live |
| [`14-A1-SPECIALS-CARLOT.md`](../qol-plan/knowledge/14-A1-SPECIALS-CARLOT.md) | FE-bars, speciali, pink UA | PB 04 | live |
| [`15-A4-RESELL.md`](../qol-plan/knowledge/15-A4-RESELL.md) | A4 offsets | PB 05 | live |
| [`16-A3-JUNKMAN-X2.md`](../qol-plan/knowledge/16-A3-JUNKMAN-X2.md) | Junkman 7×2 map | PB 08 | live |
| [`03-ECONOMIA-E-SHOP.md`](../qol-plan/knowledge/03-ECONOMIA-E-SHOP.md) | Economy/shop context | GLOSSARY, PB 04 | live |
| [`08-MARKERS-CLARIFIED.md`](../qol-plan/knowledge/08-MARKERS-CLARIFIED.md) | Marker vs shop vs Junkman | GLOSSARY, SITUATIONS B | live |

## B. Background / historical (IT) — indexed, not migrated

| Source | Agent use |
|--------|-----------|
| [`01-CAREER-LOOP.md`](../qol-plan/knowledge/01-CAREER-LOOP.md) | Career context; GLOSSARY Background |
| [`02-MARKERS-E-PINK-SLIP.md`](../qol-plan/knowledge/02-MARKERS-E-PINK-SLIP.md) | Pink/marker background |
| [`05-DISCOVERY.md`](../qol-plan/knowledge/05-DISCOVERY.md) | Discovery notes; ANTI-PATTERNS / PB 06 |
| [`06-LOGIC-REVIEW.md`](../qol-plan/knowledge/06-LOGIC-REVIEW.md) | Logic history aligned to freeze |
| [`07-TECH-MODEL-B.md`](../qol-plan/knowledge/07-TECH-MODEL-B.md) | Why not model B → DECISIONS-CLOSED |
| [`09-VERIFY-POST-PACK.md`](../qol-plan/knowledge/09-VERIFY-POST-PACK.md) | Post-pack verify ideas → PB 06 |

Default: read freeze + playbook; open `01–09` only when context needed.

## C. Dumps CSV

| Dump | Role | Live vs historical |
|------|------|--------------------|
| [`dumps/cars-lot-fe-bars.csv`](../qol-plan/knowledge/dumps/cars-lot-fe-bars.csv) | **Authoritative lot Cost/Unlock** | **live** |
| [`dumps/cars-lot-perf-calibrated.csv`](../qol-plan/knowledge/dumps/cars-lot-perf-calibrated.csv) | A1 calibration grid | live support |
| [`dumps/cars-perf-score.csv`](../qol-plan/knowledge/dumps/cars-perf-score.csv) | Score dump | live support |
| [`dumps/cars-specials-perf-calibrated.csv`](../qol-plan/knowledge/dumps/cars-specials-perf-calibrated.csv) | Specials calib | live support |
| [`dumps/cars-specials-proposed.csv`](../qol-plan/knowledge/dumps/cars-specials-proposed.csv) | Specials proposals | historical |
| [`dumps/cars-specials-unlock.csv`](../qol-plan/knowledge/dumps/cars-specials-unlock.csv) | Specials unlock work | historical |
| [`dumps/cars-specials-perf-retune.csv`](../qol-plan/knowledge/dumps/cars-specials-perf-retune.csv) | Retune notes | historical |
| [`dumps/cashvalue.csv`](../qol-plan/knowledge/dumps/cashvalue.csv) | Vanilla cash | reference |
| [`dumps/cashvalue-proposed.csv`](../qol-plan/knowledge/dumps/cashvalue-proposed.csv) | Soft ×1.4 targets | live support |
| [`dumps/required-bounty.csv`](../qol-plan/knowledge/dumps/required-bounty.csv) | Bounty table | live support |
| [`dumps/performance-cost.csv`](../qol-plan/knowledge/dumps/performance-cost.csv) | Vanilla perf Cost | reference |
| [`dumps/performance-proposed.csv`](../qol-plan/knowledge/dumps/performance-proposed.csv) | Soft perf Cost | live support |
| [`dumps/cars-cost.csv`](../qol-plan/knowledge/dumps/cars-cost.csv) | Early cost dump | historical |
| [`dumps/cars-purchasable.csv`](../qol-plan/knowledge/dumps/cars-purchasable.csv) | Purchasable list | historical |
| [`dumps/cars-proposed.csv`](../qol-plan/knowledge/dumps/cars-proposed.csv) | Soft ×0.7 proposals | historical |
| [`dumps/cashreward-marker.csv`](../qol-plan/knowledge/dumps/cashreward-marker.csv) | Marker cash vanilla | reference |

## D. Scripts / release tooling

| Source | Agent destination |
|--------|-------------------|
| [`scripts/a4_find_sell.py`](../qol-plan/knowledge/scripts/a4_find_sell.py) | PB 05 reference |
| [`publish-release.ps1`](../publish-release.ps1) | PB 10 |
| [`RELEASE_NOTES.md`](../RELEASE_NOTES.md) | PB 10 / public |
| `qol-tools\` (outside git) | CANON paths; PB 01/09 — **never commit** |

## E. Session harvest (verified → playbooks)

| Fact | Playbook Evidence |
|------|-------------------|
| Unlock blob after CaseFileName +16 + RaceData `0x12C4`; 57×8 `UnlockDatum` | 02, 06 |
| Save MD5 range `[0x34 .. len-16)` | 02 |
| `upgrade_vinyls` → `UNLOCKABLE_VINYLS_GROUP_BODY` (40) | 03 |
| `gMaxPartLevels[BODY]=6`; UNIQUE level = 7 | 03 |
| Bin L8 not retroactive on save | 03, 06 |
| Backup `20260921-vinyl-save-l8` | 03, 09 |
| Coherence: CurrentBin vs beaten bins vs max UpgradeLevel | 06 |
