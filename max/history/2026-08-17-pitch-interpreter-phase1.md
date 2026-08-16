# Pitch Interpreter Phase 1 実装履歴

## 到達点

Pitch Operatorが生成する連続音高観測をObserved Pitch，後段の音楽構造が参照する離散音高をInterpreted Pitchとして分離した．`PitchInterpreter_Phase1`を`DynamicTonalPerspective.maxpat`へ統合し，Interpreted Pitchを`ScaleDegreeInterpreterExtended_v2`のLead MIDI pitchへ渡す経路を構築した．

## 背景となったnearest MIDI問題

歌唱音高を各時点で単純にnearest MIDIへ丸めるだけでは，局所的なintonationの傾向や歌唱者が意図する音程遷移を保持できない場合がある．確認例では，Observed Pitch 59.54を60として保持した後，Observed Pitch 71.20を単純に丸めるとnearest MIDIは71になる．一方，直前に保持したintonation deviationとのcontinuityを考慮すると，candidate 72をオクターブ先のInterpreted Pitchとして選択できる．

## Observed Pitch / Interpreted Pitchの分離

- Observed Pitch：`PitchOperator.maxpat`から`PitchStream`／`currentPitch`経由で得る連続値
- Interpreted Pitch：`PitchInterpreter_Phase1`がInterpretation Stateと候補評価から決定する離散MIDI pitch
- nearest MIDI：`Math.round(observedPitch)`による診断値であり，Interpreted Pitchと一致するとは限らない

`ScaleDegreeInterpreterExtended_v2`にはraw Observed PitchではなくInterpreted Pitchを渡す．`frameOriginMIDI`はPitch Interpreterでは使用せず，Scale Degree Interpreter側で使用する．

## Phase 1アルゴリズム

### Interpretation State

`max/js/PitchInterpreter_Phase1.js`は次の状態を保持する．

- `referenceObservedPitch`
- `previousInterpretedPitch`
- `referenceIntonationDeviation`
- `transitionCandidatePitch`
- `transitionCandidateStartTime`
- `currentPitchConfidence`

resetまたはreset bangでInterpretation Stateとtransition candidateを初期化する．confidenceが`minimumInterpretationConfidence`未満のObservationは状態と出力を更新しない．

### Candidate生成

有効なObserved Pitchごとにnearest MIDIを求め，次の3候補を生成する．

```text
nearestMidi - 1
nearestMidi
nearestMidi + 1
```

初回の有効Observationはnearest MIDIをInterpreted Pitchとし，そのときの`observedPitch - interpretedPitch`をreference intonation deviationとして保存する．

### Candidate評価と選択

各candidateについて次を計算する．

```text
absolutePitchError = abs(observedPitch - candidate)
candidateDeviation = observedPitch - candidate
continuityError = abs(candidateDeviation - referenceIntonationDeviation)
cost = wAbsolute * absolutePitchError
     + wContinuity * continuityError
```

実装は正値のerrorをpenaltyとするcostを最小化する．`selectedScore` outletはこのcostを出力する．これを「大きい値ほど良いscore」として表現する場合は符号を反転する必要があるため，本履歴では実コードに合わせてcost最小化と記す．

初期weightは次のとおりである．

- `wAbsolute = 1.0`
- `wContinuity = 2.0`

JavaScriptのfallback `transitionHoldTime`は80 msであり，現在のメインパッチ初期化messageは30 msを送信する．`minimumInterpretationConfidence`のJavaScript初期値は0.0である．

## Temporal Stability

best candidateが`previousInterpretedPitch`と同じ場合は現在のInterpretationを維持し，transition candidateを破棄する．異なる場合はcandidateと開始時刻を保存する．以後のPitch更新イベントでも同じcandidateが選ばれ，イベント到着時に評価した経過時間が`transitionHoldTime`以上になった場合だけPitch Transitionを確定する．

candidateが変わった場合はholdを最初から数え直す．hold中はInterpreted Pitchを変更せず，`transitionDetected = 0`を出力する．確定時はInterpreted Pitchとreference intonation deviationを更新し，`transitionDetected = 1`を出力する．

manual／MIDIテストでは，metro等を用いて同一Pitch Observationを継続送信することで，マイクからの連続Pitch更新を模擬できる．

## Max abstraction

`max/PitchInterpreter_Phase1.maxpat`は7 inlet／8 outletのJavaScript operatorをラップする．現在のabstractionでは，入力を次のように供給する．

- Observed Pitch：`r currentPitch`
- pitch confidence：公開inlet
- reset：`r reset_history`
- `wAbsolute`：公開inlet
- `wContinuity`：公開inlet
- `transitionHoldTime`：`r transitionHoldTime`
- `minimumInterpretationConfidence`：公開inlet

abstraction外へはInterpreted Pitchとnearest MIDIを出力する．内部UIでは次の8 JS outletを観測できる．

1. interpreted pitch
2. intonation deviation
3. transition detected
4. nearest MIDI
5. selected candidate
6. selected cost
7. absolute pitch error
8. continuity error

MaxのSearch Pathへ`max/`をSubfolders有効で登録し，JS objectは`js PitchInterpreter_Phase1.js`としてbasenameで参照する．

## DynamicTonalPerspectiveへの統合

概念上および現行patchlineの経路は次のとおりである．

```text
Pitch Operator
  → Observed Pitch
  → PitchInterpreter_Phase1
  → Interpreted Pitch
  → ScaleDegreeInterpreterExtended_v2
  → Extended Scale Degree
```

`PitchOperator.maxpat`では`fzero~`と`fluid.pitch~`を`pitchOperatorMode`で切り替え，選択結果を`PitchStream`へ送る．メインパッチはこのObserved Pitchを`currentPitch`へ送り，Pitch Interpreterが受信する．Pitch InterpreterのInterpreted Pitch outletだけを`ScaleDegreeInterpreterExtended_v2`のLead MIDI pitchへ接続する．

## 手動テスト結果

次の入力と結果を確認した．

| 項目 | 初期Observation | 遷移後Observation |
|---|---:|---:|
| Observed Pitch | 59.54 | 71.20 |
| nearest MIDI | 60 | 71 |
| Interpreted Pitch | 60 | 72 |

`wAbsolute = 1.0`，`wContinuity = 2.0`，hold time 30 msの再現テストでも，71.20に対するselected candidateが72となり，同じObservationをhold timeより長く継続送信した後にInterpreted Pitch 72と`transitionDetected = 1`が出力されることを確認した．

## fluid.pitch~による実歌唱確認

`fluid.pitch~`を用いた実マイク歌唱でもPitch Interpreter Phase 1が概ね動作することを確認した．現時点の実機確認では`fluid.pitch~`のPitch入力が比較的安定していた．ただし，`fzero~`等との定量比較は実施していないため，他方式より高精度であるとは結論しない．

## Phase 1で扱わないもの

Pitch Interpreter Phase 1は次をCandidate Evaluationに使用しない．

- `frameOriginMIDI`
- relative pitch
- Relative Tonal Frame
- Scale Degree
- Harmony

これらはPitch Interpretation後の処理で使用される．Phase 1のInterpretation StateはTonality Stateとは独立している．

## 既知の制約

- tonal contextをInterpretationへfeedbackしていないため，実歌唱の71.xを常に72として解釈できるわけではない．これはPhase 1内で補修せずPhase 2の設計課題とする．
- Temporal StabilityはPitch更新イベント到着時の`Date.now()`で経過時間を評価する．有効Observationだけの継続時間を積算する実装ではない．
- `referenceObservedPitch`はInterpretation Stateとして保持されるが，現在のCandidate Evaluation式では直接使用していない．
- Pitch検出方式間の精度，安定性，latencyは定量評価していない．

## Phase 2への課題

- `frameOriginMIDI`，relative pitch，Relative Tonal FrameをPitch Interpretation Evidenceとして利用する設計を検討する．
- tonal contextを直接scoreへ加えるか，独立EvidenceとしてDecisionへ渡すかを5層構造に沿って整理する．
- NoteEventUpdateの`previousUpdateAt`，`occurredAt`，`validDeltaTime`と整合する有効Observation継続時間の積算方式を検討する．
- Pitch検出方式ごとのerror，dropout，latencyを同一条件で定量比較する．

## 追加・変更した主要ファイル

- `max/PitchInterpreter_Phase1.maxpat`
- `max/js/PitchInterpreter_Phase1.js`
- `max/DynamicTonalPerspective.maxpat`
- `max/PitchOperator.maxpat`
- `max/ScaleDegreeInterpreterExtended_v2.maxpat`

## 検証結果

- 対象Maxパッチ4件のJSON parse：PASS
- object ID，patchline source／destination，inlet／outlet index：PASS
- `PitchInterpreter_Phase1.js`のsyntax check：PASS
- JS object `PitchInterpreter_Phase1.js`のSearch Path上の実在：PASS
- 59.54→71.20のJS再現テスト：nearest MIDI 60→71，Interpreted Pitch 60→72，Temporal Stability確定を確認
- Max 9手動／MIDIテスト：PASS
- `fluid.pitch~`実マイク歌唱：概ね動作を確認，定量比較は未実施
