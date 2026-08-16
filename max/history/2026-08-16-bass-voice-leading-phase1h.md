# Bass Voice Leading Phase 1h 実装履歴

## 到達点

2026-08-15から16にかけて，歌唱音高のScale Degree InterpretationからCadential Motion Evidence，Counterpoint Bass，Bass Voice Leadingへ至る段階実装を作成した．Phase 1h統合テストでは，生成されたBass target degreeを`HarmonyGenerator_Phase1h`へ渡し，registerを選択したtarget pitchをMIDI出力経路へ送るところまでを接続している．

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

選択結果としてBass degree，Frame Originの1 octave下を基準とするBass MIDI pitch，Lead／Bass motion，consonance class，interval class，parallel-perfect flag，cadence contributionを出力する．Counterpoint Bassの候補評価はRelative Tonal Frameの状態を更新しない．

## Bass Voice Leading

`BassVoiceLeading_Phase1h.maxpat`と`js/BassVoiceLeading_Phase1h_stateless.js`は，target degree，Frame Origin MIDI，外部`previousPitch`を入力する．Major frameの各degreeをoctave展開し，E2--E4（MIDI 40--64）に入る候補だけを昇順に列挙する．`previousPitch`が定義済みなら最も近い候補を選び，未定義なら音域中央MIDI 52に最も近い候補を選ぶ．

出力はtarget pitch，movement semitones，暫定voice-leading score `1 / (1 + movement)`，valid candidates，selected MIDI octaveである．Phase 1hの選択自体は最短距離で行い，scoreは診断値である．

## Bass Part State / previousPitch履歴

`BassPartState_Phase1h.maxpat`は`f -1.`で`previousPitch`を外部保持する．target degreeイベントごとに，保存済みpitchを先にBass Voice Leadingへ送り，次にtarget degreeで評価を起動する．選択されたtarget pitchは次イベント用に`f`のcold inletへ保存する．reset時は履歴を-1へ戻す．

`HarmonyGenerator.maxpat`と`HarmonyGenerator_Phase1h.maxpat`にも同じ外部state loopが実装されている．`BassVoiceLeading_Phase1h`自身はPart Stateを更新しない．`js/BassVoiceLeading_Phase1h.js`にはstandalone test用の内部履歴版も残されているが，統合パッチはstateless版を参照する．

## targetPitchMode

`HarmonyGenerator`は`r targetPitchMode`と2個の`switch 2`を用いてpitchとloudnessの入力を切り替える．

- `1`：manual MIDI target
- `2`：generated target

`DynamicTonalPerspective.maxpat`の初期化messageには`targetPitchMode 2`が追加されている．manual MIDI経路は削除せずに保持されている．

## HarmonyGeneratorへの統合

`HarmonyGenerator`のgenerated target側には`BassVoiceLeading_Phase1h`が配置され，Frame Origin，target degree，previous Bass pitch，resetを受け取る．選択されたtarget pitchと`currentPitch`との差を`voice interval`として出力し，generated loudnessを別outletへ出力する．diagnosticとしてmovement，score，candidate list，selected octaveもパッチ内に表示する．

`VoiceManager.maxpat`は`HarmonyGenerator`のvoice intervalを`VoiceGenerator`へ，loudnessを`adsr~`へ接続している．ただし，`DynamicTonalPerspective`／`VoiceManager`から`HarmonyGenerator`のFrame Originおよびtarget degree inletへ至る接続は，現在のpatchlineから確認できないため，要確認である．

## MIDIによるBass出力確認

`tests/max/CounterpointBassHarmonyIntegratedTest_Phase1h.maxpat`は，`HarmonyGenerator_Phase1h`のtarget pitch outletを`makenote 127 1000`と`noteout 1`へ接続している．load時に`targetPitchMode 2`とgenerated loudness 0.16を設定する．このため，Lead pitch入力から生成Bass MIDI noteへ至る確認経路はパッチ上に存在する．

本整理セッションではMax 9の存在を確認したが，Computer Useによる画面取得が2回タイムアウトしたため，パッチロード，Missing Objectの有無，実際のMIDI発音は再確認できていない．MIDI出力結果は要実機確認である．

## 主要な設計判断

- Scale Degree Class，Extended Scale Degree，Diatonic Positionを別の表現として扱う．
- Evidenceはcandidate Frame Originを生成しても状態を更新しない．
- Counterpoint Bassは終止Evidenceを生成候補のscoreへ利用するが，Tonality Stateを更新しない．
- Bass Voice LeadingとBass Part Stateを分離し，状態更新は外部state loopが担う．
- Phase 1hでは音域制約と直前音からの距離をregister選択の基準とする．
- manual MIDI経路を保持し，`targetPitchMode`でgenerated経路を切り替える．
- 段階実装の旧版は削除せず，検証可能な履歴として保持する．

## 現在のデータフロー

```text
Lead MIDI pitch + Frame Origin
  → ScaleDegreeInterpreterExtended_v2
      ├→ Scale Degree Class
      ├→ Extended Scale Degree
      ├→ Diatonic Position
      ├→ melodic diatonic steps
      └→ nearest diatonic MIDI pitch
  → CadentialMotionEvidence_Phase1f_v3
      └→ motion type + strength + candidate Frame Origin
  → CounterpointBassGenerator_Phase1g
      └→ Bass target degree
  → HarmonyGenerator_Phase1h
      → Bass Voice Leading + external previousPitch state
      → target pitch - currentPitch
      → voice interval
      └→ target pitch → makenote → noteout（統合テスト）
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
- Max 9でのロードとMIDI発音：未確認

元から未追跡だった`max/abstractions/TonalityDecisionPhase1Test/FrameDecision.maxpat`は，参照する`FrameDecisionPhase1.js`が存在しないため対象外とした．

## 既知の制約

- Scale DegreeとBass Voice Leadingのdegree-to-pitch mappingはMajor frame固定であり，mode-dependent mappingは未実装である．
- Bass音域はE2--E4（MIDI 40--64）に固定されている．
- Bass Voice Leadingは最短距離だけでregisterを選び，voice-leading scoreは診断用の暫定値である．
- Counterpoint Bassの規則とweightはPhase 1の固定値であり，音楽的妥当性の評価は未実施である．
- Max 9でのMissing Object，MIDI port，audio output，実時間動作はこの整理セッションでは確認できていない．
- メインパッチからgenerated Bass経路へFrame Originとtarget degreeを供給する配線は要確認である．

## 次の実装候補

- Max 9で統合テストを開き，Missing ObjectとMIDI channel 1の発音を確認する．
- メインパッチ／VoiceManagerからHarmonyGeneratorへのFrame Origin，target degree，resetの供給経路を確認する．
- mode-dependent degree-to-pitch mappingを設計する．
- Bass range，移動距離以外のregister score，声部交差条件を検討する．
- Counterpoint BassとBass Part Stateのreset／new session境界を統合テストする．
