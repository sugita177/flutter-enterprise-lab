# Phase 0: 最小構成での環境構築とプロジェクト初期化（Chrome 実行環境）

> 全体の目次・記録ルールは [learning_log.md](../../learning_log.md) を参照。

---

### 2026-11-25 | Phase 0: ワークスペース初期セットアップ

- **学んだ核心（自分の言葉での要約）:**
  - macOS 最小構成（Flutter SDK + Chrome）での学習リポジトリ基盤を構築した。
  - 公開リポジトリ向けの `.gitignore` 設計（ローカル専用ファイル・OS/IDE 設定・ビルド成果物の除外）を整備した。
  - 学習記録は Phase ごとに `docs/logs/phase_X.md` へ分割し、肥大化を防ぐ構成にした。
- **ハマったポイント・疑問点:**
  - （特になし）
- **設計上の気づき・他言語との対比:**
  - Xcode や Android Studio を入れずとも、アーキテクチャ分離（インターフェース抽象化とモック）を徹底すれば、業務用携帯端末のコア設計と自動テストを Chrome / `flutter test` 環境で十分に検証できる。

### 2026-11-25 | Phase 0: Flutter SDK 導入と `flutter doctor` 確認

- **学んだ核心（自分の言葉での要約）:**
  - Flutter SDK（stable 3.50.1）を導入し、`flutter doctor` で `Flutter`・`Chrome`・`Connected device`・`Network resources` が正常（`[✓]`）であることを確認した。
  - `Android toolchain` と `Xcode` の警告はネイティブビルド用ツール未導入によるものであり、Web（Chrome）＋テスト中心の最小構成では無視して問題ないことを理解した。
- **ハマったポイント・疑問点:**
  - Homebrew でのインストールはコマンド実行場所に関わらずシステム領域に入るため、リポジトリ内に SDK 本体を置く必要はない。
- **設計上の気づき・他言語との対比:**
  - Flutter SDK は「Dart ランタイム + パッケージマネージャ + UI フレームワーク + ビルドツール」一式がまとまったツールチェーン。

### 2026-11-25 | Phase 0: Dart SDK・IDE 拡張機能の確認

- **学んだ核心（自分の言葉での要約）:**
  - 同梱の Dart SDK は `3.14.0 (stable)` であることを確認した。
  - Antigravity IDE の拡張機能（作成者 `Dart-Code` の `Dart` / `Flutter`）が導入され、Dart Analysis Server による型チェック・補完・デバッグ連携が使える状態になった。
- **ハマったポイント・疑問点:**
  - （特になし）
- **設計上の気づき・他言語との対比:**
  - IDE の補完やリアルタイムエラー表示は、SDK 内蔵の Dart Analysis Server（LSP）と拡張機能が通信することで実現されている。

### 2026-11-25 | Phase 0: `flutter create` とディレクトリ構造の確認

- **学んだ核心**
  - `flutter create --platforms=web app` で、不要なネイティブ設定フォルダを除いた最小構成のプロジェクトを生成した。
  - `pubspec.yaml`（依存管理）、`analysis_options.yaml`（Linter）、`lib/`（本体）、`test/`（テスト）の役割を把握し、初期テスト（`flutter test`）がパスすることを確認した。
- **ハマったポイント・疑問点:**
  - （特になし）
- **設計上の気づき・他言語との対比:**
  - `pubspec.yaml` / `pubspec.lock` の関係は Node.js の `package.json` / `package-lock.json` や Go の `go.mod` / `go.sum` と同じ思想。

### 2026-11-25 | Phase 0: Chrome 実行とデバイスエミュレーション確認

- **学んだ核心（自分の言葉での要約）:**
  - `flutter run -d chrome` でアプリを起動し、Chrome DevTools の Toggle device toolbar を使ってモバイル端末サイズでの表示・動作確認を行った。
- **ハマったポイント・疑問点:**
  - （特になし）
- **設計上の気づき・他言語との対比:**
  - 業務用ハンディ端末は縦長・狭小画面が多いため、最初からデバイスエミュレーションで表示確認する習慣がレイアウト崩れ（オーバーフロー）防止につながる。

### 2026-11-25 | Phase 0: Chrome 実行とデバイスエミュレーション確認

- **学んだ核心（自分の言葉での要約）:**
  - `flutter run -d chrome` でアプリを起動し、Chrome DevTools の Toggle device toolbar を使ってモバイル端末サイズでの表示・動作確認を行った。
- **ハマったポイント・疑問点:**
  - （特になし）
- **設計上の気づき・他言語との対比:**
  - 業務用ハンディ端末は縦長・狭小画面が多いため、最初からデバイスエミュレーションで表示確認する習慣がレイアウト崩れ（オーバーフロー）防止につながる。
