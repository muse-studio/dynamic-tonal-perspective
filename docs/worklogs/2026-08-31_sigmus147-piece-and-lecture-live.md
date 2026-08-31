# SIGMUS147 Piece & Lecture Live Version History and Tag

## Summary

SIGMUS147 Piece & Lectureで実際に使用したDynamic Tonal Perspective／一人合唱インタフェースの実装状態をGit履歴とMaxパッチの参照関係から調査し，本番実施履歴を作成した．履歴メモだけをcommitし，そのcommitに本番稼働版のannotated tagを付ける．

## User Request

- 2026-08-31のSIGMUS147 Piece & Lecture本番稼働版を特定する．
- 本番実績，音響上の問題，運用改善，本番構成を既存規則に従って履歴化する．
- 履歴メモだけを`Document SIGMUS147 Piece and Lecture live version`でcommitする．
- commitへannotated tag `sigmus147-pl-2026-08-31`を付ける．
- pushしない．

## Starting State

- ブランチ：`develop`
- HEAD：`6b2039a625cd338b813624b6e7c0446e70a51744`（`mus147発表版`）
- `origin/develop`より3 commit ahead．
- 開始時の作業ツリー：clean．
- 既存tag：`paper-sigmus147-submit`，`v0.1.0`．指定tagは未作成．
- 履歴メモの配置：`max/history/YYYY-MM-DD-<task>.md`．

## Changes Made

- Git履歴，既存tag，関連commitの変更ファイルを確認した．
- Phase 1h Bass Voice Leading，Pitch Interpreter Phase 1，Initial Frame Interpreter Phase 1，Inner Voices Phase 1iの既存履歴を照合した．
- `DynamicTonalPerspective.maxpat`，`DynamicTonalPerspective_Phase1i.maxpat`，各variant，`VoiceManager_Phase1i.maxpat`，`HarmonyGenerator_Phase1h.maxpat`，`RoamingSheep.maxpat`から主要abstraction／JavaScript参照を確認した．
- 本番実装commitを`6b2039a625cd338b813624b6e7c0446e70a51744`と特定した．
- `max/history/2026-08-31-sigmus147-piece-and-lecture-live.md`に本番実績，問題，運用改善，構成，既存履歴との時系列，制約を記録した．
- 実装ファイル，Maxパッチ，JavaScript，スライド，音源は変更していない．

## Files Created

- `max/history/2026-08-31-sigmus147-piece-and-lecture-live.md`
- `docs/worklogs/2026-08-31_sigmus147-piece-and-lecture-live.md`

## Files Modified

- なし．

## Files Moved

- なし．

## Validation Performed

- `git status --short --branch`，`git log --oneline --decorate -15`，`git tag --list`を確認．
- 関連`.maxpat`のobject textとJavaScript filenameを`jq`／`rg`で抽出し，参照関係を照合．
- `DynamicTonalPerspective_Phase1i.maxpat`が`VoiceManager_Phase1i`と`ObservedPitchValidityGate_Phase1i`を参照することを確認．
- `VoiceManager_Phase1i.maxpat`が`InnerVoiceTargets_Phase1i_diatonic36.js`，`VoiceGenerator`，`HarmonyGenerator_Phase1h`を参照することを確認．
- `RoamingSheep.maxpat`が`SingerPitchCapture`と`AccompanimentPitchShifter`を参照することを確認．
- `_150ms`／`_150ms_initfix`／Phase 1j variantが本番メインの参照先でないことを確認．
- 履歴メモの`git diff --check`，stage対象，commit内容，tag type，tag参照先，実装差分をcommit前後に確認する．

## Git Diff Summary

- commit対象：`max/history/2026-08-31-sigmus147-piece-and-lecture-live.md`の新規追加のみ．
- 本worklogはAGENTS.mdに従って作成するが，ユーザーの「履歴メモだけをcommit」指定に従いcommit対象から除外する．
- 履歴commit：`126e15a185091eebc0843ce7370d80eddca762a9`．
- annotated tag：`sigmus147-pl-2026-08-31`．履歴commit `126e15a185091eebc0843ce7370d80eddca762a9`を参照する．
- pushは実施していない．

## Unresolved Issues

- 本番のnoise原因は未確定．
- 本番中の全中間値とMax GUIの画面記録はリポジトリ内にない．
- 本worklogはcommit対象外の未追跡ファイルとして作業終了時に残る．

## Suggested Next Step

- tagと`develop`ブランチを必要に応じてremoteへpushする．
- 次回本番前にAudio Device，入出力level，Pitch入力，DSP，reset後状態のchecklistを実装／運用する．
