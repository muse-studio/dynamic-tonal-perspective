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
