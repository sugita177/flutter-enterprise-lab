// ignore_for_file: avoid_print
// Phase 1 - Step 2: Null Safety (?, !, ??, ??=, late) と型昇格 (Type Promotion)
// 実行コマンド: cd app && dart run bin/phase1_null_safety.dart

void main() {
  print('=== 1. Null 許容型と ?. / ?? の安全な組み合わせ ===');
  const List<String?> rawInputs = ['  jan-001 ', null, '   ', 'JAN-002'];

  for (final input in rawInputs) {
    // (1): input を安全にトリムして大文字に変換し、
    // input が null の場合は 'UNSCANNED' を出力してください。
    // ヒント: input?.trim().toUpperCase() ?? 'UNSCANNED'
    print(input?.trim().toUpperCase() ?? 'UNSCANNED');
  }

  print('\n=== 2. 型昇格 (Type Promotion) とガード節 ===');
  print(formatInspectionLabel('JAN-001', '特大ダンボール'));
  print(formatInspectionLabel('JAN-002', null));
  print(formatInspectionLabel(null, '不明'));

  print('\n=== 3. late の安全な使い方と落とし穴 ===');
  final session = InspectionSession();
  // (3): session.start('OP-99') を呼ぶ前に session.operatorId にアクセスすると
  // 何が起きるか（コメントで想像した上で）、正しく start() を呼んでから出力してください。
  // session.start('OP-99') を呼ぶ前に session.operatorId にアクセスした場合、未定義エラーになる。
  session.start('OP-99');
  print(session.operatorId);
}

/// 商品コードと任意の備考を受け取り、表示用ラベルを返す。
String formatInspectionLabel(String? code, String? note) {
  // (2):
  // 1. code が null または空文字（trim 後）の場合は '[エラー] コード未読取' を返す（早期リターン）
  // 2. note が null でない場合のみ '[$code] 備考: $note' を返し、
  //    note が null の場合は '[$code] 備考なし' を返す。
  // ヒント: if (code == null || code.trim().isEmpty) ... を使うと、以降 code は非 null の String に昇格します。
  if (code == null || code.trim().isEmpty) {
    return '[エラー] コード未読取';
  }
  return note == null ? '[$code] 備考なし' : '[$code] 備考: $note';
}

class InspectionSession {
  // 起動後にログイン処理で必ず 1 度だけセットされる想定のフィールド
  late final String operatorId;

  void start(String id) {
    operatorId = id;
  }
}
