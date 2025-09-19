import 'dart:typed_data';

import 'package:mini_tea/effect_handlers.dart';
import 'package:mini_tea/feature.dart';

import '../effect/hash_effect.dart';
import '../event/hash_event.dart';
import '../hash_feature.dart';

final class SyncHashEffectHandler
    extends SyncEffectHandler<SyncHashEffect, HashEvent> {
  const SyncHashEffectHandler();

  @override
  Null handle(SyncHashEffect effect, MsgEmitter<HashEvent> emit) {
    switch (effect) {
      case CountTextHashEffect():
        _textHash(effect, emit);
        break;
    }
  }

  static void _textHash(
    CountTextHashEffect effect,
    MsgEmitter<HashEvent> emit,
  ) {
    final Uint8List? hash;
    if (effect.text.isEmpty) {
      hash = null;
    } else {
      final digest = effect.algorithm.digest;
      final text = effect.text;

      final data = Uint8List.fromList(text.codeUnits);
      hash = digest.process(data);
    }

    emit(HashEvent.updateHash(hash));
  }
}
