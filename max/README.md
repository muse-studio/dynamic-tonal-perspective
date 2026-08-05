# Max Patches

This directory contains Max/MSP patches for the Dynamic Tonal Perspective prototype.

起点は `DynamicTonalPerspective.maxpat` です。パッチが参照するabstractionは `abstractions/`、追跡対象の音声などは `media/`、presetは `presets/` に配置します。ただし、既存パッチと同じ階層を前提とする参照を移す場合は、参照切れがないことを先に確認してください。

現在のパッチ:

- `DynamicTonalPerspective.maxpat`
- `PitchOperator.maxpat`
- `TonalityOperator.maxpat`
- `HarmonyGenerator.maxpat`
- `VoiceGenerator.maxpat`
- `VoiceManager.maxpat`

`.maxpat` はJSONとして機械的に全面整形せず、Maxでの保存による意図しない差分にも注意してください。
