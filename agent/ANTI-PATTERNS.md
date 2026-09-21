# ANTI-PATTERNS

| Bad idea | Why it fails | Do instead |
|----------|--------------|------------|
| Pack from stale `vlt-unpack` YAML | Drops cash/bounty/visual/A3 | Re-unpack live **or** `apply-script-bin` on current bins |
| Copy whole Attribulator script-out (incl. attributes) | Size drift / load fail | Copy **only** intended `gameplay.bin`/`.lzc` or `FE_ATTRIB` |
| Raise visual `UpgradeLevel` in bin only | Existing saves keep old CareerUnlockLevel | Also patch save (PB 02) or re-beat vinyl-awarding rival |
| Treat tribal/flame “Body” as marker unique | They are shop vinyls via BODY entity | PB 03 |
| Treat 3 HUD uniques as shop fasce | `reward_hud` marker path | Leave gated (decision) |
| UnlockAllThings=1 to “fix” locks | Violates freeze; masks real bugs | Fix bin/save properly |
| Max perf UpgradeLevel with visual | Softens skill progression | Never touch perf unlock bands |
| Edit original pack folder | Destroys Release baseline | Only `-qol` |
| Commit `qol-tools/`, `.bin`, `speed.exe`, saves | Repo is docs-first | Keep gitignored / outside |
| Push / gh release without ask | User gate | Wait for explicit request |
| Search prior Cursor transcripts by default | User rule | Ask first / use repo docs |
