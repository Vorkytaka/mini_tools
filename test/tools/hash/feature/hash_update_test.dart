import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/tools/hash/feature/hash_feature.dart';

void main() {
  group('HashUpdate Tests', () {
    const hashUpdate = HashUpdate();

    test('UpdateTextEvent updates state and triggers effects', () {
      const initialState = HashState(
        input: HashInput.text(text: ''),
        format: HashFormat.base64,
        algorithm: HashAlgorithm.md5,
        hash: null,
        inputBytes: 0,
      );

      const event = UpdateTextEvent('Hello, World!');
      final result = hashUpdate.call(initialState, event);

      final expectedState = initialState.copyWith(
        input: HashInput.text(text: event.text),
        inputBytes: event.text.length,
      );

      expect(result.$1, equals(expectedState));
      expect(
        result.$2,
        contains(CountTextHashEffect(event.text, initialState.algorithm)),
      );
    });

    test('SetFileEvent updates state and triggers effects', () {
      const initialState = HashState(
        input: HashInput.text(text: ''),
        format: HashFormat.base64,
        algorithm: HashAlgorithm.md5,
        hash: null,
        inputBytes: 0,
      );

      const event = SetFileEvent('/path/to/file');
      final result = hashUpdate.call(initialState, event);

      final expectedState = initialState.copyWith(
        input: HashInput.file(path: event.path),
      );

      expect(result.$1, equals(expectedState));
      expect(
        result.$2,
        contains(CountFileHashEffect(event.path, initialState.algorithm)),
      );
    });

    test('DropFileEvent resets state to text input and clears hash', () {
      final initialState = HashState(
        input: const HashInput.file(path: '/path/to/file'),
        format: HashFormat.base64,
        algorithm: HashAlgorithm.md5,
        hash: Uint8List.fromList([1, 2, 3]),
        inputBytes: 100,
      );

      const event = DropFileEvent();
      final result = hashUpdate.call(initialState, event);

      final expectedState = initialState.copyWith(
        input: const HashInput.text(text: ''),
        inputBytes: 0,
        hash: null,
      );

      expect(result.$1, equals(expectedState));
      expect(result.$2, isEmpty);
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
