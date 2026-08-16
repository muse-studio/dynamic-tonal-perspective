# 実装スナップショット — 2026-08-15

## 今回の判断

既存パッチは，音声入力からPitchを推定し，MIDI鍵盤で与えた絶対音高へ `poly~` 内の声部をPitch Shiftする構造でした．この経路は予備として保持し，Piece and Lecture本番用には，Relative Tonal Frameを中央状態とする独立パッチを作成しました．

## 現在実装

- `Observation`
  - マイク音声
  - `fzero~`／`fluid.pitch~`によるPitch Stream
- `Feature`
  - current pitch
  - delta pitch
  - Relative Tonal Frameに対する残差
- `Evidence`
  - `maintenanceEvidence = max(0, 1 - abs(deltaPitch) / 4)`
  - frame fit
  - adjustment Evidence
- `Decision / State Update`
  - 固定Frame
  - 手動offset
  - 実験的な小刻み補正
- `Harmony`
  - Major／minor手動選択
  - Scale Degreeに基づく4声生成
  - Leadを加えた5声合唱
- `Performance Safety`
  - 生成声部Gate
  - Master Gain
  - PANIC MUTE
  - 録音

## 研究用Phase 1との差分

研究用Phase 1では，次を原則とします．

- Major／minorを推定しない
- Frame Originはキャリブレーション後に固定
- EvidenceだけではFrame Originを移動しない
- Pitch DriftとFrame移動を自動識別しない

今回のパッチでは，Major／minorは手動指定です．自動追従は作品実演の可能性を確認する実験モードであり，初期状態ではOFFです．研究用の確定アルゴリズムとしては扱いません．

## 次の実装優先順位

### 今日：実機起動テスト

- Missing Objectの確認
- Pitch Streamの確認
- Lead＋1声の確認
- CPU使用率とLatencyの確認

### 次：音響品質の収束

- Pitch methodの固定
- 各声部Gainの固定
- Harmony Presetを1〜2種類に絞る
- `gizmo_loadme`の音質確認
- 必要なら各声部へ微小Delayを追加

### その次：実演の固定

- 8分実演のCue順を決定
- Frame固定とFrame移動の比較区間を決定
- 自動追従を本番採用するか判断
- Documentation Videoを同じCueで収録

## 本番採用の判定基準

- 10回連続で起動・キャリブレーションに成功する
- 1曲分の連続動作でDSP Dropoutがない
- PANIC MUTEが即時に効く
- Offset操作を元へ戻せる
- 自動追従は，失敗時にも固定モードへ即座に戻せる


## 2026-08-15 pitch-shift routing fix

VoiceGeneratorSmooth now receives target MIDI pitch and current input MIDI pitch separately, computes `voiceShiftInterval = targetVoicePitch - currentInputPitch`, clips that interval to +/-24 semitones, then converts it with `transratio`. This fixes all voices saturating at +24 semitones.
