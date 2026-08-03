# Repository Initial Structure

## Summary

研究プロジェクトの共通ディレクトリと文書を初期整備した。既存Maxパッチの内部内容は変更していない。

## Requested Work

Max実装、論文、設計資料、実験データ、スクリプトを一つの研究プロジェクトとして管理する構成を作り、共通Markdown、Git除外設定、作業ログを用意すること。

## Pre-work State

- Branch: `develop`
- `git status --short`: 出力なし
- ルートには `.vscode/`、`README.md`、`max/` が存在した。
- Maxパッチはすべて既に `max/` にあり、6ファイルだった。
- 実在名は `TonalityOperator.maxpat` であり、`TonalOperator.maxpat` は存在しなかった。
- 移動前パスとして調査・記録したパッチは、`max/DynamicTonalPerspective.maxpat`、`max/PitchOperator.maxpat`、`max/TonalityOperator.maxpat`、`max/HarmonyGenerator.maxpat`、`max/VoiceGenerator.maxpat`、`max/VoiceManager.maxpat` である。いずれも既に目的の配置だった。

## Changes Made

- 共通ディレクトリ構成を作成した。
- 既存READMEの研究概要、公開可視性に関する記述、Phase 1/2の構成を統合した。
- 共通規則、研究概要、アーキテクチャ、開発、命名、設計判断を文書化した。
- Git除外設定を追加した。

## Files Created

- `AGENTS.md`
- `CHANGELOG.md`
- `.gitignore`
- `paper/README.md`
- `docs/README.md`
- `docs/PROJECT.md`
- `docs/ARCHITECTURE.md`
- `docs/DEVELOPMENT.md`
- `docs/NAMING.md`
- `docs/DECISIONS.md`
- `data/README.md`
- `scripts/README.md`
- `tests/README.md`
- 空ディレクトリ保持用の `.gitkeep`
- 本worklog

## Files Moved

なし。対象Maxパッチは作業開始時点で既に `max/` に配置されていた。

## Files Modified

- `README.md`
- `max/README.md`

## Decisions

- 実在ファイル名 `TonalityOperator.maxpat` を維持した。
- 実装で確認できない構造は「要確認」「未確定」「要検証」とした。
- 既存の追跡済み `.vscode/` ファイルは削除・変更しなかった。

## Validation

- `git status --short`、`git diff --stat`、`git diff --name-status`、`git diff --check` を実行した。
- 6個の `.maxpat` がすべて `max/` に存在することを確認した。
- 作業前後の各 `.maxpat` のSHA-256が一致した。
- `.maxpat` だけを対象とする `git diff` に出力がないことを確認した。
- `.maxpat` の同名重複がないことを確認した。
- Markdown内の相対リンクを検査し、参照切れがないことを確認した。
- LaTeX中間生成物およびPDFが追跡対象にないことを確認した。
- 既存 `.vscode/settings.json` がLaTeX Workshopの自動ビルドを `never` にしていることを確認した。
- 既存 `.vscode/latexmkrc` が `$ENV{HOME}/Library/Caches/dtp-build/sigmus147` を出力先としていることを確認した。
- MaxまたはLaTeXの実行、PDF生成は行っていない。

## Git Status

- Modified: `README.md`、`max/README.md`
- Untracked: `.gitignore`、`AGENTS.md`、`CHANGELOG.md`、`data/`、`docs/`、`max/abstractions/`、`max/media/`、`max/presets/`、`paper/`、`scripts/`、`tests/`
- `git diff --stat`: 追跡済み2ファイルに47 insertions、8 deletions。未追跡ファイルはこの統計に含まれない。
- `git diff --name-status`: `README.md` と `max/README.md` がmodified。未追跡ファイルはこの一覧に含まれない。

## Git Diff Summary

既存のMaxパッチ、`.vscode` 設定、`max/.gitkeep` は変更していない。既存README 2点を拡充し、共通文書、除外設定、ディレクトリ保持用ファイルを新規作成した。

## Remaining Issues

- Max上での実行確認は今回の作業範囲外。
- `TonalityOperator.maxpat` の現行接続と完全なモジュール責務は要確認。
- `.vscode/` は新しい `.gitignore` の対象だが、既存の2ファイルは追跡済みであるため引き続き追跡される。今後の扱いは未決定。

## Next Suggested Step

Maxでメインパッチを開き、abstraction解決、信号経路、各モジュールのinlet / outlet仕様を確認する。
