# SIGMUS147 RoamingSheep Accompaniment Calibration

## Summary

SIGMUS147本番用の最小変更として，伴奏開始直前の歌唱ロングトーンを取得し，`capturedSingerPitch - 65.0` semitoneで`rs_last.aiff`全体を移調する経路を追加した．Dynamic Tonal Perspective全体，Harmony Generator，Relative Tonal Frameは移植していない．既存のマイク入力，一人合唱，キーボード操作，伴奏ゲイン，ステレオmix，録音経路は維持した．

## User Request

アカペラ後に開始する`rs_last.aiff`を，開始直前に歌われるd minorの第III音（近傍基準MIDI 65）の実測Pitchへ連続値のまま合わせる．開始時に値をfreezeし，伴奏開始後は追従させず，AUTO／MANUAL切替と即時RESETを用意する．コミットは行わない．

## Starting State

- 作業ブランチ：`develop`
- 作業開始時から存在した今回対象外の変更：`mus147-DTP-hashida.pptx`の変更，`~$mus147-DTP-hashida.pptx`の未追跡ファイル
- 本体パッチ：`RoamingSheep/RoamingSheep.maxpat`
- Max保存バージョン：9.1.5（パッチ内`appversion`）

## RoamingSheep既存構造の調査結果

- 入力選択は`selector~ 2`（obj-25）であり，選択後の音声は`live.gain~`（obj-85）から`rs3chorus~ 3 7`（obj-38）のinlet 0へ入る．この既存patchlineは変更していない．
- 一人合唱は`rs3chorus~ 3 7`の3つのsignal outletから各`live.gain~`，`stpan~`を経て`stereo mix`（obj-13）へ入る．この経路は変更していない．
- Space操作は`p key_mapping`（obj-112）内の`p Space`で交互に`s sf`または`s spacekey`へ送られる．伴奏側は`r sf`（obj-45）からtoggle（obj-42）へ入り，従来はtoggleから`sfplay~ 2`（obj-78）へ直結していた．
- 録音済みsolo再生時は`sfplay~ rs_solo.wav...`（obj-18）の進行を`p trigger`（obj-75）が監視し，所定位置で同じtoggle（obj-42）を起動する．したがって，obj-42の開始値1をCapture起点とした．
- `rs_last.aiff`は`loadmess open rs_last.aiff`（obj-40）でobj-78へ開かれる．従来の左右出力は`*~ 1.`（obj-6，obj-7），`live.gain~`（obj-80），既存stereo mix／`ezdac~`へ接続されていた．
- DTP側では`max/PitchOperator.maxpat`の`fzero~`／`ftom`と音量validityの考え方，`max/VoiceGeneratorSmooth.maxpat`の`pfft~ gizmo_loadme 4096 4`を参照した．FluCoMa依存はRoamingSheepへ追加していない．

## Changes Made

### 追加したPitch Capture経路

`obj-85 outlet 0 → SingerPitchCapture → Current／Captured表示 → capturedSingerPitch - 65.0`

- `rs3chorus~`へ入る直前の既存音声を分岐した．既存合唱patchlineは保持した．
- `fzero~`でHzを検出し，`ftom`で連続MIDI値へ変換する．半音丸めは行わない．
- `average~ 4096 rms`と`snapshot~ 25`で入力レベルを得る．
- 25 ms間隔，20サンプル（500 ms）の履歴から中央値を得る．Captureには最低12有効サンプル（約300 ms）を要求する．
- validity条件はRMS 0.02以上，MIDI 48〜84，中央値絶対偏差0.6 semitone以下とした．無効時はCaptured値を更新しない．これらの閾値は本番会場で要確認である．

### sfplay~から出力までのPitch Shift経路

`rs_last.aiff → sfplay~ 2（obj-78）L/R → AccompanimentPitchShifter L/R → 既存*~ L/R（obj-6／obj-7）→ 既存bgm gain（obj-80）→ 既存stereo mix／ezdac~`

- L/Rへ同一のsemitone値を与え，左右を独立に`pfft~ gizmo_loadme 4096 4`で処理する．
- ratioは`pow(2, semitones / 12)`で計算し，45 msで平滑化する．再生速度は変更しない．
- shift範囲は安全上−6.0〜+6.0 semitoneにclipする．
- 既存の左右ゲイン，伴奏`live.gain~`，stereo mix，録音，`ezdac~`配線はshifter後段として保持した．

### Freeze順序

obj-42の値を`sel 1 0`へ入れた．開始値1は`t 1 b`を通り，Maxの右から左へのtrigger順により，先にCapture bang，次に再生値1をobj-78へ送る．停止値0はそのままobj-78へ送る．Capture JSは有効時のみ同期的にCaptured値を出し，AUTO shiftを確定してから再生が始まる．伴奏開始後のCurrent Pitchは表示用に更新されるが，Captured／shiftは次回開始bangまで更新されない．

### AUTO / MANUALの仕様

- 初期モードはAUTO，初期shiftは0.0 semitoneである．
- AUTO：有効なCapture時だけ`capturedSingerPitch - 65.0`を採用する．Capture失敗時は直前の安全なshiftを保持する．
- MANUAL：Presentation上の`Manual Shift [st]`で−6.0〜+6.0 semitoneを直接指定する．
- RESET：AUTO用値とMANUAL値の双方へ0.0を送り，現在選択中の経路からshifterを0.0へ戻す．
- Presentation表示：`Current Singer Pitch`，`Captured Singer Pitch`，`Accompaniment Shift [st]`，`AUTO / MANUAL`，`Manual Shift [st]`，`Reset Shift`．

## Files Created

- `RoamingSheep/SingerPitchCapture.maxpat`
- `RoamingSheep/RoamingSheepPitchCapture.js`
- `RoamingSheep/AccompanimentPitchShifter.maxpat`
- `docs/worklogs/2026-08-31_sigmus147-roamingsheep-calibration.md`

## Files Modified

- `RoamingSheep/RoamingSheep.maxpat`

## Files Moved

- なし．

## Validation Performed

### 静的検証

- 3つの`.maxpat`を`jq`でparse：PASS
- 本体と全埋め込みsubpatcherを含む21 patcher，393 objects，458 patchlinesを再帰検査：重複IDなし，source／destination欠落なし，宣言inlet／outlet範囲外なし
- `obj-85 → obj-38`の既存合唱入力を保持：PASS
- `obj-42 → Capture trigger → obj-78`の開始順序：PASS
- obj-78左右→shifter左右→obj-6／obj-7：PASS
- shift control→shifter inlet 2：PASS
- 旧`obj-42 → obj-78`直結および旧obj-78→obj-6／obj-7直結が残っていない：PASS
- 必須5項目のPresentation属性：PASS
- `git diff --check`：PASS
- 追加処理はMax標準の`fzero~`，`average~`，`snapshot~`，`pfft~`，`gizmo~`，`expr`，`js`とローカルabstractionのみ．`fzero~`／`average~`／`snapshot~`／`pfft~`／`gizmo~`および`gizmo_loadme.maxpat`はローカルMax 9.1.5インストールで実在を確認した．

### Pitch Captureロジックのシミュレーション

- A：65.0 → captured 65.0，shift 0.0：PASS
- B：64.0 → captured 64.0，shift −1.0：PASS
- C：66.0 → captured 66.0，shift +1.0：PASS
- D：Capture後にCurrent Pitchを変更してもCaptured outletは更新されない：PASS
- E：無音（RMS 0）ではCaptured outletを更新しない：PASS
- 連続値は浮動小数のまま中央値と減算へ渡り，整数丸め処理は存在しない：PASS
- F：MANUAL値からmode selector，clip，shifter controlまでのpatchline：PASS（Max実機の聴取は未実施）
- G：RESETからAUTO／MANUAL両値までのpatchline：PASS（Max実機の聴取は未実施）

## Git Diff Summary

- コミット，push，merge，rebase，tag作成は行っていない．
- RoamingSheep本体1ファイルを変更し，abstraction 2ファイル，JS 1ファイル，本worklog 1ファイルを追加した．
- 作業開始前から存在したPowerPoint関連変更には触れていない．

## Unresolved Issues

- Max GUIを起動した実機音声試験，Missing Object表示の目視確認，実マイクと`rs_last.aiff`による聴取確認は未実施である．
- 会場マイクゲインに対するRMS 0.02，歌唱のvibratoに対する中央値偏差0.6 semitone，Pitch範囲48〜84の適否はリハーサルで要確認である．
- `pfft~ gizmo_loadme 4096 4`は既存DTP実装とMax標準patchを再利用した．0 semitone時を含むlatencyと音色変化は実機で要確認である．
- obj-79の`playbar`からobj-78を直接操作した場合はCaptureを通らない．本番の既存開始操作（obj-42経由）を使用すること．

## 本番で開くべきmaxpat名

`RoamingSheep/RoamingSheep.maxpat`

Presentation Modeでは画面左上にCalibration操作群が表示される．通常の本番開始操作は従来どおりとし，開始前にAUTO／MANUALと表示値を確認する．

## Rollback方法

未コミット状態のため，今回の変更だけを戻す場合は，`RoamingSheep/RoamingSheep.maxpat`をGitの作業開始時版へrestoreし，今回追加した`SingerPitchCapture.maxpat`，`RoamingSheepPitchCapture.js`，`AccompanimentPitchShifter.maxpat`および本worklogを削除する．既存のPowerPoint変更と一時ファイルはrollback対象に含めない．実行前に`git diff -- RoamingSheep/RoamingSheep.maxpat`と`git status --short`で対象を再確認すること．

## Suggested Next Step

Max 9.1.5で本体を開き，Missing Objectがないことを目視した後，Presentation ModeでA〜Gを順に確認する．特に実マイクでロングトーンを歌い，voiceActive表示，Captured更新，伴奏開始後のfreeze，AUTO／MANUAL，RESET，左右定位，0 semitone時の音色を確認する．
