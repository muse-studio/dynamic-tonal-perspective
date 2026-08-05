# Architecture

## 処理構造

```text
Observation → Feature Extraction → Evidence → Decision → State Update
```

### Observation

マイク入力やイベントから、後段が扱う観測を取得します。観測自体は調性状態を更新しません。

### Feature Extraction

観測からpitch、voice activity、イベント境界などの特徴を抽出します。現在の `PitchOperator.maxpat` がどこまでを担うかは要確認です。

### Evidence

特徴から、Relative Tonal Frameの維持・調整・再形成を支持する根拠を生成します。Evidence層は状態を更新しません。

### Decision

複数のEvidenceを評価し、状態を維持するか、調整するか、再形成するかを決定します。

### State Update

Decisionの結果に従ってTonality Stateを更新します。更新はDecisionおよびUpdaterの責務であり、Observation、Feature、Evidenceから直接行いません。

## モジュール

### DynamicTonalPerspectiveメインパッチ

システムの起点です。現行パッチの文字列参照では `PitchOperator` と `VoiceManager` を利用しています。全体の信号・メッセージ経路は要確認です。

### Pitch Operator

歌唱入力からpitchに関する観測または特徴を得るモジュールです。ObservationとFeature Extractionの境界は要確認です。

### Tonality Operator

調性認知に関する処理を担う論理モジュールです。`TonalityOperator.maxpat` は存在しますが、メインパッチからの接続は今回の文字列参照調査では確認できませんでした。Evidence / Decision / State Updateの内部分離は要確認です。

### Harmony Generator

pitchおよび調性に関する情報から、生成声部の音程または制御値を決定するモジュールです。現行では `VoiceManager.maxpat` 内の文字列参照を確認しています。詳細仕様は要確認です。

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
└── VoiceManager
    ├── HarmonyGenerator
    └── VoiceGenerator
```

`TonalityOperator` を含む完全な依存関係は要確認です。

## 区分

### 現在実装

- 6個のMaxパッチが存在する。
- 上記の文字列参照関係が確認できる。

### 将来実装

- 5層構造をモジュール境界として明示する。
- Frame Maintenance / Adjustment / Reformation EvidenceをDecisionに集約する。
- Updaterを通じてTonality Stateを更新する。

### 未解決

- 現行パッチのinlet / outletおよびメッセージ仕様
- Tonality Operatorの統合位置
- 状態の所有者、更新タイミング、初期化方法
- Event MarkerとControl Eventの実装範囲
