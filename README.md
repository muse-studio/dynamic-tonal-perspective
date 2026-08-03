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

- `max/`: Maxパッチ、abstraction、media、preset
- `paper/`: 論文原稿
- `docs/`: 研究概要、設計、開発規約、判断記録、worklog
- `data/`: 原データ、加工済みデータ、再現確認用サンプル
- `scripts/`: 補助スクリプト
- `tests/`: 検証資材とテスト方針

## ブランチ運用

`main` を安定版、`develop` を日常開発版とし、必要に応じてfeatureブランチを使用します。詳細は [開発ガイド](docs/DEVELOPMENT.md) を参照してください。

## ドキュメント

- [研究目的と概念](docs/PROJECT.md)
- [システム構成](docs/ARCHITECTURE.md)
- [開発環境と運用](docs/DEVELOPMENT.md)
- [命名規則](docs/NAMING.md)
- [設計判断](docs/DECISIONS.md)
- [作業ログ](docs/worklogs/)
