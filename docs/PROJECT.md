# Project

## 研究背景

歌唱中の調性感は、固定された調だけでは説明できず、演奏者や聴取者が知覚する中心音や音程関係の推移として扱う必要があります。本研究は、この主観的かつ時間的に変化する調性認知を、実時間の音楽システムで利用可能な構造として記述することを背景とします。具体的な認知モデルと評価方法は要検証です。

## 研究目的

歌唱から得られる観測をもとに主観的な調性状態を推定・更新し、その状態に応じた複数声部を生成する枠組みを設計します。最終的な評価指標、実験条件、適用範囲は未確定です。

## 主要概念

### Dynamic Tonal Perspective

時間とともに変化する主観的な調性の見え方を表す研究概念です。形式的定義は要検証です。

### Subjective Tonic

演奏者またはシステムが、その時点で主観的な中心として扱う音です。推定方法と表現形式は未確定です。

### Relative Tonal Frame

Subjective Tonicを基準として音高・音程・和声的関係を相対的に扱う枠組みです。状態遷移の条件は要検証です。

### Tonality State

ある時点の調性認知をシステム内部で表す状態です。保持すべき変数と初期値は未確定です。

### Tonality Operator

調性に関する観測、根拠、判断、状態更新を扱う論理的なモジュール概念です。現在のファイル名 `TonalityOperator.maxpat` と概念名の対応、および内部責務の詳細は要確認です。

### 一人合唱インタフェース

一人の歌唱入力から複数の調和的な声部を実時間生成し、単独の演奏者が合唱的な表現を行うためのインタフェースです。Dynamic Tonal Perspectiveは、その声部生成を調性認知の推移に応じて制御するための研究基盤に位置づけられます。

## 現在フェーズ

operator-based modular architectureによるMaxプロトタイプの設計・実装段階です。研究概念と実装モジュールの対応を整理しながら、基本的な歌唱入力から声部出力までの経路を構築しています。

## 現在実装

リポジトリには、メインパッチ、Pitch Operator、Tonality Operator、Harmony Generator、Voice Generator、Voice Managerに相当する6個のMaxパッチがあります。文字列参照から、メインパッチによる `PitchOperator` と `VoiceManager` の利用、および `VoiceManager` による `VoiceGenerator` と `HarmonyGenerator` の利用を確認できます。各パッチの完全な実行時責務は要確認です。

## 将来実装

Voice Activity Operator、調性推定を含むEvidence / Decision / State Updateの明示的な分離、およびDynamic Tonal Perspectiveに基づく声部生成の統合を候補とします。実装順序と仕様は未確定です。

## 未解決課題

- Subjective TonicとTonality Stateの形式的定義
- EvidenceからDecisionへ至る判定条件
- Relative Tonal Frameの維持・調整・再形成条件
- `TonalityOperator.maxpat` の現行接続と責務の確認
- レイテンシ、音楽的妥当性、演奏可能性の評価方法
- 実験データと成果物の公開方針
