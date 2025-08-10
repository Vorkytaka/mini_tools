// ignore_for_file: implicit_call_tearoffs

import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tea_test/mini_tea_test.dart';
import 'package:mini_tools/tools/hash/feature/hash_feature.dart';

void main() {
  group('SyncHashEffectHandler Tests', () {
    const handler = SyncHashEffectHandler();

    test('Handles CountTextHashEffect with non-empty text', () {
      handler.test(
        effect: const CountTextHashEffect('1', HashAlgorithm.md5),
        expectedMessages: [UpdateHashEvent(_md5OfOne)],
      );
    });

    test('Handles CountTextHashEffect with empty text', () {
      handler.test(
        effect: const CountTextHashEffect('', HashAlgorithm.sha256),
        expectedMessages: [const UpdateHashEvent(null)],
      );
    });
  });
}

final _md5OfOne = Uint8List.fromList([
  196,
  202,
  66,
  56,
  160,
  185,
  35,
  130,
  13,
  204,
  80,
  154,
  111,
  117,
  132,
  155,
]);
