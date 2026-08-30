# Worklog: Inner Voices Phase 1iの変更履歴とコミット

## Summary

Phase 1iの内声生成，150 ms voice-activity gate，初回Pitch初期化修正の試作ファイルを調査し，到達版と未接続variantを区別して変更履歴へ記録する．関連文書とChangelogを更新し，静的検証後に`develop`へコミットする．

## User Request

現在の変更について変更履歴を作成し，コミットする．

## Starting State

- Branch：`develop`
- `develop` は`origin/develop`より1 commit ahead．
- Untracked：Phase 1i／1j Maxパッチ5件，Inner Voice Target JavaScript 3件．
- 追跡済みファイルの未コミット変更はなかった．

## Changes Made

- Phase 1iメインパッチと現行メインパッチの機能差分を確認した．
- 3種類のInner Voice Targetアルゴリズムを比較し，`diatonic36`が現行`VoiceManager_Phase1i`の参照先であることを確認した．
- 150 ms／initfix variantの未接続箇所を特定し，完成機能と区別して履歴化した．
- `CHANGELOG.md`，`docs/ARCHITECTURE.md`，`docs/DECISIONS.md`，`max/README.md`をPhase 1iの現在実装に同期した．

## Files Created

- `max/DynamicTonalPerspective_Phase1i.maxpat`
- `max/DynamicTonalPerspective_Phase1i_150ms.maxpat`
- `max/DynamicTonalPerspective_Phase1i_150ms_initfix.maxpat`
- `max/DynamicTonalPerspective_Phase1j_150ms.maxpat`
- `max/VoiceManager_Phase1i.maxpat`
- `max/js/InnerVoiceTargets_Phase1i.js`
- `max/js/InnerVoiceTargets_Phase1i_voiceorder.js`
- `max/js/InnerVoiceTargets_Phase1i_diatonic36.js`
- `max/history/2026-08-31-inner-voices-phase1i.md`
- `docs/worklogs/2026-08-31_inner-voices-phase1i.md`

## Files Modified

- `CHANGELOG.md`
- `docs/ARCHITECTURE.md`
- `docs/DECISIONS.md`
- `max/README.md`

## Files Moved

- なし．

## Validation Performed

- `git diff --check`：PASS
- Maxパッチ5件のJSON parse：PASS
- Maxパッチ内のobject ID，patchline endpoint／inlet／outlet index：PASS
- JavaScript 3件の`node --check`：PASS
- Inner Voice Targetのロジック再現テスト：PASS
- Maxパッチが参照する`InnerVoiceTargets_Phase1i_diatonic36.js`の実在：PASS
- 150 ms／initfixの完全な接続：FAIL（未接続試作であることを変更履歴に記録）
- Max 9実機テスト：未実施

## Git Diff Summary

- Phase 1iの内声2声＋既存Bass生成経路，Inner Voice Targetの比較実装，150 ms／initfix試作variant，関連する履歴・設計文書を追加した．

## Unresolved Issues

- `pitchInputGate`の受信側がなく，150 ms gateはPitch Interpreter入力を実際に制御しない．
- initfixの`r interpretedPitch`に対応するsendは確認できない．
- `VoiceManager_Phase1i`の`currentPitch`はObserved Pitch経路であり，`diatonic36`JavaScriptコメントのLead Interpreted Pitchと一致しない．
- 内声の和声規則，voice leading，gain，音域は実機評価していない．

## Suggested Next Step

Max 9で`DynamicTonalPerspective_Phase1i.maxpat`の内声2声とBassの発音・gainを確認し，次に`pitchInputGate`をPitch Interpreter直前に実際に接続した独立修正を作成する．
