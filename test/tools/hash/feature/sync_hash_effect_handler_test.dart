// ignore_for_file: implicit_call_tearoffs

import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/common/mini_tea/feature/feature.dart';
import 'package:mini_tools/tools/hash/feature/hash_feature.dart';
import 'package:mocktail/mocktail.dart';

class MockEventEmitter extends Mock implements IMsgEmitter<HashEvent> {}

void main() {
  setUpAll(() {
    registerFallbackValue(const UpdateTextEvent(''));
  });

  group('SyncHashEffectHandler Tests', () {
    const handler = SyncHashEffectHandler();

    test('Handles CountTextHashEffect with non-empty text', () {
      final mockEmitter = MockEventEmitter();
      const effect = CountTextHashEffect(
        '1',
        HashAlgorithm.md5,
      );

      handler.handle(effect, mockEmitter);

      // Verify the correct event was emitted
      verify(() => mockEmitter(UpdateHashEvent(_md5OfOne))).called(1);
    });

    test('Handles CountTextHashEffect with empty text', () {
      final mockEmitter = MockEventEmitter();
      const effect = CountTextHashEffect(
        '',
        HashAlgorithm.sha256,
      );

      handler.handle(effect, mockEmitter);

      // Verify that a null hash is emitted
      verify(() => mockEmitter(const UpdateHashEvent(null))).called(1);
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
