# Max Patches

This directory contains Max/MSP patches for the Dynamic Tonal Perspective prototype.

起点は `DynamicTonalPerspective.maxpat` です。パッチが参照するabstractionは `abstractions/`、JavaScript実装は `js/`、追跡対象の音声などは `media/`、presetは `presets/`、実装履歴は `history/` に配置します。検証パッチは `../tests/max/` に配置し、`../../max/` から実装を参照します。

現在のパッチ:

- `DynamicTonalPerspective.maxpat`
- `PitchOperator.maxpat`
- `TonalityOperator.maxpat`
- `HarmonyGenerator.maxpat`
- `VoiceGenerator.maxpat`
- `VoiceManager.maxpat`

Phase 1hの生成Bass経路で使用する主なパッチ:

- `ScaleDegreeInterpreterExtended_v2.maxpat`
- `CadentialMotionEvidence_Phase1f_v3.maxpat`
- `CounterpointBassGenerator_Phase1g.maxpat`
- `BassVoiceLeading_Phase1h.maxpat`
- `BassPartState_Phase1h.maxpat`

`HarmonyGenerator.maxpat` は、`targetPitchMode` の値によりmanual MIDI（1）とgenerated target（2）を切り替えます。Phase 1hの実装履歴と確認範囲は [`history/2026-08-16-bass-voice-leading-phase1h.md`](history/2026-08-16-bass-voice-leading-phase1h.md) を参照してください。

`.maxpat` はJSONとして機械的に全面整形せず、Maxでの保存による意図しない差分にも注意してください。
