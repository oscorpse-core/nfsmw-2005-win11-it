# SITUATIONS — intent router

Classify the user request, then open **only** the matching skill/playbook.

| ID | Situation | Typical signals (IT/EN) | Do | Do not |
|----|-----------|-------------------------|----|--------|
| A | QoL gameplay edit | unlock, vinyl, bounty, junkman, cash, FE cost | VLT/save/visual skills; backup `-qol` | Touch original pack / Release |
| B | Save / unlock gap | ancora locked, integrali, fiamme, tribal, tachimetri | Playbooks 02+03 | Raise bin only |
| C | Coherence / audit | save=bin?, tutto chiuso?, coerente | `nfsmw-coherence-audit` | New features |
| D | Docs / freeze point | docs, punto fermo, commit docs | `qol-plan` + sync agent canon | Binaries in git |
| E | Public Release | release, 7z, gh, publish | Playbook 10 **if explicit** | Assume Release |
| F | DualSense / ExOpts | pad, marker, garage, deadzone | Playbook 07; edit `-qol` ini | UnlockAllThings=1 |
| G | New discovery | perché?, offset, RE, hypothesis | Notes → [`PROMOTION.md`](PROMOTION.md) | Promote without smoke |
| H | Rollback | rollback, ripristina, prima di | Playbook 09 | Rewrite history |
| I | Out of scope | community cars, modello B, day-one visual | Cite [`DECISIONS-CLOSED.md`](DECISIONS-CLOSED.md) | Reopen debate |

## Quick mapping to skills

- A + VLT → `nfsmw-vlt-pack`
- B → `nfsmw-visual-unlock` + `nfsmw-save-md5`
- C → `nfsmw-coherence-audit`
- Economy FE → `nfsmw-fe-economy`
- E → `nfsmw-release-pack`
- H → `nfsmw-rollback-backup`
