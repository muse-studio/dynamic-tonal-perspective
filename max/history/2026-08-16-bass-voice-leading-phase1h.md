# Bass Voice Leading Phase 1h 実装履歴

## 到達点

2026-08-15から16にかけて，歌唱音高のScale Degree InterpretationからCadential Motion Evidence，Counterpoint Bass，Bass Voice Leadingへ至る段階実装を作成した．その後，`ScaleDegreeInterpreterExtended_v2`，`CadentialMotionEvidence_Phase1f_v3`，`CounterpointBassGenerator_Phase1g`を`DynamicTonalPerspective.maxpat`へ統合し，Phase 1eからPhase 1hまでのメインパッチ基本動作をMax 9で確認した．

## 実装した機能

- Major frameを基準とするScale Degreeの解釈
- Extended Scale Degreeと内部Diatonic Positionの分離
- 旋律のdiatonic stepから終止的進行を分類するEvidence生成
- 協和度，声部進行，平行完全音程，終止Evidenceを用いるCounterpoint Bass候補評価
- Bassの固定音域内でのregister候補列挙と最短移動選択
- Bass Part Stateによる`previousPitch`履歴の外部保持
- manual MIDI targetとgenerated targetの切替
- `HarmonyGenerator`およびMIDI統合テストへの接続

## Scale Degree / Extended Scale Degree / Diatonic Position

`ScaleDegreeInterpreterExtended_v2.maxpat`と`js/ScaleDegreeInterpreterExtended_v2.js`は，Lead MIDI pitchとFrame Origin MIDIを入力として，次を出力する．

- Scale Degree Class：1--7
- Extended Scale Degree：上行側は1，2，…，7，8，…，下行側は…，-8，-7，…，-2であり，0を使用しない
- Diatonic Position：Frame Originを0とする内部座標であり，負値と0を使用する
- nearest diatonic toneからのdeviation
- Frame Originからのrelative pitch
- 直前のDiatonic Positionとの差であるmelodic diatonic steps
- nearest diatonic target MIDI pitch

Major scaleのpitch-class配列`[0, 2, 4, 5, 7, 9, 11]`を使用し，resetまたはFrame Origin変更時に直前positionを未定義へ戻す．

## Cadential Motion Evidence

`CadentialMotionEvidence_Phase1f_v3.maxpat`と`js/CadentialMotionEvidence_Phase1f_v3.js`は，current Scale Degree Class，melodic diatonic steps，current nearest diatonic MIDI pitchを入力とする．current classとstep差からprevious degree classを再構成し，以下のmotion typeを出力する．

1. VII→I
2. IV→III
3. II→I
4. II→III
5. IV→V
6. VI→V

出力はprevious degree class，motion type，motion strength，candidate Frame Origin MIDI pitch，candidate Scale Degree Classである．このEvidence operatorは候補を出力するが，Relative Tonal Frame自体を更新しない．

## Counterpoint Bass

`CounterpointBassGenerator_Phase1g.maxpat`と`js/CounterpointBassPhase1g.js`は，Lead Scale Degree Class 1--7の各Bass degree候補を評価する．評価には次を使用する．

- LeadとBassのinterval classに基づくconsonance score
- 直前イベントからのcontrary motion，oblique motion，同方向motion，跳躍量
- 同種の完全音程が同方向に進む場合のparallel-perfect penalty
- tonic，dominant，subdominant degreeへの固定bias
- Cadential Motion Evidenceのtypeとstrengthに基づくcadence contribution

選択結果としてBass degree，Frame Originの1 octave下を基準とするBass MIDI pitch，Lead／Bass motion，consonance class，interval class，parallel-perfect flag，cadence contributionを出力する．Counterpoint Bassの候補評価はRelative Tonal Frameの状態を更新しない．Phase 1h以降，このBass MIDI pitchは旧来の暫定／診断用出力として扱い，正式なBass Target Pitchは`BassVoiceLeading_Phase1h`が決定する．

## Bass Voice Leading

`BassVoiceLeading_Phase1h.maxpat`と`js/BassVoiceLeading_Phase1h_stateless.js`は，target degree，Frame Origin MIDI，外部`previousPitch`を入力する．Major frameの各degreeをoctave展開し，E2--E4（MIDI 40--64）に入る候補だけを昇順に列挙する．`previousPitch`が定義済みなら最も近い候補を選び，未定義なら音域中央MIDI 52に最も近い候補を選ぶ．

出力はtarget pitch，movement semitones，暫定voice-leading score `1 / (1 + movement)`，valid candidates，selected MIDI octaveである．Phase 1hの選択自体は最短距離で行い，scoreは診断値である．

## Bass Part State / previousPitch履歴

`BassPartState_Phase1h.maxpat`は`f -1.`で`previousPitch`を外部保持する．target degreeイベントごとに，保存済みpitchを先にBass Voice Leadingへ送り，次にtarget degreeで評価を起動する．選択されたtarget pitchは次イベント用に`f`のcold inletへ保存する．reset時は履歴を-1へ戻す．

`HarmonyGenerator_Phase1h.maxpat`にも同じ外部state loopが実装され，`HarmonyGenerator.maxpat`から利用される．`BassVoiceLeading_Phase1h`自身はPart Stateを更新しない．`js/BassVoiceLeading_Phase1h.js`にはstandalone test用の内部履歴版も残されているが，統合パッチはstateless版を参照する．

## targetPitchMode

`HarmonyGenerator`は`r targetPitchMode`と2個の`switch 2`を用いてpitchとloudnessの入力を切り替える．

- `1`：manual MIDI target
- `2`：generated target

`DynamicTonalPerspective.maxpat`の初期化messageには`targetPitchMode 2`が追加されている．manual MIDI経路は削除せずに保持されている．

## HarmonyGeneratorへの統合

`DynamicTonalPerspective.maxpat`は`ScaleDegreeInterpreterExtended_v2`，`CadentialMotionEvidence_Phase1f_v3`，`CounterpointBassGenerator_Phase1g`を統合する．Frame Originは`s frameOriginMIDI`，生成されたBass target degreeは`s bassTargetDegree`から送信する．

`VoiceManager.maxpat`は`r bassTargetDegree`から受け取ったdegreeを`HarmonyGenerator`へ渡す．`HarmonyGenerator`は`HarmonyGenerator_Phase1h`を介して`BassVoiceLeading_Phase1h`へ接続し，Bass Voice Leadingは`r frameOriginMIDI`からFrame Originを受け取る．選択されたtarget pitchと`currentPitch`との差を`voice interval`として`VoiceGenerator`へ，loudnessを`adsr~`へ渡す．この経路の基本動作をMax 9で確認した．

## Max 9でのメインパッチ統合確認

### VII→I入力

`PitchStream`へ59→60を入力し，次を確認した．

- previous degree：7
- motion type：1
- strength：1
- candidate Frame Origin MIDI：60
- Bass Target Degree：3

### Bass Voice Leading

上記で得たTarget Degree 3に対し，次を確認した．

- valid candidates：`[40, 52, 64]`
- target pitch：52
- movement：4
- voice-leading score：0.2
- selected octave：3

### 非整数PitchStream

実際のPitchStreamに含まれる非整数入力59.536858で，次を確認した．

- nearest diatonic MIDI：60
- deviation：約-0.463
- melodic diatonic steps：0
- motion type：0
- strength：0

同一degree内のpitch fluctuationをCadential Motionとして誤検出しないことを確認した．

## Max Search PathとJavaScriptロード

MaxのSearch Pathには`max/`をSubfolders有効で登録している．この構成では，`max/js/`内のJavaScriptを参照する`js` objectに`js/Foo.js`ではなく`Foo.js`と指定することで正常にロードできた．Phase 1h主要パッチのobject指定はこの方式を使用する．

## 主要な設計判断

- Scale Degree Class，Extended Scale Degree，Diatonic Positionを別の表現として扱う．
- Evidenceはcandidate Frame Originを生成しても状態を更新しない．
- Counterpoint Bassは終止Evidenceを生成候補のscoreへ利用するが，Tonality Stateを更新しない．
- Counterpoint BassのBass MIDI pitchは暫定／診断用とし，正式なBass Target PitchはBass Voice Leadingが決定する．
- Bass Voice LeadingとBass Part Stateを分離し，状態更新は外部state loopが担う．
- Phase 1hでは音域制約と直前音からの距離をregister選択の基準とする．
- manual MIDI経路を保持し，`targetPitchMode`でgenerated経路を切り替える．
- 段階実装の旧版は削除せず，検証可能な履歴として保持する．

## 現在のデータフロー

```text
PitchStream + Frame Origin
  → DynamicTonalPerspective
    → ScaleDegreeInterpreterExtended_v2
      ├→ Scale Degree Class
      ├→ Extended Scale Degree
      ├→ Diatonic Position
      ├→ melodic diatonic steps
      └→ nearest diatonic MIDI pitch
    → CadentialMotionEvidence_Phase1f_v3
      └→ motion type + strength + candidate Frame Origin
    → CounterpointBassGenerator_Phase1g
      ├→ diagnostic Bass MIDI pitch
      └→ Bass target degree → s bassTargetDegree
    → Frame Origin → s frameOriginMIDI
  → VoiceManager
    → r bassTargetDegree
    → HarmonyGenerator
    → HarmonyGenerator_Phase1h
      → BassVoiceLeading_Phase1h
        ├→ r frameOriginMIDI
        ├→ external previousPitch state
        └→ formal Bass Target Pitch
      → target pitch - currentPitch
      └→ voice interval → VoiceGenerator
```

## 追加・変更した主要ファイル

### 主要実装

- `max/DynamicTonalPerspective.maxpat`
- `max/HarmonyGenerator.maxpat`
- `max/HarmonyGenerator_Phase1h.maxpat`
- `max/VoiceManager.maxpat`
- `max/ScaleDegreeInterpreterExtended_v2.maxpat`
- `max/CadentialMotionEvidence_Phase1f_v3.maxpat`
- `max/CounterpointBassGenerator_Phase1g.maxpat`
- `max/BassVoiceLeading_Phase1h.maxpat`
- `max/BassPartState_Phase1h.maxpat`

### JavaScript

- `max/js/ScaleDegreeInterpreterExtended_v2.js`
- `max/js/CadentialMotionEvidence_Phase1f_v3.js`
- `max/js/CounterpointBassPhase1g.js`
- `max/js/BassVoiceLeading_Phase1h_stateless.js`

### 統合テスト

- `tests/max/ExtendedScaleDegreeTest_v2.maxpat`
- `tests/max/ScaleDegreeCadenceIntegratedTest_v2.maxpat`
- `tests/max/CadenceBassIntegratedTest_Phase1g.maxpat`
- `tests/max/BassVoiceLeading_Phase1h_Test.maxpat`
- `tests/max/CounterpointBassHarmonyIntegratedTest_Phase1h.maxpat`

## テスト方法と確認結果

- 対象`.maxpat` 37件のJSON parse：PASS
- object ID，patchline source／destination，inlet／outlet indexの静的整合性：PASS
- 相対abstraction参照と`js/`参照33件の実在確認：PASS
- `max/js/` 13件のJavaScript syntax check：PASS
- Scale Degree代表列B3→C4→D4：degree `[7, 1, 2]`，Extended Scale Degree `[-2, 1, 2]`，Diatonic Position `[-1, 0, 1]`を確認
- Cadential EvidenceのVII→I：previous class 7，type 1，strength 1，candidate origin 60を確認
- Counterpoint BassのVII→I evidence付きLead I：Bass degree 1，Bass MIDI 48，cadence contribution 6を確認
- Bass Voice LeadingのFrame Origin 60，previousPitch 48，degree V：candidate `[43, 55]`からtarget 43，movement 5，octave 2を確認
- 対象テキスト差分の`git diff --check`：PASS
- Max 9でPhase 1e→1f→1g→1hのメインパッチ統合基本動作：PASS
- `PitchStream` 59→60：previous degree 7，motion type 1，strength 1，candidate Frame Origin 60，Bass Target Degree 3を確認
- Bass Target Degree 3：candidate `[40, 52, 64]`，target pitch 52，movement 4，score 0.2，octave 3を確認
- 非整数`PitchStream` 59.536858：nearest diatonic MIDI 60，deviation約-0.463，melodic steps 0，motion type 0，strength 0を確認
- Max Search Pathへ`max/`をSubfolders有効で登録し，JavaScript basename指定で正常ロードを確認

元から未追跡だった`max/abstractions/TonalityDecisionPhase1Test/FrameDecision.maxpat`は，参照する`FrameDecisionPhase1.js`が存在しないため対象外とした．

## 既知の制約

- Scale DegreeとBass Voice Leadingのdegree-to-pitch mappingはMajor frame固定であり，mode-dependent mappingは未実装である．
- Bass音域はE2--E4（MIDI 40--64）に固定されている．
- Bass Voice Leadingは最短距離だけでregisterを選び，voice-leading scoreは診断用の暫定値である．
- Counterpoint Bassの規則とweightはPhase 1の固定値であり，音楽的妥当性の評価は未実施である．
- Counterpoint BassのBass MIDI pitchは正式な発音用Bass Target Pitchではない．
- Search Pathへ`max/`をSubfolders有効で登録する環境設定が必要である．

## 次の実装候補

- mode-dependent degree-to-pitch mappingを設計する．
- Bass range，移動距離以外のregister score，声部交差条件を検討する．
- Counterpoint BassとBass Part Stateのreset／new session境界を統合テストする．
