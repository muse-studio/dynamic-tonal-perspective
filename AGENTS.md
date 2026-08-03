# AGENTS.md

## このリポジトリについて

このリポジトリは、Dynamic Tonal Perspective（動的調性視）と一人合唱インタフェースに関する研究開発用リポジトリである。AIエージェントは、研究資料・実装・実験データの来歴と整合性を優先して作業すること。

## ブランチとGit操作

- `main` は安定版、`develop` は日常開発版とする。
- 通常作業は `develop` または目的に対応するfeatureブランチで行う。
- 作業開始前に現在のブランチ、`git status`、関連ファイルを確認する。
- 既存ファイルや未コミット変更を勝手に削除、置換、破棄、stashしない。
- ユーザーの明示的な依頼なしにcommit、push、merge、rebase、tag作成を行わない。
- 作業終了時に `git status` と差分概要を報告する。

## Maxパッチ

- Maxパッチの内部構造を無断で大規模変更しない。
- `.maxpat` をJSONとして機械的に全面整形しない。
- 変更前に、参照先を含む関連ファイルを確認する。
- 既存パッチを別内容で上書きしたり、無断で再生成したりしない。
- ローカル環境固有の絶対パスをリポジトリへ保存しない。

## アーキテクチャ

- 設計文書と実装の責務を一致させる。
- Observation / Feature / Evidence / Decision / State Update の5層構造を維持する。
- Evidence層は観測と特徴から根拠を生成するが、状態を書き換えない。
- 状態更新はDecisionおよびUpdaterの責務とする。
- 実装で確認できない事項は断定せず、「要確認」「未確定」「要検証」と記録する。

## Repository bootstrap exceptions

リポジトリ初期構築時に限り、ユーザーが明示的に許可した場合は次を実施してよい。

- git subtree add
- git subtree pull
- 初期ディレクトリ整理
- 初期テンプレート導入
- 初期化commit

ただし、その都度ユーザーの明示的な許可を得ること。
通常の開発では commit / merge / rebase / push を自動実行してはならない。

## 文書・データ・生成物

- LaTeX中間生成物をリポジトリへ含めない。
- 個人情報、機微情報、巨大ファイルをGitへ追加しない。
- 命名と用語は [docs/NAMING.md](docs/NAMING.md) に従う。
- 設計判断は [docs/DECISIONS.md](docs/DECISIONS.md) に記録する。

## Worklog

各作業セッションで、コード変更の有無にかかわらず、次のworklogを必ず作成または追記する。

`docs/worklogs/YYYY-MM-DD_<short-task-name>.md`

同日の同名作業が複数ある場合は、`YYYY-MM-DD_<short-task-name>_02.md` のように連番を付ける。

worklogには最低限、次を含める。

- Summary
- User Request
- Starting State
- Changes Made
- Files Created
- Files Modified
- Files Moved
- Validation Performed
- Git Diff Summary
- Unresolved Issues
- Suggested Next Step

調査だけでファイルを変更しなかった作業も、調査結果をworklogへ記録する。
