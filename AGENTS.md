# AGENTS.md — Cursor agent entry (L0)

**Audience:** Cursor agents. **Language of this tree:** English.  
**Chat with the user:** Italian. **Public README:** Italian user-first — do not rewrite the install manual.

## First steps (every relevant chat)

1. Classify the request with [`agent/SITUATIONS.md`](agent/SITUATIONS.md).
2. Open **only** the matching skill / playbook.
3. Product truth for QoL: [`qol-plan/knowledge/11-COHERENCE-FREEZE.md`](qol-plan/knowledge/11-COHERENCE-FREEZE.md) wins on conflicts.
4. Full inventory: [`agent/KNOWLEDGE-INDEX.md`](agent/KNOWLEDGE-INDEX.md).

## What this repo is

| Piece | Role |
|-------|------|
| This git repo | Docs + agent ecosystem (+ Release notes / publish script) |
| GitHub Releases | Playable packs: **vanilla v1.0.1** shipped; **QoL** = separate tag/assets when explicitly published |
| `-qol` folder | Local QoL game copy (outside this repo’s binaries) |
| `qol-tools\` | Attribulator, backups, VLT unpack (gitignored / outside) |

## Absolute paths

| Role | Path |
|------|------|
| Original pack (untouched) | `C:\Users\andre\_Main\games\nfs2005\nfsmw-2005-win11-it` |
| QoL copy | `C:\Users\andre\_Main\games\nfs2005\nfsmw-2005-win11-it-qol` |
| Tools / backups | `C:\Users\andre\_Main\games\nfs2005\qol-tools\` |
| Docs | `qol-plan\` (this repo) |
| Agent layer | `agent\`, `.cursor\` (this repo) |

## Hard constraints (summary)

- Edit **only** `-qol`. Never the original pack.
- Backup under `qol-tools\backups\` before binary edits.
- Prefer `apply-script-bin` on **current** live bins; do **not** pack from stale YAML.
- When touching gameplay: copy **only** `gameplay.bin` / `gameplay.lzc` (never drift `attributes.bin` from script-out).
- Visual shop unlocks need **bin** `UpgradeLevel` **and** save `TheUnlockData` (vinyl → entity **BODY / 40**). MD5 save: `[0x34 .. len-16)`.
- Shop listino ≠ marker uniques (`reward_hud`, etc.). Perf **unlock bands** stay vanilla.
- `UnlockAllThings = 0`. Do not use it as a “fix”.
- No git commit / push / GitHub Release unless the user **explicitly** asks.
- Do not search prior Cursor transcripts unless the user asks.

## Freeze status (2026-09-21)

QoL career freeze on `-qol`: **CLOSED**. No backlog. Public: vanilla **v1.0.1** shipped; QoL Release = dual-line ready (docs/`pack-docs`/`publish-release.ps1 -Line qol`) — **ship only if user explicitly asks**.

See [`agent/CANON.md`](agent/CANON.md) and [`agent/DECISIONS-CLOSED.md`](agent/DECISIONS-CLOSED.md).

## Skills → playbooks

| Skill | Use when | Playbook |
|-------|----------|----------|
| `nfsmw-vlt-pack` | unpack/pack/apply-script | [`01`](agent/playbooks/01-attribulator-apply-script-bin.md) |
| `nfsmw-save-md5` | VNDRY unlock/flags | [`02`](agent/playbooks/02-vndry-save-md5.md) |
| `nfsmw-visual-unlock` | vinyls/HUD shop vs locked | [`03`](agent/playbooks/03-visual-unlock-bin-and-save.md) |
| `nfsmw-fe-economy` | Cost, FE-bars, cash, bounty, pink UA | [`04`](agent/playbooks/04-fe-attrib-economy.md) |
| `nfsmw-coherence-audit` | save↔bin OK? | [`06`](agent/playbooks/06-post-change-coherence.md) |
| `nfsmw-rollback-backup` | restore prior state | [`09`](agent/playbooks/09-rollback-from-backup.md) |
| `nfsmw-release-pack` | **only** if user asks release | [`10`](agent/playbooks/10-public-release-assets.md) |

Also: A4 → [`05`](agent/playbooks/05-speed-exe-a4-resell.md); ExOpts/pad → [`07`](agent/playbooks/07-exopts-widescreen-controls.md); Junkman → [`08`](agent/playbooks/08-junkman-a3-markers.md).

## Done bars

Use [`agent/DONE-DEFINITION.md`](agent/DONE-DEFINITION.md). New verified recipes → [`agent/PROMOTION.md`](agent/PROMOTION.md).
