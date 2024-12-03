// ignore_for_file: implicit_call_tearoffs

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/common/mini_tea/feature/feature.dart';
import 'package:mini_tools/tools/hash/feature/hash_feature.dart';
import 'package:mocktail/mocktail.dart';

class MockEventEmitter extends Mock implements IEventEmitter<HashEvent> {}

void main() {
  setUpAll(() {
    registerFallbackValue(const UpdateTextEvent(''));
  });

  group('IsolateHashEffectHandler Tests', () {
    const handler = IsolateHashEffectHandler();

    test('Ignores non-IsolateHashEffect', () async {
      final mockEmitter = MockEventEmitter();

      await handler.handle(
        const CountTextHashEffect('', HashAlgorithm.md5),
        mockEmitter,
      );

      // Ensure nothing was emitted
      verifyNever(() => mockEmitter(any()));
    });

    test('Handles CountFileHashEffect with valid file', () async {
      final mockEmitter = MockEventEmitter();

      // Create a temporary file with sample content
      final tempFile = File('${Directory.systemTemp.path}/test_file.txt');
      await tempFile.writeAsBytes([104, 101, 108, 108, 111]); // 'hello'

      const effect = CountFileHashEffect(
        '/path/to/fake_file.txt',
        HashAlgorithm.sha256,
      );

      // Replace the file path in the effect with the temporary file's path
      final fileEffect = CountFileHashEffect(
        tempFile.path,
        effect.algorithm,
      );

      await handler.handle(fileEffect, mockEmitter);

      final expectedHash = HashAlgorithm.sha256.digest.process(
        Uint8List.fromList([104, 101, 108, 108, 111]),
      );

      verify(() => mockEmitter(HashEvent.updateHash(
            expectedHash,
            bytesInFile: 5,
          ))).called(1);

      // Clean up temporary file
      await tempFile.delete();
    });

    test('Handles CountFileHashEffect with an empty file', () async {
      final mockEmitter = MockEventEmitter();

      // Create an empty temporary file
      final tempFile = File('${Directory.systemTemp.path}/empty_test_file.txt');
      await tempFile.create();

      const effect = CountFileHashEffect(
        '/path/to/fake_file.txt',
        HashAlgorithm.sha512,
      );

      // Replace the file path in the effect with the temporary file's path
      final fileEffect = CountFileHashEffect(
        tempFile.path,
        effect.algorithm,
      );

      await handler.handle(fileEffect, mockEmitter);

      final expectedHash = HashAlgorithm.sha512.digest.process(Uint8List(0));

      verify(() => mockEmitter(HashEvent.updateHash(
            expectedHash,
            bytesInFile: 0,
          ))).called(1);

      // Clean up temporary file
      await tempFile.delete();
    });

    test('Handles CountFileHashEffect with a non-existent file', () async {
      final mockEmitter = MockEventEmitter();

      const effect = CountFileHashEffect(
        '/path/to/non_existent_file.txt',
        HashAlgorithm.sha256,
      );

      await expectLater(
        () async => handler.handle(effect, mockEmitter),
        throwsA(isA<FileSystemException>()),
      );

      // Ensure no event is emitted
      verifyNever(() => mockEmitter(any()));
    });
  });
}
