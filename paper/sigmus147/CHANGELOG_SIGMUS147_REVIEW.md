# SIGMUS147 Paper Review Changelog

Date: 2026-08-04

## Scope

SIGMUS147予稿全体について，研究上の位置付け，文章の明瞭さ，節間の接続，用語の一貫性をレビューした．既存の節構成を保ちつつ，依頼された関連研究節を追加した．実装仕様および新規参考文献は追加していない．

## Textual Changes

### Abstract

- 固定的な調名を求める研究ではなく，主観的調性感を扱うデモであることを明示した．
- Relative Tonal Frame（RTF）をSubjective Tonic基準の内部表現として定義した．
- 任意の開始音高，RTFに基づく合唱生成，体験を通した議論の関係を簡潔に整理した．
- 日本語の句読点をIPSJ表記の「，」「．」へ統一した．

### はじめに

- 調推定（key estimation）を，楽曲全体または局所区間にkey labelを付与する課題として説明した．
- 従来の調推定が楽曲を外部から記述するのに対し，本研究は歌唱者の内的な調性状態を継続的に扱うという差異を明示した．
- 主観的調性感，Subjective Tonic，RTFの関係を導入段階で示した．
- 本研究の目的を，一つのkey labelの推定ではなく，RTFの保持・更新と一人合唱への利用として整理した．
- 元本文にあった引用括弧の不整合を解消し，重複するデモ説明を圧縮した．

### 関連研究

- 既存の節構成を保ったまま，「はじめに」と概念説明の間に関連研究節を追加した．
- key estimationと，その背景となる調性階層および時間的に変化する調的組織を簡潔に整理した．
- Spiral ArrayとTonal Pitch Spaceが扱う調的要素間の空間・距離表現を整理した．
- これらに対し，RTFは個々の歌唱者のSubjective Tonalityを保持・更新するための相対的な内部表現であると位置付けた．
- HarmoSoloとの一人歌唱・リアルタイムハーモナイズという文脈上の関係と，本研究の焦点の差を記した．

### 主観的調性感とRelative Tonal Frame

- Subjective Tonalityを認知的概念，RTFをシステム内で操作する状態表現として明確に区別した．
- RTFをSubjective Tonicを原点とする相対調性座標系として簡潔に説明した．
- 異なる開始音高を同じ相対関係として扱う説明を短くした．
- 主観的調性感を直接観測・断定せず，RTFを推定・更新するという記述へ統一した．

### システム構成

- 各モジュールの列挙に，観測，RTF更新，声部決定，音声生成という処理順を加えた．
- RTFを「主観的調性感の内部表現」であり，後段が参照する調性状態として一貫して記述した．
- Tonality Operatorの記述を，直接観測できない主観的調性感ではなく，歌唱を説明するRTFを保持するという慎重な表現へ改めた．
- Evidenceの算出，判断，状態更新を区別する設計意図を明確にした．
- Harmony GeneratorからVoice Generatorへの接続を保ちつつ，RTFが生成ハーモニーへ反映される関係を明示した．

### デモ展示

- 固定的なkey labelではなく，Subjective Tonicからの相対関係を表すRTFに基づく体験であることを明示した．
- 異なる開始音高，RTFの可視化，生成ハーモニーの観察という展示の流れを整理した．
- 主観的調性感そのものを直接表示するかのような表現を避け，その内部表現であるRTFを可視化する記述へ修正した．

### おわりに

- 従来のkey estimationとの差異を再提示した．
- Subjective TonalityとRTFの関係，RTFと生成合唱の対応を本稿の要点としてまとめた．

### Length and Style

- 関連研究と参考文献を加えた初稿は3ページとなったため，研究上の対比と引用を保ちながら全節の重複を削減した．
- 最終版は，参考文献4件と既存図2点を含めて2ページである．
- 既存のsection / subsection構成は維持し，依頼された「関連研究」sectionだけを追加した．
- 新しい実装詳細，評価結果，性能主張は追加していない．

## Newly Used References

以下はすべて既存の `sigmus147.bib` に収録済みであり，今回BibTeX entryは追加していない．

- `Krumhansl1982`: tone profile，調性階層，音楽進行に伴う知覚的な調的組織の変化に関する背景として使用した．
- `Chew2014`: Spiral Arrayによるpitch，chord，keyの空間的・計算論的表現として使用した．
- `TPS`: LerdahlのTonal Pitch Spaceによる階層的な調的距離の理論として使用した．
- `tokunaga2026`: 一人アカペラのリアルタイムハーモナイズインタフェースHarmoSoloとの研究文脈の接続に使用した．

## Bibliography Changes

- `tokunaga2026` の日本語著者名を，IPSJのBibTeX styleで姓名が逆転しないliteral name形式へ修正した．
- `tokunaga2026` の参照先を `note` fieldから `url` fieldへ移した．`note` は既存のIPSJ styleで未定義の `\newblock` を出力し，LaTeX buildを停止させていた．
- placeholder citationは追加していない．

## Validation

- `platex`，`upbibtex`，`dvipdfmx` を用いてDropbox外の `~/Library/Caches/dtp-build/sigmus147/` へビルドした．
- 最終PDFはA4，2ページである．
- 未定義citation，未定義reference，overfull / underfull boxはない．
- 既存package構成に由来する `pdfpages`，`caption`，Kanji font shapeおよびPGF specialの警告は残る．
