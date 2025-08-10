import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tea_test/mini_tea_test.dart';
import 'package:mini_tools/tools/hash/feature/hash_feature.dart';

void main() {
  group('HashUpdate Tests', () {
    const hashUpdate = HashUpdate();

    test('UpdateTextEvent updates state and triggers effects', () {
      hashUpdate.test(
        state: const HashState(
          input: HashInput.text(text: ''),
          format: HashFormat.base64,
          algorithm: HashAlgorithm.md5,
          hash: null,
          inputBytes: 0,
        ),
        message: const UpdateTextEvent('Hello, World!'),
        expectedState: const HashState(
          input: HashInput.text(text: 'Hello, World!'),
          format: HashFormat.base64,
          algorithm: HashAlgorithm.md5,
          hash: null,
          inputBytes: 13,
        ),
        expectedEffects: [
          const CountTextHashEffect('Hello, World!', HashAlgorithm.md5),
        ],
      );
    });

    test('SetFileEvent updates state and triggers effects', () {
      hashUpdate.test(
        state: const HashState(
          input: HashInput.text(text: ''),
          format: HashFormat.base64,
          algorithm: HashAlgorithm.md5,
          hash: null,
          inputBytes: 0,
        ),
        message: const SetFileEvent('/path/to/file'),
        expectedState: const HashState(
          input: HashInput.file(path: '/path/to/file'),
          format: HashFormat.base64,
          algorithm: HashAlgorithm.md5,
          hash: null,
          inputBytes: 0,
        ),
        expectedEffects: [
          const CountFileHashEffect('/path/to/file', HashAlgorithm.md5),
        ],
      );
    });

    test('DropFileEvent resets state to text input and clears hash', () {
      hashUpdate.test(
        state: HashState(
          input: const HashInput.file(path: '/path/to/file'),
          format: HashFormat.base64,
          algorithm: HashAlgorithm.md5,
          hash: Uint8List.fromList([1, 2, 3]),
          inputBytes: 100,
        ),
        message: const DropFileEvent(),
        expectedState: const HashState(
          input: HashInput.text(text: ''),
          format: HashFormat.base64,
          algorithm: HashAlgorithm.md5,
          hash: null,
          inputBytes: 0,
        ),
      );
    });

    test('UpdateFormatEvent updates format', () {
      const initialState = HashState(
        input: HashInput.text(text: ''),
        format: HashFormat.base64,
        algorithm: HashAlgorithm.md5,
        hash: null,
        inputBytes: 0,
      );

      const event = UpdateFormatEvent(HashFormat.hex);
      final result = hashUpdate.call(initialState, event);

      final expectedState = initialState.copyWith(format: event.format);

      expect(result.$1, equals(expectedState));
      expect(result.$2, isEmpty);
    });

    test('HashUpdateEvent updates hash and bytes', () {
      const initialState = HashState(
        input: HashInput.text(text: 'Hello, World!'),
        format: HashFormat.base64,
        algorithm: HashAlgorithm.md5,
        hash: null,
        inputBytes: 12,
      );

      final hash = Uint8List.fromList([1, 2, 3]);
      final event = UpdateHashEvent(hash, bytesInFile: 50);
      final result = hashUpdate.call(initialState, event);

      final expectedState = initialState.copyWith(
        hash: event.hash,
        inputBytes: event.bytesInFile!,
      );

      expect(result.$1, equals(expectedState));
      expect(result.$2, isEmpty);
    });

    test('UpdateAlgorithmEvent updates algorithm and triggers effects', () {
      const initialState = HashState(
        input: HashInput.text(text: 'Hello, World!'),
        format: HashFormat.base64,
        algorithm: HashAlgorithm.md5,
        hash: null,
        inputBytes: 12,
      );

      const event = UpdateAlgorithmEvent(HashAlgorithm.sha256);
      final result = hashUpdate.call(initialState, event);

      final expectedState = initialState.copyWith(algorithm: event.algorithm);

      expect(result.$1, equals(expectedState));
      expect(
        result.$2,
        contains(CountTextHashEffect('Hello, World!', event.algorithm)),
      );
    });
  });
}
