# Max Patches

This directory contains Max/MSP patches for the Dynamic Tonal Perspective prototype.

起点は `DynamicTonalPerspective.maxpat` です．パッチが参照するabstractionは `abstractions/`，JavaScript実装は `js/`，追跡対象の音声などは `media/`，presetは `presets/`，実装履歴は `history/` に配置します．検証パッチは `../tests/max/` に配置します．

MaxのSearch Pathにはこの`max/`ディレクトリをSubfolders有効で登録します．この設定では，`max/js/`内のJavaScriptを読み込む`js`オブジェクトには`js/Foo.js`ではなく`Foo.js`と指定します．Phase 1hの主要パッチについて，この指定で正常にロードできることをMax 9で確認済みです．

現在のパッチ:

- `DynamicTonalPerspective.maxpat`
- `PitchOperator.maxpat`
- `PitchInterpreter_Phase1.maxpat`
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

Phase 1iのデモ用内声経路:

- `DynamicTonalPerspective_Phase1i.maxpat`
- `VoiceManager_Phase1i.maxpat`
- `js/InnerVoiceTargets_Phase1i_diatonic36.js`

`DynamicTonalPerspective_Phase1i_150ms.maxpat`と`DynamicTonalPerspective_Phase1i_150ms_initfix.maxpat`は段階的な試作variantです．`DynamicTonalPerspective_Phase1j_150ms.maxpat`は150 ms voice-activity gateを既存`VoiceManager`経路で確認する分離variantです．現時点で`pitchInputGate`の受信側は未接続であり，完成機能とは扱いません．

Pitch Interpreter Phase 1:

- `PitchOperator.maxpat`が送出する値をObserved Pitchとして扱う．
- `PitchInterpreter_Phase1.maxpat`がInterpreted Pitchを決定する．
- `ScaleDegreeInterpreterExtended_v2.maxpat`にはraw Observed PitchではなくInterpreted Pitchを渡す．
- Phase 1のPitch InterpretationはRelative Tonal Frame，Scale Degree，Harmonyを使用しない．

Initial Frame Interpreter Phase 1:

- `InitialFrameInterpreter_Phase1.js`は初回Interpreted Pitchと申告Scale Degree（1--7）から`frameOriginMIDI`を生成する．
- Phase 1はrelative interpretationとdiatonic major scaleを前提とし，absolute interpretationと`octaveOffset`は扱わない．
- 初回Interpreted Pitchは`initialPitchGate`で1回だけ`initialInterpretedPitch`へ送る．

実装と確認結果は[`history/2026-08-17-pitch-interpreter-phase1.md`](history/2026-08-17-pitch-interpreter-phase1.md)を参照してください．
初期Frame生成経路の実装と静的検証結果は[`history/2026-08-31-initial-frame-interpreter-phase1.md`](history/2026-08-31-initial-frame-interpreter-phase1.md)を参照してください．
Phase 1i内声デモと試作variantの実装範囲は[`history/2026-08-31-inner-voices-phase1i.md`](history/2026-08-31-inner-voices-phase1i.md)を参照してください．

`DynamicTonalPerspective.maxpat`はScale Degree Interpretation，Cadential Motion Evidence，Counterpoint Bassを統合し，`frameOriginMIDI`と`bassTargetDegree`をsend／receive経由で下流へ渡します．`HarmonyGenerator.maxpat`は`HarmonyGenerator_Phase1h`を介してBass Voice Leadingへ接続し，`targetPitchMode`の値によりmanual MIDI（1）とgenerated target（2）を切り替えます．Phase 1hの実装履歴と確認範囲は [`history/2026-08-16-bass-voice-leading-phase1h.md`](history/2026-08-16-bass-voice-leading-phase1h.md) を参照してください．

`.maxpat` はJSONとして機械的に全面整形せず、Maxでの保存による意図しない差分にも注意してください。
