# Piece and Lecture 実演Cue案（初稿）

## 0．事前状態

- Master Gainを低くする
- DSP OFF
- tracking OFF
- Frame offset 0
- Major
- preset choir
- 録音待機

## 1．生声：基準を共有する

- Leadのみ
- 短い旋律または音階を歌う
- 「いま自分がどこをDoとして歌っているか」を説明

## 2．一人合唱：Relative Tonal Frameの音響化

- 安定したDoを歌い，`calibrate 0`
- Alto，Tenor，Bass，Sopranoを順に追加
- 5声が最初から同一Frame内に存在することを聴かせる

## 3．Frame固定

- tracking OFF
- offset 0
- 同じFrameを維持した歌唱とハーモニーを提示

## 4．Frame移動

- tracking OFFのままOffsetをゆっくり移動
- 歌唱とハーモニーの関係が，絶対Key名ではなく移動するFrameで記述されることを示す
- 最後にoffsetを0へ戻す

## 5．実験的自動追従（採用可否はリハーサル後）

- tracking ON
- 緩やかなPitch Driftまたは長音でFrame Originの補正を提示
- 不安定なら直ちにtracking OFFへ戻す

## 6．終止

- preset openまたはchoir
- Frameを安定状態へ戻す
- 5声を順に減らし，Leadへ戻る
- DSP／録音停止

## 本番用に固定すべきもの

- 歌唱素材
- 開始Pitch
- Major／minor
- Harmony Preset
- Gain値
- Offsetの移動幅と所要時間
- trackingの採用可否
