# SIGMUS147 Paper

このディレクトリは、研究室共通のLaTeXテンプレートリポジトリ [`muse-studio/muselab-pblreports`](https://github.com/muse-studio/muselab-pblreports) をGit subtreeとして `paper/sigmus147/` に取り込んで管理しています。

## SIGMUS147で使用するテンプレート

SIGMUS147では `ipsj/` の情報処理学会（IPSJ）テンプレートを標準として使用します。取り込み元に含まれる `B2-report/`、`B3-report/`、`B4-sotsuron/`、`B4-yoko/` は将来利用する可能性があるため保持します。

現時点の `ipsj/` には配布アーカイブ `ipsj_v4-1.zip` が格納されています。原稿のentry pointと展開・配置方法は、原稿作成時にSIGMUS147の投稿要領を確認して決定してください。

## テンプレートの更新

リポジトリルートで次を実行します。

```bash
git fetch muselab-pblreports main

git subtree pull \
  --prefix=paper/sigmus147 \
  muselab-pblreports main \
  --squash
```

`git subtree pull` はcommitを生成します。実行前にworktreeがcleanであることを確認し、通常運用ではユーザー確認を得てください。研究室共通の改善は、可能であれば先に `muselab-pblreports` 側へ反映してからsubtree pullします。

## LaTeXビルド出力

`latexmkrc` は中間生成物とPDFをDropbox外の次の場所へ出力します。

```text
~/Library/Caches/dtp-build/sigmus147/
```

設定ではローカルユーザー名を埋め込まず、`$ENV{HOME}` を使用しています。LaTeX Workshopの自動ビルドはリポジトリルートの `.vscode/settings.json` で無効化されています。
