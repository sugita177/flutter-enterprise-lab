// ignore_for_file: avoid_print
// Phase 1 - Step 1: 基本構文、変数宣言 (final / const / var)、型推論、コレクション操作
// 実行コマンド: cd app && dart run bin/phase1_basics.dart

void main() {
  print('=== 1. 変数宣言と型推論 ===');
  // (1): ハンディターミナルの端末ID（再代入不可・実行時定数）を final で宣言してください。
  // 例: terminalId = 'HT-001'
  final terminalId = 'HT-001';
  print('terminalId: $terminalId');

  // (2): 1回の検品でスキャンできる最大件数（コンパイル時定数）を const で宣言してください。
  // 例: maxScanLimit = 100
  const maxScanLimit = 100;
  print('maxScanLimit: $maxScanLimit');

  // (3): 現在のスキャン件数を var で宣言し、値を 1 増やして出力してください。
  // ヒント: var count = 0;
  var count = 0;
  count++;
  print('count: $count');

  print('\n=== 2. コレクション操作と不変性 ===');
  // (4): 検品済み商品コードの List を作成し、重複を排除した Set に変換して件数を比較してください。
  // 入力例: ['JAN-001', 'JAN-002', 'JAN-001', 'JAN-003']
  final List<String> codeList = ['JAN-001', 'JAN-002', 'JAN-001', 'JAN-003'];
  print('codeList: $codeList');
  final Set<String> codeSet = codeList.toSet();
  print('codeSet: $codeSet');
  print(codeList.length == codeSet.length);

  // (5): 商品コード(String) をキー、数量(int) を値とする Map を作成し、
  // 'JAN-001' の数量を更新（または新規追加）して出力してください。
  final quantities = <String, int>{for (final code in codeSet) code: 0};
  print('quantities: $quantities');

  quantities.update('JAN-001', (current) => current + 1, ifAbsent: () => 1);
  print('quantities: $quantities');

  print('\n=== 3. コレクション if / for とスプレッド演算子 ===');
  const bool includeUrgent = true;
  final List<String> baseTasks = ['入庫検品', '棚卸'];

  // (6): コレクション if / for とスプレッド演算子 (...) を使って、
  // baseTasks の各要素の前に '[業務] ' を付け、includeUrgent が true のときだけ
  // 先頭に '[至急] 冷蔵品チェック' を含む新しい List<String> displayTasks を構築してください。
  // ヒント: [ if (...) ..., for (final t in baseTasks) ... ]
  final tasks = [
    if (includeUrgent) '[至急] 冷蔵品チェック',
    for (final baseTask in baseTasks) '[業務] $baseTask',
  ];
  print('tasks: $tasks');
}
