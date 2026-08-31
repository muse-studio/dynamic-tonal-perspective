# SIGMUS147 Piece & Lecture 本番実施履歴

## 到達点

2026-08-31のSIGMUS147 Piece & Lectureで，Dynamic Tonal Perspective／一人合唱インタフェースを実演した．本番で使用した実装状態は`develop`ブランチのcommit `6b2039a625cd338b813624b6e7c0446e70a51744`（`mus147発表版`）である．本記録は設計上のPhase完成を宣言するものではなく，SIGMUS147 Piece & Lectureで実際に使用し，処理系の稼働を確認した版の区切りを記録する．

## 本番実績

- 2026-08-31にSIGMUS147 Piece & LectureでDynamic Tonal Perspective／一人合唱インタフェースを実演した．
- 処理系は本番中に起動し，実演の最後まで稼働した．
- `RoamingSheep`の歌唱と音源再生を用いた実演を行った．
- 第2フレーズ以降で歌唱Pitchを意図的に高めに変化させた際にも，生成Harmonyが追従した．
- 音源再生を含む実演進行が成立した．
- Piece & Lectureからデモセッションへつなぐ導入として実演した．

上記は本番実施後の実績記録であり，以下のJSON parse，配線照合，JavaScript syntax checkなどの静的テスト結果とは区別する．

## 本番で確認できたこと

- 少なくとも本番環境でメイン処理系が起動し，実演中の継続動作を確認した．
- 歌唱Pitchの変化に対する生成声部の追従を確認した．
- [`2026-08-31-inner-voices-phase1i.md`](2026-08-31-inner-voices-phase1i.md)と[`2026-08-31-initial-frame-interpreter-phase1.md`](2026-08-31-initial-frame-interpreter-phase1.md)にある「Max 9実機テスト：未実施」は，各履歴の作成時点では正しい．その後，2026-08-31のSIGMUS147 Piece & Lecture本番で本番構成の稼働を確認した．
- [`2026-08-17-pitch-interpreter-phase1.md`](2026-08-17-pitch-interpreter-phase1.md)に記録されたPitch Interpreterの手動／実マイク確認，および[`2026-08-16-bass-voice-leading-phase1h.md`](2026-08-16-bass-voice-leading-phase1h.md)に記録されたBass Voice Leading統合確認に加え，今回は内声2声とBassを含む本番構成の継続稼働を実演で確認した．

本番稼働は実際のパフォーマンス条件における実績であるが，各モジュールの単体テスト，定量的なPitch誤差評価，latency測定，音響品質評価の代替ではない．

## 本番で発生した問題

- 生成Harmonyに濁りまたはnoiseが生じた．
- 歌唱Pitchの変化に対する生成声部の追従は確認できたため，研究logic自体は動作していたと考えられる．ただし，これは本番中の挙動からの判断であり，原因切り分けによる確定ではない．
- 会場撤収後のため，noiseの原因は確定していない．
- MaxのAudio Deviceを会場Audio I/Fへ切り替え忘れた可能性が高いが，現時点では未確定である．
- マイク入力への会場音の回り込み，gain，clipping，pitch shift artifactも原因候補から排除できていない．
- 現時点で原因をアルゴリズム不具合とは断定しない．

## 今後の本番運用改善

以下は研究logicの変更と分離した本番運用上の課題とする．今回は実装しない．

- 起動時のAudio Device確認
- Input Device／Output Device確認
- Input level／Output level確認
- Pitch入力確認
- DSP開始前のcheck
- reset後の状態確認
- `AUDIO DEVICE CHECK`
- `INPUT OK`
- `OUTPUT OK`
- `PITCH OK`
- `READY`

## 本番版の構成

### Gitの区切り

- 本番使用ブランチ：`develop`
- 本番時の実装commit：`6b2039a625cd338b813624b6e7c0446e70a51744`（`mus147発表版`）
- 直前の関連commit：`1ac9663`（Phase 1i本番用のPitch／Frame初期化経路修正），`fbef0a0`（`RoamingSheep`追加），`6b2039a`（`RoamingSheep`伴奏較正経路と発表成果物）

本履歴の追加commitは実装ファイルを変更せず，上記commitの処理系に実施記録だけを追加する．

### 本番メインパッチ

- Dynamic Tonal Perspective／生成声部の本番メイン：`max/DynamicTonalPerspective_Phase1i.maxpat`
- `RoamingSheep`の歌唱／音源再生と伴奏進行：`RoamingSheep/RoamingSheep.maxpat`

`max/DynamicTonalPerspective.maxpat`はInitial Frame，Pitch Interpreter，Scale Degree，Cadential Motion，Counterpoint Bassと従来の`VoiceManager`を統合する基底メインパッチである．`max/DynamicTonalPerspective_Phase1i.maxpat`はその経路を基に，`VoiceManager_Phase1i`による内声2声＋Bassと，本番用に実配線されたObserved Pitch validity gate，初回Interpreted Pitch capture，reset経路を含むPhase 1i本番パッチである．

### 主要abstraction

- `max/PitchOperator.maxpat`
- `max/ObservedPitchValidityGate_Phase1i.maxpat`
- `max/PitchInterpreter_Phase1.maxpat`
- `max/ScaleDegreeInterpreterExtended_v2.maxpat`
- `max/CadentialMotionEvidence_Phase1f_v3.maxpat`
- `max/CounterpointBassGenerator_Phase1g.maxpat`
- `max/VoiceManager_Phase1i.maxpat`
- `max/VoiceGenerator.maxpat`（内声2声とBassの各3系統から参照）
- `max/HarmonyGenerator_Phase1h.maxpat`
- `max/BassVoiceLeading_Phase1h.maxpat`
- `RoamingSheep/SingerPitchCapture.maxpat`
- `RoamingSheep/AccompanimentPitchShifter.maxpat`
- `RoamingSheep/rs3chorus~.maxpat`

### 主要JavaScript

- `max/js/InitialFrameInterpreter_Phase1.js`
- `max/js/PitchInterpreter_Phase1.js`
- `max/js/ScaleDegreeInterpreterExtended_v2.js`
- `max/js/CadentialMotionEvidence_Phase1f_v3.js`
- `max/js/CounterpointBassPhase1g.js`
- `max/js/InnerVoiceTargets_Phase1i_diatonic36.js`
- `max/js/BassVoiceLeading_Phase1h_stateless.js`
- `RoamingSheep/RoamingSheepPitchCapture.js`

### 本番経路に含まれない試作variant

- `max/DynamicTonalPerspective_Phase1i_150ms.maxpat`
- `max/DynamicTonalPerspective_Phase1i_150ms_initfix.maxpat`
- `max/DynamicTonalPerspective_Phase1j_150ms.maxpat`
- `max/js/InnerVoiceTargets_Phase1i.js`
- `max/js/InnerVoiceTargets_Phase1i_voiceorder.js`

上記`_150ms`／`_150ms_initfix`／Phase 1j variantは履歴上の試作資材であり，本番候補として使用しないことが本番修正worklogに明記されている．本番の150 ms validity gateはこれらのvariantではなく，`DynamicTonalPerspective_Phase1i.maxpat`から`ObservedPitchValidityGate_Phase1i.maxpat`を実Observed Pitch経路上で参照する構成である．

## 本番経路の静的照合

HEADのパッチ内object参照と直前履歴を照合し，次の経路を確認した．

```text
DynamicTonalPerspective_Phase1i
  → PitchOperator
  → ObservedPitchValidityGate_Phase1i
  → PitchInterpreter_Phase1
     → js PitchInterpreter_Phase1.js
  → js InitialFrameInterpreter_Phase1.js
  → ScaleDegreeInterpreterExtended_v2
     → js ScaleDegreeInterpreterExtended_v2.js
  → CadentialMotionEvidence_Phase1f_v3
     → js CadentialMotionEvidence_Phase1f_v3.js
  → CounterpointBassGenerator_Phase1g
     → js CounterpointBassPhase1g.js
  → poly~ VoiceManager_Phase1i
     ├→ js InnerVoiceTargets_Phase1i_diatonic36.js
     ├→ VoiceGenerator × 2（内声）
     └→ HarmonyGenerator_Phase1h
        → BassVoiceLeading_Phase1h
           → js BassVoiceLeading_Phase1h_stateless.js
        → VoiceGenerator（Bass）

RoamingSheep
  ├→ rs3chorus~ 3 7（一人合唱）
  ├→ SingerPitchCapture
  │  └→ js RoamingSheepPitchCapture.js
  └→ AccompanimentPitchShifter
     └→ pfft~ gizmo_loadme 4096 4
```

`DynamicTonalPerspective_Phase1i.maxpat`は`VoiceManager_Phase1i`を参照し，`DynamicTonalPerspective.maxpat`と`DynamicTonalPerspective_Phase1j_150ms.maxpat`は従来の`VoiceManager`を参照する．この差異と本番修正worklogの指定により，内声2声を含む本番メインを`DynamicTonalPerspective_Phase1i.maxpat`と判別した．

## 既知の制約と要確認事項

- major Relative Tonal Frameとdiatonic 3rd下／6th下のデモ用内声規則に限定され，和声的妥当性の定量評価は未実施である．
- Pitch検出方式間のerror，dropout，latencyの定量比較は未実施である．
- Max Search Pathへ`max/`をSubfolders有効で登録する環境設定が必要である．
- 本番のnoise原因は要確認である．Audio Device，入出力level，回り込み，clipping，pitch shift artifactを分離して再検証する必要がある．
- 本番中に起動・継続動作と生成声部の追従は確認したが，個々のInitial Frame，Pitch Interpreter，Inner Voice，Bass Voice Leadingの全中間値を本番中に記録したわけではない．各モジュールの本番時内部値は要確認である．
- 本番時にMaxで開いていた全ファイルのGUIログや画面記録は本リポジトリ内で確認できない．本番メインの判別は，本番修正worklog，commit履歴，HEADのパッチ参照関係，および本番実施報告の照合に基づく．

## 参照した履歴

- [`2026-08-16-bass-voice-leading-phase1h.md`](2026-08-16-bass-voice-leading-phase1h.md)
- [`2026-08-17-pitch-interpreter-phase1.md`](2026-08-17-pitch-interpreter-phase1.md)
- [`2026-08-31-initial-frame-interpreter-phase1.md`](2026-08-31-initial-frame-interpreter-phase1.md)
- [`2026-08-31-inner-voices-phase1i.md`](2026-08-31-inner-voices-phase1i.md)
- [`../../docs/worklogs/2026-08-31_sigmus147-phase1i-production-fix.md`](../../docs/worklogs/2026-08-31_sigmus147-phase1i-production-fix.md)
- [`../../docs/worklogs/2026-08-31_sigmus147-roamingsheep-calibration.md`](../../docs/worklogs/2026-08-31_sigmus147-roamingsheep-calibration.md)

## 検証範囲

- 本番実績：2026-08-31の実施後記録による．
- Git状態，commit履歴，tag一覧：本履歴作成時に確認．
- パッチ参照関係：HEADの`.maxpat`内object text，JavaScript filename，関連worklogを静的に照合．
- 実装内容の静的テスト：既存履歴とworklogの検証結果を参照．
- 本履歴追加時にMaxパッチ，JavaScript，スライド，音源は変更しない．
