# エンタープライズ Flutter 学習ロードマップ

macOS（Apple Silicon）上の最小構成（Flutter SDK + Google Chrome）で、エンタープライズ向け携帯端末（ハンディターミナル・業務用端末）の設計・実装・テストを基礎から実践的に習得するためのロードマップです。

---

## Phase 0: 最小構成での環境構築とプロジェクト初期化（Chrome 実行環境）

- [ ] Homebrew による Flutter SDK の導入と PATH 設定、`flutter doctor` の確認（Xcode / Android 警告の正しい見方）
- [ ] Google Antigravity IDE の Dart / Flutter 拡張機能および MCP サーバーの確認
- [ ] `flutter create` による学習用プロジェクト生成とディレクトリ構造の理解
- [ ] `flutter run -d chrome` および Chrome DevTools のデバイスエミュレーション（ハンディ端末画面サイズ想定）での動作確認
- [ ] Git 初期化・初回コミットと GitHub リモート連携の準備

---

## Phase 1: Dart 言語の基礎と型安全性

- [ ] 基本構文、変数宣言（`final` / `const` / `var`）、型推論、コレクション操作（`List`, `Set`, `Map`, コレクション `if` / `for`）
- [ ] Null Safety（`?`, `!`, `??`, `?.`, `late`）の徹底理解と安全な設計
- [ ] クラス設計、名前付きコンストラクタ、`factory`、不変オブジェクト（Immutability）と等値性比較（`==` / `hashCode`）
- [ ] Dart 3 のモダン構文（Records、Patterns、`sealed class` と `switch` 式による網羅的な状態・業務エラー表現）
- [ ] 非同期処理（`Future` / `async-await`、およびバーコードスキャンや通信状態監視の要となる `Stream` / `StreamController`）

---

## Phase 2: Flutter の UI 基礎と業務画面レイアウト

- [ ] 宣言的 UI、Widget ツリー（Widget / Element / RenderObject の役割）、`StatelessWidget` と `StatefulWidget` のライフサイクル、`BuildContext` の仕組み
- [ ] 画面サイズに依存しない業務レイアウト（`Column`, `Row`, `Expanded`, `Flexible`, `ListView.builder`）と業務用 UI 配慮（タップ領域・高視認性・エラー表現）
- [ ] 業務入力フォームと連続入力制御（`TextFormField`、`FocusNode` によるスキャン後自動フォーカス移動、バリデーション、確認ダイアログ・スナックバー）
- [ ] 画面遷移とルーティング設計（`Navigator` の基礎と、`go_router` による宣言的ルーティング・認証ガードの基礎）

---

## Phase 3: テストの基礎学習（テスト実践前の必須ステップ）

- [ ] `flutter_test` パッケージの仕組み、テストディレクトリ構成、`flutter test` の実行とカバレッジ確認
- [ ] 純粋な Dart クラス・ドメインロジックの単体テスト（Unit Test: `group`, `test`, `expect`, マッチャー、`setUp` / `tearDown`）
- [ ] 依存性の抽象化とテストダブル（Fake / Stub / Mock）を使ったテスト手法（外部依存を切り離す設計）
- [ ] Widget テストの基礎（`testWidgets`, `WidgetTester`, `find`, `pump` / `pumpAndSettle` による描画とユーザー操作の自動検証）

---

## Phase 4: 状態管理とエンタープライズ・アーキテクチャ

- [ ] 標準 `setState` / `ChangeNotifier` / `InheritedWidget` の仕組みと、中〜大規模アプリにおける限界の理解
- [ ] 状態管理ライブラリの概念比較と実践（**Riverpod** およびエンタープライズで採用例の多い **BLoC** の特徴・使い分け・実践）
- [ ] Clean Architecture / Repository パターンによる Presentation 層・Application/State 層・Domain 層・Data 層の分離と単体テスト実装
- [ ] ビルド設定と環境分離（`--dart-define` / `--dart-define-from-file` による開発・検証・本番環境の切り替えと DI 構成）
- [ ] グローバルエラーハンドリング（`FlutterError.onError` / `PlatformDispatcher.instance.onError` とユーザー向けフォールバック UI 設計）

---

## Phase 5: エンタープライズ携帯端末のコア要件（オフライン・堅牢性）

- [ ] オフラインファースト設計（Web / モバイル両立を意識したローカル永続化インターフェースの抽象化、送信キューイング、再接続時の同期・冪等性キー・競合解決の設計と単体テスト）
- [ ] 堅牢な HTTP 通信（`dio` によるタイムアウト設定、インターセプター、指数バックオフ付き自動リトライ、ネットワークエラーと業務エラーの明確な分離）
- [ ] セキュリティと端末運用（認証トークン保護の設計、無操作セッションタイムアウト、操作監査ログと機密情報マスキングの設計）

---

## Phase 6: 携帯端末ハードウェア・OS 連携の設計パターン（モック実践）

- [ ] バーコード・QR コード連続スキャンの仕組み（HID キーボードウェッジ入力 / Android Intent）と `Stream` による抽象化・モック実装（検品連続スキャン演習）
- [ ] Platform Channels（`MethodChannel` / `EventChannel`）によるネイティブ OS 機能呼び出しのアーキテクチャ理解とテスト可能なアダプター設計
- [ ] アプリのライフサイクル監視（`WidgetsBindingObserver` によるバックグラウンド遷移・スリープ復帰時の状態保持と復元、バッテリー低下・ネットワーク状態変化の検知モック）
- [ ] 周辺機器（モバイルプリンタ・RFID 等）連携を見据えたデバイス抽象化レイヤーとフェイルセーフ設計

---

## Phase 7: 総合演習（ミニ・ハンディターミナル業務アプリ）

- [ ] 要件定義・ドメインモデリング（入庫検品・棚卸業務を想定したオフライン対応ミニアプリ）
- [ ] TDD によるドメイン層・リポジトリ層・同期キューの実装
- [ ] 連続スキャン画面・未同期データ一覧画面・エラーリカバリ UI の実装と Widget テスト
- [ ] Chrome デバイスエミュレーションでの総合動作確認とアーキテクチャ振り返り
