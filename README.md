# flutter-enterprise-lab

エンタープライズ向け携帯端末（ハンディターミナル・業務用端末）を想定した、Dart および Flutter の設計・実装・テストを基礎から実践的に学ぶための個人学習ラボです。

## 目的

- Dart 言語の型安全性（Null Safety、Dart 3 の Records / Patterns / `sealed class`）および非同期処理（`Future` / `Stream`）の習得
- Flutter による業務画面レイアウトと連続入力・フォーム制御の実践
- `flutter_test` による単体テスト・Widget テストおよび TDD の習慣化
- Clean Architecture / Repository パターン、状態管理（Riverpod / BLoC）を用いた保守性の高い設計
- オフラインファースト、堅牢な HTTP 通信、バーコードスキャン抽象化、ライフサイクル管理など、エンタープライズ携帯端末特有の要件設計

## 環境要件（最小構成）

ストレージ容量を抑えるため、Xcode・Android Studio・エミュレータ・Docker は使用せず、以下の最小構成で学習を進めます。

- **OS:** macOS (Apple Silicon)
- **SDK:** Flutter SDK (Homebrew 経由で導入)
- **実行環境:** Google Chrome（Web 実行環境 + DevTools デバイスエミュレーション）
- **IDE:** Google Antigravity IDE

## ディレクトリ構成（予定）

```text
.
├── .gitignore          # Flutter / Dart / macOS / IDE 向け除外設定
├── README.md           # 本ドキュメント
├── road_map.md         # Phase 0〜7 の段階的学習ロードマップ
├── learning_log.md     # Phase 別学習ログの目次・記録ルール
├── docs/
│   └── logs/           # Phase ごとの学習記録（phase_0.md 〜 phase_7.md）
└── app/                # Flutter 学習用プロジェクト（Phase 0 で生成予定）
```

## 学習ドキュメント

- 学習計画と進捗: [road_map.md](./road_map.md)
- 学習の振り返り: [learning_log.md](./learning_log.md)
