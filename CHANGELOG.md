# Changelog

このファイルは、利用可能な機能やリリース単位の変更を記録します。形式は [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) を参考にしています。

## [Unreleased]

### Added

- プロジェクト共通文書と研究資材用ディレクトリの初期構成。
- Scale Degree Class、Extended Scale Degree、Diatonic Positionを出力するScale Degree Interpreter。
- Cadential Motion Evidenceと、その根拠を候補評価へ利用するCounterpoint Bass Generator。
- E2--E4の音域候補から直前音に近いregisterを選ぶBass Voice Leadingと、外部`previousPitch`履歴を持つBass Part State。
- manual MIDIとgenerated targetを切り替える`targetPitchMode`、およびPhase 1h統合テスト。
- Observed PitchとInterpreted Pitchを分離し，絶対音高誤差，intonation continuity，Temporal Stabilityから解釈音高を選択する`PitchInterpreter_Phase1`．
- 初回のInterpreted Pitchと申告されたScale DegreeからRelative Tonal Frameの`frameOriginMIDI`を求める`InitialFrameInterpreter_Phase1.js`．
- Dynamic Tonal Perspectiveと一人合唱インタフェースを紹介する研究発表スライド`mus147-DTP-hashida.pptx`．

### Changed

- Max JavaScript実装を`max/js/`、Maxテストパッチを`tests/max/`へ整理。
- `HarmonyGenerator`へgenerated Bass targetのvoice-leading経路を追加。
- Phase 1eからPhase 1hまでを`DynamicTonalPerspective`へ統合し，`frameOriginMIDI`と`bassTargetDegree`をsend／receive経由で下流へ渡す構成へ更新．
- Max Search PathのSubfolders検索に合わせ，Phase 1h主要パッチの`js` objectをJavaScriptのbasename指定へ更新．
- `DynamicTonalPerspective`の経路を`PitchOperator → PitchInterpreter_Phase1 → ScaleDegreeInterpreterExtended_v2`へ更新．
- `DynamicTonalPerspective`に初回Interpreted Pitchの1回限り取得，申告Scale Degreeの入力，Relative Tonal Frameの初期化経路を追加．
- マイク入力に`filtergraph~`／`biquad~`の前処理を追加し，`fluid.pitch~`の出力を音量閾値でゲートするよう`PitchOperator`を更新．

### Fixed

- なし。
