# Naming

## 基本規則

- 概念名・モジュール名はPascalCaseを基本とする。
- Max abstractionには、責務が分かる名称を付ける。
- 状態・値はcamelCaseを基本とする。
- documentationでは、既存の研究用語を優先する。
- 既存実装との対応が未確定な名称を一括改名しない。

## 標準用語

- Dynamic Tonal Perspective
- Subjective Tonic
- Relative Tonal Frame
- Tonality State
- Pitch Observation
- Pitch Feature Extractor
- Frame Maintenance Evidence
- Frame Adjustment Evidence
- Frame Reformation Evidence
- Frame Decision
- Frame Updater
- Event Marker
- Control Event

## 表記揺れ

- `TonalOperator` / `Tonality Operator` / `TonalityOperator`: 依頼時の想定ファイル名には `TonalOperator.maxpat` がある一方、現在の実在ファイルは `TonalityOperator.maxpat` です。概念名には `Tonality Operator` を用います。対応関係が確定するまで一括改名しません。
- `PitchOperator` / `Pitch Operator`: ファイル・Max object名には前者、概念や本文には後者を用いる方針ですが、既存実装への適用範囲は要確認です。

新しい表記揺れを発見した場合は、置換前にここへ記録し、実装・論文・研究概念への影響を確認します。
