import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import '../../../../../common/mini_tea/effect_handler/isolate_effect_handler.dart';
import '../../../../../common/mini_tea/feature/feature.dart';
import '../effect/hash_effect.dart';
import '../event/hash_event.dart';
import '../hash_feature.dart';

final class IsolateHashEffectHandler
    extends IsolateEffectHandler<IsolateHashEffect, HashEvent> {
  const IsolateHashEffectHandler();

  @override
  Future<void> handle(
    IsolateHashEffect effect,
    MsgEmitter<HashEvent> emit,
  ) async {
    switch (effect) {
      case CountFileHashEffect():
        await _fileHash(effect, emit);
    }
  }

  static FutureOr<void> _fileHash(
    CountFileHashEffect effect,
    MsgEmitter<HashEvent> emit,
  ) async {
    final digest = effect.algorithm.digest;
    final path = effect.path;

    final file = File(path);
    final stream = file.openRead();

    int bytesCount = 0;
    await for (final chunk in stream) {
      final bytes = chunk is Uint8List ? chunk : Uint8List.fromList(chunk);
      bytesCount += chunk.length;
      digest.update(bytes, 0, bytes.length);
    }

    final hash = Uint8List(digest.digestSize);
    digest.doFinal(hash, 0);

    emit(HashEvent.updateHash(hash, bytesInFile: bytesCount));
  }
}
