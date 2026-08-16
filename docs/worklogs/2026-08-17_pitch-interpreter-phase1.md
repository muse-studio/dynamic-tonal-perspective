# Worklog: Pitch Interpreter Phase 1の整理とコミット

## Summary

Observed PitchとInterpreted Pitchを分離するPitch Interpreter Phase 1の実装を確認し，現在の動作，設計判断，手動・実マイク確認結果，Phase 2への課題を文書化して`develop`へコミットする．

## User Request

現在動作しているPitch Interpreter Phase 1を大きく変更せず，関連する未コミット変更だけを検証・記録・コミットする．Relative Tonal Frameを用いるPhase 2実装は行わない．

## Starting State

- Branch：`develop`
- Modified：`max/DynamicTonalPerspective.maxpat`，`max/PitchOperator.maxpat`，`max/ScaleDegreeInterpreterExtended_v2.maxpat`
- Untracked：`max/PitchInterpreter_Phase1.maxpat`，`max/js/PitchInterpreter_Phase1.js`
- 作業開始時の未コミット項目はすべてPitch Interpreter Phase 1に関係していた．

## Changes Made

- Pitch InterpreterのJS構文，Max patchline，file referenceを検証した．
- JS inlet 1へ接続される公開inletのassist文字列を`current pitch`から`pitch confidence`へ訂正した．ロジックとpatchlineは変更していない．
- 59.54→71.20のCandidate SelectionとTemporal StabilityをJavaScriptで再現した．
- 既存実装を変更せず，実装履歴を新規作成した．
- README，Architecture，Project，Naming，Decisions，Changelogを現在実装へ同期した．

## Files Created

- `max/PitchInterpreter_Phase1.maxpat`
- `max/js/PitchInterpreter_Phase1.js`
- `max/history/2026-08-17-pitch-interpreter-phase1.md`
- `docs/worklogs/2026-08-17_pitch-interpreter-phase1.md`

## Files Modified

- `max/DynamicTonalPerspective.maxpat`
- `max/PitchOperator.maxpat`
- `max/ScaleDegreeInterpreterExtended_v2.maxpat`
- `README.md`
- `CHANGELOG.md`
- `docs/ARCHITECTURE.md`
- `docs/DECISIONS.md`
- `docs/NAMING.md`
- `docs/PROJECT.md`
- `max/README.md`

## Files Moved

- なし．

## Validation Performed

- 対象Maxパッチ4件のJSON，object ID，patchline endpoint／index：PASS
- `node --check max/js/PitchInterpreter_Phase1.js`：PASS
- `PitchInterpreter_Phase1.js`のMax Search Path上の実在：PASS
- `wAbsolute = 1.0`，`wContinuity = 2.0`，hold time 30 msで59.54→71.20を再現し，nearest MIDI 60→71，selected candidate／Interpreted Pitch 72，transition確定をassert：PASS
- ユーザーによるmanual／MIDIテストとTemporal Stability確認：PASS
- `fluid.pitch~`による実マイク歌唱：概ね動作確認済み，方式間の定量比較は未実施

## Git Diff Summary

- Pitch Interpreter Phase 1のabstraction／JavaScript追加，Pitch Operatorの入力方式切替，メインパッチ統合，Scale Degree InterpreterのInterpreted Pitch入力化，関連文書更新．

## Unresolved Issues

- 実コードの`selectedScore`は正値errorを加算したcostを最小化する．仕様記述上のscore符号と混同しないよう実装履歴で明示した．
- tonal contextをPitch Interpretationへfeedbackしないため，実歌唱の71.xを72へ解釈しにくい場合がある．
- Temporal StabilityはPitch更新イベント到着時の経過時間を評価し，有効Observation継続時間を積算しない．

## Suggested Next Step

Phase 1の挙動を固定したうえで，NoteEventUpdateの時間モデルとtonal contextをEvidenceとして扱うPhase 2設計を別作業で検討する．
