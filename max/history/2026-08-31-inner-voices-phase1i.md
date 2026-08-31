# Inner Voices Phase 1i 実装履歴

## 到達点

Dynamic Tonal Perspectiveの一人合唱デモに，Leadの下に配置する2つの内声を追加した．`DynamicTonalPerspective_Phase1i.maxpat`がScale Degree Classを`leadScaleDegreeClass`として送信し，`VoiceManager_Phase1i.maxpat`が内声2声と既存Bass声部を生成・合成する．

## Phase 1iメイン経路

`DynamicTonalPerspective_Phase1i.maxpat`は現行メインパッチに対して次の差分を持つ．

- `ScaleDegreeInterpreterExtended_v2`のScale Degree Classを`s leadScaleDegreeClass`へ送る．
- `poly~ VoiceManager`を`poly~ VoiceManager_Phase1i`へ切り替える．

`VoiceManager_Phase1i.maxpat`は次の3声を合成する．

1. `InnerVoiceTargets_Phase1i_diatonic36.js`が決定する第1内声．
2. 同JavaScriptが決定する第2内声．
3. `HarmonyGenerator_Phase1h`による既存Bass声部．

各内声は`targetPitch - currentPitch`をvoice intervalとして`VoiceGenerator`へ渡す．出力gainは第1内声0.32，第2内声0.28，Bass 0.35とし，3声を加算する．

## diatonic 3rd／6thアルゴリズム

`InnerVoiceTargets_Phase1i_diatonic36.js`はmajor scaleのsemitone offset（`0, 2, 4, 5, 7, 9, 11`）を用い，LeadのScale Degree Classから現在Lead pitchに最も近いdiatonic positionを求める．

- 第1内声：Leadから2 diatonic steps下（diatonic 3rd下）
- 第2内声：Leadから5 diatonic steps下（diatonic 6th下）

生成pitchが実際のLead pitch以上になった場合は，Leadより下になるまで1 octave下げる．Bassの決定はこのJavaScriptでは行わず，Phase 1hの既存経路に任せる．

## 比較試作JavaScript

- `InnerVoiceTargets_Phase1i.js`：Lead degreeごとのprovisional harmony table，目標register，直前pitchからのcostで候補を選ぶ初期試作．
- `InnerVoiceTargets_Phase1i_voiceorder.js`：`Lead > Voice 1 > Voice 2`の厳密な声部順序制約を追加した試作．
- `InnerVoiceTargets_Phase1i_diatonic36.js`：diatonic 3rd下／6th下に規則を簡素化した，現行`VoiceManager_Phase1i`の参照先．

最初の2件は現行Maxパチから参照されない比較資材である．

## 150 ms／initfix variant

- `DynamicTonalPerspective_Phase1i_150ms.maxpat`：`voiceActive = 0`で即時に閉じ，`voiceActive = 1`の150 ms後に開く`pitchInputGate`制御値を生成する．
- `DynamicTonalPerspective_Phase1i_150ms_initfix.maxpat`：reset後の初回Interpreted Pitchを1回だけ`initialInterpretedPitch`へ送る別系統のgate試作を追加する．
- `DynamicTonalPerspective_Phase1j_150ms.maxpat`：内声生成を既存`VoiceManager`に戻し，150 ms gateの試作だけを分離する．

静的調査では，これらのパッチ内に`r pitchInputGate`は存在せず，生成したgate制御値はPitch Interpreter直前のgateへ接続されていない．また，initfixが参照する`r interpretedPitch`に対応するsendは確認できなかった．したがって，150 ms／initfix variantは試作資材とし，完成機能とは扱わない．

## 層構造と責務

Phase 1iの内声生成はScale DegreeとRelative Tonal Frameを受け取ってtarget pitchを直接生成するデモ用ルールである．Frame Maintenance／Adjustment／Reformation Evidenceを生成せず，Tonality Stateも書き換えない．ただし，内声生成のFeature／Evidence／Decisionの正式な責務分離は未確定である．

## 既知の制約

- major Relative Tonal Frameのみを扱う．
- diatonic 3rd下／6th下の固定規則はデモ用であり，和声的妥当性は未評価である．
- `VoiceManager_Phase1i` は`r currentPitch`をJavaScriptのLead pitchとvoice interval計算に使う．現行メインパッチの`currentPitch`はObserved Pitch経路であり，JavaScriptコメントの`leadInterpretedPitch`とは定義が一致しない．入力定義は要確認である．
- 内声の履歴や独立したPart Stateは保持しない．
- Max 9の実機動作と音響的な評価は未実施である．

## 追加したファイル

- `max/DynamicTonalPerspective_Phase1i.maxpat`
- `max/DynamicTonalPerspective_Phase1i_150ms.maxpat`
- `max/DynamicTonalPerspective_Phase1i_150ms_initfix.maxpat`
- `max/DynamicTonalPerspective_Phase1j_150ms.maxpat`
- `max/VoiceManager_Phase1i.maxpat`
- `max/js/InnerVoiceTargets_Phase1i.js`
- `max/js/InnerVoiceTargets_Phase1i_voiceorder.js`
- `max/js/InnerVoiceTargets_Phase1i_diatonic36.js`

## 検証結果

- Maxパッチ5件のJSON parse：PASS
- object ID，patchline source／destination，inlet／outlet index：PASS
- JavaScript 3件のsyntax check：PASS
- 各JavaScriptの出力数，pitch範囲，voice order，diatonic 3rd／6thの再現テスト：PASS
- `VoiceManager_Phase1i.maxpat`のJavaScript参照先の実在：PASS
- 150 ms／initfixの完全な接続：FAIL（未接続の試作として記録）
- Max 9実機テスト：未実施
