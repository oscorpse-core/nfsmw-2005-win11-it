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
| `ForcedGPUVendor` | **0x10DE** (NVIDIA) on live `-qol` | Needed for full Video resolution list on NVIDIA; `=0` broke 2K options in test. Public `v1.1.0-qol` Assets may still say `0` until republish. |
| Graphics quality+ | **REJECTED** | ShadowsRes 4096 + SMAA + ConsoleGamma 2: little visible gain, micro-stutter. Keep 2048 / SMAA 0 / gamma 1. |

## Evidence (verified 2026-09-21…2026-09-22)

- DualSense usable with ImproveGamepad=0; A4 pad scare was Widescreen, not sell patch.
- 2026-09-22: removed `*.bak-before-gamepad-0`; quality+ rolled back; ForcedGPU back to **0x10DE** on local `-qol` (republish Release when asked).

## Links

- [`../../qol-plan/knowledge/04-DATI-E-TOOL.md`](../../qol-plan/knowledge/04-DATI-E-TOOL.md)
- [`../../qol-plan/knowledge/11-COHERENCE-FREEZE.md`](../../qol-plan/knowledge/11-COHERENCE-FREEZE.md)
