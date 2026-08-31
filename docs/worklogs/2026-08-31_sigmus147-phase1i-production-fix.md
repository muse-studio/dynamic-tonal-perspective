# SIGMUS147 Phase 1i Production Fix

## Summary

SIGMUS147本番用の`DynamicTonalPerspective_Phase1i.maxpat`について，Observed Pitch／Interpreted Pitch，Mic用150 ms validity gate，初回Interpreted Pitch capture，Initial Frame生成，resetの実配線をPhase 1確定設計に揃えた．和声アルゴリズムと`InitialFrameInterpreter_Phase1.js`の計算ロジックは変更していない．

## User Request

- 新機能追加ではなく，Phase 1iの混在したPitch／Frame初期化経路を確定設計へ戻す．
- MicのvoiceActive 0→1後150 msのみObserved PitchをPitch Interpreterへ通し，0で即時close／delay cancelとする．
- MIDI keyboard modeは150 ms制約をbypassする．
- `initialInterpretedPitch`はPitch Interpreterの実outletからfirst-only captureする．
- reset時にInterpretation State，first-only gate，Initial Frame保持値を同一セッション初期化に統合する．
- `currentPitch`のObserved Pitchとしての意味を維持し，音楽的判断にはInterpreted Pitchを使う．
- commitせず，レビュー可能な状態で止める．

## Starting State

- ブランチ：`develop`．
- 開始時の`git status --short`：出力なし（clean）．
- 本番候補：`max/DynamicTonalPerspective_Phase1i.maxpat`．
- 既存の`_150ms`／`_150ms_initfix`／Phase 1j variantは，gate制御値の実Pitch経路への未接続と，対応sendのない`r interpretedPitch`が記録済みのため変更対象としなかった．
- 参照した履歴：`max/history/2026-08-17-pitch-interpreter-phase1.md`，`max/history/2026-08-31-initial-frame-interpreter-phase1.md`，`max/history/2026-08-31-inner-voices-phase1i.md`．

## Changes Made

### 1. 変更ファイル一覧

- `max/DynamicTonalPerspective_Phase1i.maxpat`
- `max/PitchOperator.maxpat`
- `max/VoiceManager_Phase1i.maxpat`
- `max/ObservedPitchValidityGate_Phase1i.maxpat`（新規abstraction）
- `docs/worklogs/2026-08-31_sigmus147-phase1i-production-fix.md`（本ログ）

### 2. 変更した実配線

#### Mic／Observed Pitch → Pitch Interpreter → Scale Degree Interpreter

```text
DynamicTonalPerspective_Phase1i::obj-2 ezadc~ outlet 0
→ obj-162 biquad~ inlet 0
→ obj-18 PitchOperator inlet 0

PitchOperator::obj-28 gate~ 2 outlet 1
→ obj-15 fluid.pitch~ outlet 0
→ obj-16 flonum
→ obj-9 gate data inlet 1
→ obj-22 flonum
→ obj-35 s PitchStream

PitchOperator::obj-28 gate~ 2 outlet 1
→ obj-4 meter~
→ obj-13 flonum
→ obj-19 > threshold
→ obj-21 toggle
├→ obj-9 gate control inlet 0（既存の音量validity gate）
└→ obj-voice-active-out outlet 0

DynamicTonalPerspective_Phase1i::obj-98 r voiceInputMode
├→ obj-phase1i-validity-gate inlet 1 (order 0)
└→ obj-93 p PitchStream_setup inlet 0   (order 1)

DynamicTonalPerspective_Phase1i::obj-93 p PitchStream_setup outlet 0
→ obj-phase1i-validity-gate ObservedPitchValidityGate_Phase1i inlet 0
→ obj-100 Observed Pitch display
→ obj-113 s currentPitch

PitchInterpreter_Phase1::obj-4 r currentPitch
→ obj-17 flonum
→ obj-1 js PitchInterpreter_Phase1.js inlet 0
→ obj-3 flonum
→ obj-18 interpretedPitch outlet 0

DynamicTonalPerspective_Phase1i::obj-45 PitchInterpreter_Phase1 outlet 0
→ obj-5 ScaleDegreeInterpreterExtended_v2 inlet 0
```

`ObservedPitchValidityGate_Phase1i`は実Observed Pitch配線上にある．`voiceInputMode=1`（Mic）では`change`による0→1のみ`delay 150`を起動する．0受信時は`stop`を`delay 150`へ送ってからObserved Pitchの`gate`を即時closeする．150 ms後は`active-state`を`sel 1`で再確認し，Mic modeのままの場合だけopenする．`voiceInputMode=0`（MIDI keyboard）はpending delayをcancelし，Observed Pitchの`gate`を即時openする．

#### Interpreted Pitch → Initial Frame

```text
DynamicTonalPerspective_Phase1i::obj-45 PitchInterpreter_Phase1 outlet 0
├→ obj-168 gate data inlet 1                         (order 0)
│   → obj-169 t f 0
│      ├→ outlet 1 → obj-171 toggle → obj-168 control inlet 0（即close）
│      └→ outlet 0 → obj-88 s initialInterpretedPitch
├→ obj-5 ScaleDegreeInterpreterExtended_v2 inlet 0 (order 1)
└→ obj-phase1i-send-interpreted s leadInterpretedPitch (order 2)

obj-148 r initialInterpretedPitch
→ obj-106 number
→ obj-147 js InitialFrameInterpreter_Phase1.js inlet 0

obj-126 declared degree umenu outlet 1
→ obj-147 js InitialFrameInterpreter_Phase1.js inlet 1

obj-147 outlet 0
→ obj-153 number
→ obj-109 s frameOriginMIDI
```

Pitch Interpreter outlet 0のorder 0でInitial Frameを生成し，order 1で同じInterpreted PitchをScale Degree Interpreterへ渡す．これにより，初回PitchのScale Degree計算時に新しい`frameOriginMIDI`が先に配信される．

#### reset

```text
obj-108 s reset_history
├→ PitchInterpreter_Phase1::obj-39 r reset_history
│   → obj-10 button
│   → obj-1 js PitchInterpreter_Phase1.js inlet 2
└→ obj-phase1i-reset-history r reset_history
    ├→ message reset → obj-147 js InitialFrameInterpreter_Phase1.js inlet 0
    └→ message 1 → obj-171 toggle → obj-168 gate control inlet 0
```

`r reset`→`loadbang`→既存初期化message→`reset_history bang`の経路は維持した．新しいreset busは追加せず，既存の`reset_history`へ統合した．

#### Observed Pitch／Interpreted Pitchの分離

- `currentPitch`はvalidity確認後のObserved Pitchのままとした．
- `obj-45 PitchInterpreter_Phase1` outlet 0を`s leadInterpretedPitch`へ直接分岐した．
- `VoiceManager_Phase1i::rinterp r leadInterpretedPitch`を`js InnerVoiceTargets_Phase1i_diatonic36.js` inlet 2へ接続し，Leadの音楽的位置決定をInterpreted Pitch化した．
- `VoiceManager_Phase1i::rcur r currentPitch`は`i1`／`i2 expr $f1-$f2`の右inletのみに残し，`targetPitch - currentObservedPitch`のVoiceGenerator用pitch shiftを維持した．
- `InnerVoiceTargets_Phase1i_diatonic36.js`のdiatonic 3rd below／6th belowアルゴリズムは変更していない．

## Files Created

- `max/ObservedPitchValidityGate_Phase1i.maxpat`
- `docs/worklogs/2026-08-31_sigmus147-phase1i-production-fix.md`

## Files Modified

- `max/DynamicTonalPerspective_Phase1i.maxpat`
- `max/PitchOperator.maxpat`
- `max/VoiceManager_Phase1i.maxpat`

## Files Moved

- なし．

## Validation Performed

### 3. テスト結果

| 項目 | 結果 | 方法／実測値 |
|---|---|---|
| `.maxpat` JSON parse | PASS | 変更4パッチを`jq empty`で解析． |
| object ID存在 | PASS | 対象6パッチとembedded patcherの全patchlineを機械検査． |
| inlet／outlet index | PASS | 各patchline indexとsource `numoutlets`／destination `numinlets`を照合． |
| JS syntax | PASS | `InitialFrameInterpreter_Phase1.js`，`PitchInterpreter_Phase1.js`，`InnerVoiceTargets_Phase1i_diatonic36.js`． |
| 150 ms gateの実経路 | PASS | `obj-93`→`obj-phase1i-validity-gate`→`obj-100`→`obj-113 s currentPitch`を確認． |
| first-only captureの実outlet分岐 | PASS | `obj-45` outlet 0→`obj-168` data inlet 1を直接接続． |
| 存在しないsend／receive迂回 | PASS | 本番経路に`r interpretedPitch`，`pitchInputGate`，`voiceActive` send／receiveがないことを確認． |
| A: degree 1，Pitch 60 | PASS | `initialInterpretedPitch=60`，`frameOriginMIDI=60`，Scale Degree Class `1`． |
| B: degree 5，Pitch 72 | PASS | `initialInterpretedPitch=72`，`frameOriginMIDI=65`，Scale Degree Class `5`． |
| C: reset後の別Pitch | PASS | reset後，新Pitchだけで旧値は出力されず，degree 5を再申告したPitch 72から65を出力． |
| D: 150 ms未満でvoiceActive=0 | PASS（ロジック再現） | 70 ms後のPitchはclose中，0でtimer cancel，その後も出力0件． |
| E: MIDI keyboard mode | PASS（ロジック再現） | mode 0で即時openし，Pitch 64を待機なしで出力． |
| Micの150 ms継続 | PASS（ロジック再現） | 150 ms前の59は遮断，170 ms後の60は通過． |
| `git diff --check` | PASS | whitespace errorなし． |

JSテスはMax用JavaScriptをNode VMの`inlet`／`outlet`シムで実行した．D／EはMax objectの実時間実機試験ではなく，同じ状態遷移を持つイベントモデルによる再現試験である．

## Git Diff Summary

- 本番Phase 1iメイン：Observed Pitch validity gate，Interpreted Pitch直接分岐，reset統合を追加．
- Pitch Operator：既存音量validity判定の`voiceActive`を1 outletとして公開．Pitchアルゴリズムは不変．
- Voice Manager：Lead位置決定とpitch shift差分のPitch入力を分離．
- 150 ms gate abstractionを1件追加．
- commit／push／merge／rebase／tag作成は未実施．

## Unresolved Issues

### 4. 未確認事項

- Max 9のアプリ本体は`/Applications/Max.app`に存在するが，本セッションでGUIロードとMissing Object／赤いobjectの目視確認は実施できていない．
- D／Eは配線の静的検査と状態遷移モデルで確認したが，Max scheduler，実マイク，実MIDI keyboardによる動作は要確認．
- `InitialFrameInterpreter_Phase1.js` の`reset()`は仕様どおりPitchとdeclared degreeの両方を消去する．そのためreset後はdeclared degreeの再申告が必要である．
- 作業中に追跡済み`mus147-DTP-hashida.pptx`の変更と，未追跡`~$mus147-DTP-hashida.pptx`が外部から出現した．どちらも本作業で作成／変更したファイルではないため，差分の変更，復元，削除を行っていない．

## Suggested Next Step

Max 9で`max/DynamicTonalPerspective_Phase1i.maxpat`を開き，Max Consoleとパッチ表示でMissing Objectがないことを確認した後，実マイクでD，MIDI keyboardでEを実測する．

### 5. 本番用として使用すべきmaxpat名

`max/DynamicTonalPerspective_Phase1i.maxpat`

`DynamicTonalPerspective_Phase1i_150ms.maxpat`，`DynamicTonalPerspective_Phase1i_150ms_initfix.maxpat`，`DynamicTonalPerspective_Phase1j_150ms.maxpat`は本番候補として使用しない．
