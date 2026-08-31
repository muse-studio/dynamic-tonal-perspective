# Initial Frame Interpreter Phase 1 実装履歴

## 到達点

歌い始めのInterpreted Pitchと，歌い手が申告したScale DegreeからRelative Tonal Frameの初期`frameOriginMIDI`を生成するPhase 1経路を`DynamicTonalPerspective.maxpat`へ追加した．あわせて，マイク入力のフィルタ処理と`fluid.pitch~`出力の音量閾値ゲートを追加した．

## Initial Frameの生成

`max/js/InitialFrameInterpreter_Phase1.js`は次の2入力／1出力を持つ．

- inlet 0：`initialInterpretedPitch`（MIDI pitch）
- inlet 1：`declaredInitialScaleDegree`（1--7）
- outlet 0：`frameOriginMIDI`

Phase 1ではdiatonic major scaleのdegree offsetを次のように定義する．

```text
degree: 1  2  3  4  5  6  7
offset: 0  2  4  5  7  9 11
```

出力は次式で決定する．

```text
frameOriginMIDI = initialInterpretedPitch
                - degreeOffsets[declaredInitialScaleDegree]
```

例えば，初回Interpreted Pitchが64，申告Scale Degreeが3であれば，`frameOriginMIDI`は60となる．1--7以外のdegreeはエラーをpostし，出力計算に使用しない．`reset()`は両入力の保持値を破棄する．

## メインパッチの初期化経路

`DynamicTonalPerspective.maxpat`では，`PitchInterpreter_Phase1`が出力するInterpreted Pitchを`initialPitchGate`で制御された`gate`へ入力する．ゲートを通過した初回値は`t f 0`により`initialInterpretedPitch`へ送られ，同時にゲートを閉じる．

`InitialFrameInterpreter_Phase1.js`は`initialInterpretedPitch`と申告Scale Degreeの両方が揃ったときだけ`frameOriginMIDI`を計算し，`s frameOriginMIDI`経由で下流へ渡す．申告Pitch Labelは`declaredInitialPitchLabel`として別経路で保持する．

## Pitch Operatorと入力前処理

- メインパッチのマイク入力に`filtergraph~`と`biquad~`を追加した．
- `PitchOperator.maxpat`は`pitchOperatorMode`で`fzero~`と`fluid.pitch~`への音声入力を切り替える．
- `fluid.pitch~`側では`meter~`の出力を外部から入力された音量閾値と比較し，閾値を超えた場合だけpitchを`PitchStream`へ通す．
- 現行のメインパッチは起動時の音量閾値として40を送る．この値の妥当性は実機で要検証である．

## 研究発表スライド

`mus147-DTP-hashida.pptx`を研究発表用の成果物として追加した．8枚のスライドは，Dynamic Tonal Perspectiveの問題設定，従来研究との違い，システム構成，実演の仕組み，まとめを扱う．

## Phase 1の制約

- `labelInterpretationMode = relative`を前提とする．UIに`absolute`選択肢はあるが，処理は未実装である．
- diatonic major scaleのdegree offsetのみを使用する．
- `octaveOffset`はInitial Frameの計算に使用しない．
- `reset()`のJS実装は存在するが，メインパッチからJSへのreset経路はこの静的調査では確認できなかった．
- Max 9での実機動作，入力フィルタ，音量閾値の妥当性は未検証である．

## 追加・変更した主要ファイル

- `max/DynamicTonalPerspective.maxpat`
- `max/PitchOperator.maxpat`
- `max/js/InitialFrameInterpreter_Phase1.js`
- `mus147-DTP-hashida.pptx`

## 検証結果

- Maxパッチ2件のJSON parse：PASS
- Maxパッチ内のobject ID，patchline source／destination，inlet／outlet indexの静的検証：PASS
- `InitialFrameInterpreter_Phase1.js`のJavaScript syntax check：PASS
- `InitialFrameInterpreter_Phase1.js`のdegree 1--7，不正degree，resetのロジック再現テスト：PASS
- `mus147-DTP-hashida.pptx`のZIP／OOXML archive integrity：PASS
- Max 9実機テスト：未実施
