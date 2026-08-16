# Decisions

設計判断と理由を記録する簡易Architecture Decision Recordです。実施内容の記録は `worklogs/`、利用可能な機能や版の変化は `CHANGELOG.md` に分離します。

## 001: ブランチの役割

- Date: 2026-08-03
- Status: Accepted
- Context: 安定した研究成果と日常的な開発作業を区別する必要がある。
- Decision: `main` を安定版、`develop` を日常開発版とする。
- Consequences: 通常作業は `develop` または適切なfeatureブランチで行い、安定版への反映は明示的に管理する。

## 002: Maxパッチの配置

- Date: 2026-08-03
- Status: Accepted
- Context: 実装、論文、設計資料、データを一つの研究プロジェクト内で区別する必要がある。
- Decision: Maxパッチを `max/` に集約する。
- Consequences: 起点が明確になる一方、移動時には相対参照とMax検索パスの検証が必要になる。

## 003: LaTeXビルド生成物の配置

- Date: 2026-08-03
- Status: Accepted
- Context: Dropbox同期とGit差分に中間生成物を混入させない必要がある。
- Decision: LaTeXビルド生成物をリポジトリおよびDropbox外へ置く。
- Consequences: 予定先を `~/Library/Caches/dtp-build/` とし、環境別設定はリポジトリに絶対パスを直接保存しない方法で行う。

## 004: Worklog

- Date: 2026-08-03
- Status: Accepted
- Context: 研究開発作業の実施内容と検証結果を追跡可能にする必要がある。
- Decision: 変更の有無にかかわらず、作業単位で `docs/worklogs/` にworklogを残す。
- Consequences: 各セッションで開始状態、変更、検証、未解決事項を記録する。

## 005: 調性状態処理の責務分離

- Date: 2026-08-03
- Status: Accepted
- Context: 観測根拠と状態変更が混在すると、判断の検証と実装の保守が難しくなる。
- Decision: Observation / Feature / Evidence / Decision / State Updateの責務を分離する。Evidenceは状態を変更せず、更新はDecisionおよびUpdaterが担う。
- Consequences: モジュール境界とデータフローをこの順序に合わせ、既存実装との差は段階的に確認する必要がある。

### 006: SIGMUS147予稿

- Date: 2026-08-03
- Status: Adopted

- Context:
  `muselab-pblreports` を `paper/sigmus147` に subtree として取り込み、SIGMUS147予稿の執筆環境を構築する。テンプレートリポジトリにはB2/B3/B4など複数のテンプレートが含まれるが、本プロジェクトではIPSJ研究報告テンプレートのみを使用する。

- Decision:
  SIGMUS147では `muselab-pblreports` を基盤として利用するが、作業ディレクトリには使用しないテンプレートを残さない。

- Consequences:
  - `paper/sigmus147` はSIGMUS147執筆に必要なファイルのみを保持する。
  - 不要なテンプレートやサンプルは削除し、ディレクトリ構成を簡潔に保つ。
  - テンプレート更新時は `git subtree pull` を実行し、その後不要ファイルを再度整理する。
  - テンプレートそのものの改善は `muselab-pblreports` 側へ反映する。

## 007: Bass Voice LeadingとPart Stateの責務分離

- Date: 2026-08-16
- Status: Accepted
- Context: Bassのregister選択と`previousPitch`履歴更新を同一operatorが担うと、状態更新の責務とイベント順序が不明確になる。
- Decision: `BassVoiceLeading_Phase1h`は外部から受け取った`previousPitch`を参照して候補を評価するが、履歴を更新しない。履歴の保持と更新は`BassPartState_Phase1h`または統合先のstate loopが担う。
- Consequences: target degreeを評価する前に保存済み`previousPitch`を供給し、選択後のtarget pitchを次イベント用に保存する必要がある。

## 008: Harmony target pitchの入力モード

- Date: 2026-08-16
- Status: Accepted
- Context: 従来のmanual MIDI target経路を保持しながら、生成Bass targetを段階的に統合する必要がある。
- Decision: `targetPitchMode`の1をmanual MIDI、2をgenerated targetとして`HarmonyGenerator`内でpitchとloudnessを切り替える。
- Consequences: 起動時のmode、generated targetの入力、manual経路への復帰をテスト時に明示する必要がある。

## 009: 正式なBass Target Pitchの決定責務

- Date: 2026-08-16
- Status: Accepted
- Context: `CounterpointBassGenerator_Phase1g`はBass degreeとBass MIDI pitchを出力するが，Phase 1hではregisterと`previousPitch`履歴を考慮した実音高決定を後段で行う．
- Decision: `CounterpointBassGenerator_Phase1g`のBass MIDI出力は旧来の暫定／診断用出力として扱う．正式なBass Target Pitchは`BassVoiceLeading_Phase1h`が決定する．
- Consequences: 下流の発音処理はCounterpoint BassのMIDI pitchではなく，Bass Voice Leadingのtarget pitchを使用する．

## 010: Max Search PathとJavaScript object指定

- Date: 2026-08-16
- Status: Accepted
- Context: JavaScript実装は`max/js/`に配置されているが，`js js/Foo.js`というobject指定では正常にロードできなかった．
- Decision: MaxのSearch Pathへ`max/`をSubfolders有効で登録し，`js` objectでは`js/Foo.js`ではなく`Foo.js`を指定する．
- Consequences: 実行環境ごとにSearch Path設定が必要である．JavaScriptを移動または改名する場合は，Search Pathとobject指定の両方を確認する．

## 011: Observed PitchとInterpreted Pitchの分離

- Date: 2026-08-17
- Status: Accepted
- Context: 歌唱音高を単純にnearest MIDIへ量子化すると，局所的なintonationの傾向や歌唱者の遷移意図を保持できない場合がある．
- Decision: Pitch Operatorの出力をObserved Pitchとし，`PitchInterpreter_Phase1`がInterpretation State，intonation continuity，Temporal StabilityからInterpreted Pitchを決定する．Scale Degree InterpreterにはObserved PitchではなくInterpreted Pitchを渡す．
- Consequences: Phase 1のPitch InterpreterはRelative Tonal Frame，Scale Degree，Harmonyに依存しない．tonal contextを利用する解釈はPhase 2候補として別途設計する．

## 012: Phase 1 Temporal Stabilityの時間評価

- Date: 2026-08-17
- Status: Accepted for Phase 1
- Context: 瞬間的な候補変化だけでInterpreted Pitchを遷移させると，Pitch fluctuationによる不要なtransitionが発生する．
- Decision: 同一のtransition candidateが継続し，Pitch更新イベント到着時に算出した経過時間が`transitionHoldTime`以上になった場合にtransitionを確定する．
- Consequences: manual／MIDIテストでは同じPitch Observationをmetro等で継続送信する必要がある．将来はNoteEventUpdateの`previousUpdateAt`，`occurredAt`，`validDeltaTime`と整合する有効Observation継続時間の積算方式を検討する．
