# Development

## 開発環境

- Cycling '74 Max 9
- Git
- 論文作業を行う場合はLaTeX環境（具体的なdistributionとバージョンは要確認）

外部packageの必要性は現時点で未確認です。新しい依存関係を追加する場合は、目的と再現手順を文書化してください。

## Maxでの基本的な開き方

Maxから `max/DynamicTonalPerspective.maxpat` を開きます．関連パッチは同じ `max/` 内にあります．MaxのSearch Pathへ`max/`を追加し，Subfoldersを有効にしてください．`max/js/`内のJavaScriptは，`js` objectでsubdirectoryを付けずにbasename（例：`js BassVoiceLeading_Phase1h_stateless.js`）を指定します．ファイルを移動する前に，Search Pathと参照への影響を確認してください．

## ブランチ運用

`main` は安定版、`develop` は日常開発版です。通常は `develop` または適切なfeatureブランチで作業します。commitとpushは、差分と検証結果を示し、ユーザーの確認後に行います。

## ファイル追加時のルール

- 変更前に関連ファイルと既存の命名を確認する。
- 既存ファイルを無断で置換・削除しない。
- ローカル環境固有の絶対パスを保存しない。
- 作業内容を `docs/worklogs/` に記録する。
- MaxパッチをJSON formatterで全面整形しない。

## 配置規則

- Max abstraction: `max/abstractions/`。既存パッチと同階層でなければ解決できない参照は、移動前に確認する。
- JavaScript: `max/js/`．Max objectではSearch Pathによるbasename解決を使用する．
- media: `max/media/`。研究上必要な追跡対象と一時生成物を区別する。
- preset: `max/presets/`。
- 原データ: `data/raw/`。原則として変更しない。
- 加工済みデータ: `data/processed/`。
- 再現確認用サンプル: `data/samples/`。

個人情報、機微情報、巨大ファイルはGitに含めません。音声・動画は一律除外せず、公開可能性と再現性を個別に判断します。

## Dropbox環境

このリポジトリはDropbox上で作業しています。作業前に対象ファイルがローカルで利用可能な状態になっていることを確認してください。同期中のファイルに対する同時編集や、別端末との競合に注意してください。

## LaTeX

LaTeXのビルド生成物はリポジトリおよびDropbox外へ置きます。予定するビルド先は `~/Library/Caches/dtp-build/` です。これは運用上の表記であり、今回はローカル絶対パスを設定ファイルへ埋め込みません。

VS Code / LaTeX Workshopの自動ビルドは無効化する方針です。既存設定の変更は、内容と影響を確認したうえで別作業として行います。

## Git操作時の注意

- 作業前後に `git status` を確認する。
- 移動には可能な限り `git mv` を使い、内容同一性をhashまたはdiffで確認する。
- 未コミット変更を勝手に破棄、stash、commitしない。
- LaTeX中間生成物や一時音声をstageしない。
- commit、push、merge、rebase、tag作成はユーザーの明示的な確認後に行う。
