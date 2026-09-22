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
| `ForcedGPUVendor` | **0** | Don’t spoof NVIDIA (AMD/Intel OK); keep high shadow/gamma settings |

## Evidence (verified 2026-09-21…2026-09-22)

- DualSense usable with ImproveGamepad=0; A4 pad scare was Widescreen, not sell patch.
- 2026-09-22: removed `*.bak-before-gamepad-0` from pack; `ForcedGPUVendor=0` (graphics quality knobs unchanged).

## Links

- [`../../qol-plan/knowledge/04-DATI-E-TOOL.md`](../../qol-plan/knowledge/04-DATI-E-TOOL.md)
- [`../../qol-plan/knowledge/11-COHERENCE-FREEZE.md`](../../qol-plan/knowledge/11-COHERENCE-FREEZE.md)
