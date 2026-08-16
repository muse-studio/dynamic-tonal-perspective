# Tests

Maxパッチ、データ処理、文書構成などの再現可能な検証資材を配置します。テスト方法と期待結果を明記し、手動検証の場合もworklogへ結果を記録してください。

## Max

`max/` にMaxの単体・統合テストパッチを配置します。各テストパッチは `../../max/` への相対参照を使用するため、リポジトリ内の配置を保ったままMax 9で開いてください。

Phase 1hの統合確認には `max/CounterpointBassHarmonyIntegratedTest_Phase1h.maxpat` を使用します。このパッチには生成Bassを `makenote` と `noteout 1` へ送る経路があります。MIDI出力先と音量を確認してから実行してください。
