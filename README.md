# Dynamic Tonal Perspective / 動的調性視

Dynamic Tonal Perspectiveは、主観的な調性感の推移を実時間で扱い、歌唱から調和的な声部を生成する音楽認知・音楽表現の研究フレームワークです。本リポジトリでは、その応用である「一人合唱インタフェース」のMaxプロトタイプ、論文、設計資料、実験データ、補助スクリプトを一体として管理します。

本プロジェクトは研究途上です。ソースコードは研究内容を可視化する目的で公開されていますが、ライセンス、成果物の公開範囲、外部からのcontributionおよび再利用条件は未確定です。利用を希望する場合は事前に確認してください。

## 現在の開発フェーズ

現在は、operator-based modular architectureによるMaxプロトタイプの設計・実装段階です。起点となるパッチは [`max/DynamicTonalPerspective.maxpat`](max/DynamicTonalPerspective.maxpat) です。実装済み範囲と将来構想の区別は [プロジェクト概要](docs/PROJECT.md) と [アーキテクチャ](docs/ARCHITECTURE.md) を参照してください。

### Phase 1（現在実装の基礎構成）

```text
Microphone
      │
      ▼
PitchOperator
      │
      ▼
HarmonyGenerator
      ├── manual MIDI target（targetPitchMode = 1）
      └── generated target（targetPitchMode = 2）
                │
                ▼
       Bass Voice Leading
                │
           voiceInterval
      │
      ▼
VoiceManager (poly~)
      │
      ▼
VoiceGenerator × N
      │
      ▼
Output
```

Scale Degree InterpretationからCadential Motion Evidence，Counterpoint Bass，Bass Voice Leadingへ至る生成経路は，`DynamicTonalPerspective.maxpat`へ統合されています．`frameOriginMIDI`と`bassTargetDegree`はsend／receive経由で下流へ渡され，`VoiceManager → HarmonyGenerator → HarmonyGenerator_Phase1h → BassVoiceLeading_Phase1h`の基本動作をMax 9で確認済みです．

### Phase 2（構想・要検証）

```text
Microphone
      │
      ▼
VoiceActivityOperator
      │
      ▼
PitchOperator
      │
      ▼
TonalityOperator
      │
      ▼
HarmonyGenerator
      │
      ▼
VoiceManager
      │
      ▼
VoiceGenerator
```

## リポジトリ構成

- `max/`: Max実装パッチ、abstraction、JavaScript、media、preset、実装履歴
- `paper/`: 論文原稿
- `docs/`: 研究概要、設計、開発規約、判断記録、worklog
- `data/`: 原データ、加工済みデータ、再現確認用サンプル
- `scripts/`: 補助スクリプト
- `tests/`: Max統合テストを含む検証資材とテスト方針

## ブランチ運用

`main` を安定版、`develop` を日常開発版とし、必要に応じてfeatureブランチを使用します。詳細は [開発ガイド](docs/DEVELOPMENT.md) を参照してください。

## ドキュメント

- [研究目的と概念](docs/PROJECT.md)
- [システム構成](docs/ARCHITECTURE.md)
- [開発環境と運用](docs/DEVELOPMENT.md)
- [命名規則](docs/NAMING.md)
- [設計判断](docs/DECISIONS.md)
- [作業ログ](docs/worklogs/)
