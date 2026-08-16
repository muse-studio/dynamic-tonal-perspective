# Architecture

## 処理構造

```text
Observation → Feature Extraction（Pitch Interpretationを含む） → Evidence → Decision → State Update
```

### Observation

マイク入力やイベントから、後段が扱う観測を取得します。観測自体は調性状態を更新しません。

### Feature Extraction

観測からpitch，voice activity，イベント境界などの特徴を抽出します．Pitch OperatorがObserved Pitchを生成し，Pitch InterpreterがInterpreted Pitchを生成します．Pitch Interpretationの局所履歴はInterpretation Stateであり，Tonality Stateとは分離します．

### Evidence

特徴から、Relative Tonal Frameの維持・調整・再形成を支持する根拠を生成します。Evidence層は状態を更新しません。

### Decision

複数のEvidenceを評価し、状態を維持するか、調整するか、再形成するかを決定します。

### State Update

Decisionの結果に従ってTonality Stateを更新します。更新はDecisionおよびUpdaterの責務であり、Observation、Feature、Evidenceから直接行いません。

## モジュール

### DynamicTonalPerspectiveメインパッチ

システムの起点です．`PitchOperator`，`PitchInterpreter_Phase1`，`ScaleDegreeInterpreterExtended_v2`，`CadentialMotionEvidence_Phase1f_v3`，`CounterpointBassGenerator_Phase1g`，`VoiceManager`を統合しています．Frame Originと生成されたBass target degreeは，それぞれ`frameOriginMIDI`と`bassTargetDegree`のsend／receive経由で下流へ渡します．

### Pitch Operator

歌唱入力からObserved Pitchを得るモジュールです．現行パッチでは`fzero~`と`fluid.pitch~`を`pitchOperatorMode`で切り替え，`PitchStream`へ送出します．実マイク確認では`fluid.pitch~`が比較的安定して動作しましたが，方式間の定量比較は未実施です．

### Pitch Interpreter

`PitchInterpreter_Phase1`はObserved Pitchとpitch confidenceを受け取り，Interpreted Pitchを生成します．nearest MIDIの前後3候補を絶対音高誤差とintonation continuityで評価し，同じ遷移候補が`transitionHoldTime`以上継続した場合だけPitch Transitionを確定します．Phase 1ではRelative Tonal Frame，Scale Degree，Harmonyを使用しません．

### Tonality Operator

調性認知に関する処理を担う論理モジュールです。`TonalityOperator.maxpat` は存在しますが、メインパッチからの接続は今回の文字列参照調査では確認できませんでした。Evidence / Decision / State Updateの内部分離は要確認です。

### Harmony Generator

pitchおよび調性に関する情報から、生成声部の音程または制御値を決定するモジュールです。`targetPitchMode`によりmanual MIDI targetとgenerated targetを切り替えます。generated target側にはBass Voice Leadingが統合されています。

### Scale Degree / Cadential Evidence / Counterpoint Bass

`ScaleDegreeInterpreterExtended_v2`はScale Degree Class、Extended Scale Degree、Diatonic Position、旋律のdiatonic step等を生成します。`CadentialMotionEvidence_Phase1f_v3`は終止的進行のtypeとstrengthを生成しますが、Relative Tonal Frameを更新しません。`CounterpointBassGenerator_Phase1g`はこれらを候補評価に使用してBass target degreeを生成します。

### Bass Voice Leading / Bass Part State

`BassVoiceLeading_Phase1h`はE2--E4の候補から`previousPitch`に最も近いregisterを選択します．履歴更新はこのoperatorではなく，`BassPartState_Phase1h`または`HarmonyGenerator_Phase1h`内の外部state loopが担当します．Counterpoint BassのBass MIDI出力は暫定／診断用であり，正式なBass Target Pitchの決定はBass Voice Leadingの責務です．

### Voice Manager

複数のVoice Generatorを管理し、声部生成を割り当てるモジュールです。メインパッチから利用され、`VoiceGenerator` と `HarmonyGenerator` を参照しています。

### Voice Generator

個々の生成声部を担当するモジュールです。音声処理の具体的方式は要確認です。

## 依存方向

概念上の依存方向は、観測から特徴、根拠、判断、状態更新へ向かいます。生成側は確定した状態と制御値を参照し、上流の観測処理やEvidenceを直接書き換えません。

現行ファイルで確認できる参照は次のとおりです。

```text
DynamicTonalPerspective
├── PitchOperator
├── PitchInterpreter_Phase1
│   └── Interpreted Pitch
├── ScaleDegreeInterpreterExtended_v2
├── CadentialMotionEvidence_Phase1f_v3
├── CounterpointBassGenerator_Phase1g
│   └── s bassTargetDegree
├── s frameOriginMIDI
└── VoiceManager
    ├── r bassTargetDegree
    ├── HarmonyGenerator
    │   └── HarmonyGenerator_Phase1h
    │       └── BassVoiceLeading_Phase1h
    │           └── r frameOriginMIDI
    └── VoiceGenerator
```

生成Bassの検証経路は次のとおりです。

```text
ScaleDegreeInterpreterExtended_v2
→ CadentialMotionEvidence_Phase1f_v3
→ CounterpointBassGenerator_Phase1g
→ HarmonyGenerator_Phase1h
→ BassVoiceLeading_Phase1h
```

Pitch InterpretationからScale Degreeまでの入力方向は次のとおりです．

```text
PitchOperator
→ Observed Pitch
→ PitchInterpreter_Phase1
→ Interpreted Pitch
→ ScaleDegreeInterpreterExtended_v2
```

Phase 1eからPhase 1hまでの上記経路はMax 9で基本動作を確認済みです．`TonalityOperator`を含む完全な依存関係は引き続き要確認です．

## 区分

### 現在実装

- Scale Degree InterpretationからBass Voice Leadingまでの実装と統合テストが存在する。
- manual MIDI／generated targetの切替と、generated Bass targetのMIDI出力用テスト経路が存在する。
- Phase 1eからPhase 1hまでのメインパッチ統合基本動作を確認済みである．
- 非整数PitchStreamの同一degree内変動をCadential Motionとして誤検出しないことを確認済みである．
- Observed PitchとInterpreted Pitchを分離し，Interpreted PitchをScale Degree Interpreterへ渡す経路が存在する．
- Pitch Interpreter Phase 1のTemporal Stabilityをmanual入力と実マイク入力で確認済みである．

### 将来実装

- 5層構造をモジュール境界として明示する。
- Frame Maintenance / Adjustment / Reformation EvidenceをDecisionに集約する。
- Updaterを通じてTonality Stateを更新する。
- tonal contextをPitch Interpretation Evidenceとして使用するPhase 2を検討する．

### 未解決

- Tonality Operatorの統合位置
- 状態の所有者、更新タイミング、初期化方法
- Event MarkerとControl Eventの実装範囲
- Pitch Interpretationの有効Observation継続時間とNoteEventUpdate時間モデルの整合
