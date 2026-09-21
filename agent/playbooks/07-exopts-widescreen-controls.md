# Playbook 07 — ExOpts + Widescreen DualSense

## Files on `-qol`

- `scripts\NFSMWExtraOptionsSettings.ini`
- `scripts\NFSMostWanted.WidescreenFix.ini`

## QoL values

| Key | Value | Why |
|-----|-------|-----|
| `SelectableMarkerCount` | **6** | S1 — all markers |
| `PurchasedCarLimit` | **25** | Garage comfort |
| `UnlockAllThings` | **0** | Freeze |
| `ImproveGamepadSupport` | **0** | DualSense raw DInput breaks FE if 1 |
| `LeftStickDeadzone` / `RightStickDeadzone` | **28.0** | Camera drift |
| `StickLookSensitivity` | **0.0** | No ghost look |

## Evidence (verified 2026-09-21)

- DualSense usable with ImproveGamepad=0; A4 pad scare was Widescreen, not sell patch.

## Links

- [`../../qol-plan/knowledge/04-DATI-E-TOOL.md`](../../qol-plan/knowledge/04-DATI-E-TOOL.md)
- [`../../qol-plan/knowledge/11-COHERENCE-FREEZE.md`](../../qol-plan/knowledge/11-COHERENCE-FREEZE.md)
