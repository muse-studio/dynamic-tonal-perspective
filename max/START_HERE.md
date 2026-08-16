# 動的調性視 / Piece and Lecture Max Demo

## このフォルダの目的

Piece and Lectureの初演へ向けた，主要パッチとは独立して起動できる実演用プロトタイプです．

中心パッチ：

- `PieceAndLectureDemo.maxpat`

同じフォルダに置く必要がある依存ファイル：

- `PitchOperatorDemo.maxpat`
- `VoiceGeneratorSmooth.maxpat`
- `js/TonalityTrackerPhase1.js`
- `js/DiatonicHarmonyGenerator.js`

## 実装した最短経路

```text
Microphone
  ↓
PitchOperatorDemo
  ↓
Relative Tonal Frame
  ↓
DiatonicHarmonyGenerator
  ↓
Bass / Tenor / Alto / Soprano
  ＋
Dry Lead Voice
  ↓
Five-voice Solo Choir
```

実装内容：

- 歌唱者本人をLeadとして残し，自動生成4声を加えた合計5声
- `fzero~` と `fluid.pitch~` の切替
- 現在音をDoとして取り込む初期キャリブレーション
- Frame Originの固定
- Frame Originの手動移動
- 実験的なFrame自動追従（初期状態OFF）
- Major／minorの手動選択
- `choir`，`close`，`open`，`cluster` の4種類のハーモニー
- 入力レベルに基づく生成声部のSafety Gate
- Master Gain，PANIC MUTE，2ch録音
- Presentation Mode用の演奏画面

## 最初の起動手順

1. フォルダ全体を同じ場所へ置きます．
2. Max 9で `PieceAndLectureDemo.maxpat` を開きます．
3. パッチはPresentation Modeで開きます．実装配線を見る場合はPresentation Modeを解除します．
4. Audio Settingsで使用するマイクと出力を確認します．
5. `master` を低くしたまま `ezdac~` をONにします．
6. `pitch method` を選びます．
   - `1`：Max標準の `fzero~`
   - `2`：FluCoMaの `fluid.pitch~`
7. 安定したDoを歌い，`calibrate 0` をクリックします．
8. `preset choir` を選びます．
9. Leadと4声のGainを少しずつ上げます．

## 実演モード

### A．Frame固定：研究用Phase 1に近いモード

- `experimental automatic follow`：OFF
- `Frame Origin offset`：0
- `calibrate 0` 後，Frame Originを固定

現在の研究用Phase 1仕様では，Frame Originはキャリブレーション後に固定し，Evidenceだけでは移動させません．このモードが基準です．

### B．Frame手動移動：Piece and Lecture用Show Control

- 自動追従：OFF
- `Frame Origin offset` をゆっくり変更

同一歌唱が異なるRelative Tonal Frameで再解釈され，生成声部が変化する様子を確実に提示できます．実演の再現性が最も高いモードです．

### C．実験的自動追従

- キャリブレーション後に `experimental automatic follow` をON
- 緩やかなPitch Driftに対してFrame Originを小刻みに補正

これはPiece and Lecture用の試験機能です．現在の研究用Phase 1の確定仕様ではありません．本番採用は，実機テストで安定性を確認してから判断します．

## Harmony Preset

- `choir`：Bass＝1 octave下，Tenor＝3度下，Alto＝3度上，Soprano＝5度上を基本とする
- `close`：比較的密集した配置
- `open`：開離配置
- `cluster`：隣接Scale Degreeを用いた密集配置

各声部はMajor／minorのScale Degreeに基づいて生成されます．Major／minorは自動推定せず，演奏者が選びます．

## 録音

1. `open` で保存先を指定します．
2. `1` で録音開始します．
3. `0` で録音停止します．

Documentation Videoとリハーサル比較のため，本番前の各試行を保存してください．

## 安全設定

- 最初はヘッドホンまたは十分に小さいMaster Gainで確認します．
- PA使用時はマイクとスピーカの位置によるハウリングに注意します．
- 異常音・発振時は `PANIC MUTE` を押します．
- 5声を合算するため，各声部Gainを急に上げないでください．

## 現時点の未確認事項

この環境にはMax本体がないため，以下は実機未確認です．

- Max 9上でのパッチロードとDSP実行
- `fluid.pitch~` の導入状況
- `pfft~ gizmo_loadme` の実音品質と遅延
- 使用マイクでのPitch安定性
- 4声同時処理時のCPU負荷
- `sfrecord~` の録音動作

JSON構造，接続先，JavaScript構文，追従ロジック，ハーモニー計算は静的検証済みです．

## 実機で最初に確認する順序

1. パッチがMissing Objectなしで開くか
2. `pitch method 1` でcurrent pitchが動くか
3. `pitch method 2` でcurrent pitchが改善するか
4. `calibrate 0` でFrame Originが現在Pitchへ移るか
5. Leadのみで正常に音が出るか
6. Alto 1声のみを追加できるか
7. 4声すべてを追加してCPUと音量を確認
8. `Frame Origin offset` で生成音が変化するか
9. 実験的自動追従を最後に試す
