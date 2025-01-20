import 'dart:async';

import 'package:mini_tea/feature.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

import 'effect/uuid_effect.dart';
import 'message/uuid_message.dart';
import 'state/uuid_state.dart';

final class UuidEffectHandler
    implements EffectHandler<UuidEffect, UuidMessage> {
  late final Uuid _uuid;

  UuidEffectHandler();

  @override
  Future<void> call(
    UuidEffect effect,
    MsgEmitter<UuidMessage> emit,
  ) {
    switch (effect) {
      case InitEffect():
        return _init(effect, emit);
      case GenerateEffect():
        return _generate(effect, emit);
    }
  }

  Future<void> _init(
    InitEffect effect,
    MsgEmitter<UuidMessage> emit,
  ) async {
    final options = GlobalOptions(CryptoRNG());
    _uuid = Uuid(goptions: options);
  }

  Future<void> _generate(
    GenerateEffect effect,
    MsgEmitter<UuidMessage> emit,
  ) async {
    final ids = List.generate(
      effect.count,
      (i) => effect.version.generate(
        generator: _uuid,
        namespace: effect.namespace,
        name: effect.name,
      ),
      growable: false,
    );

    emit(UuidMessage.setIds(ids));
  }
}

extension on UuidVersion {
  String generate({
    required Uuid generator,
    required String namespace,
    required String name,
  }) {
    final version = this;
    switch (version) {
      case UuidVersion.v1:
        return generator.v1();
      case UuidVersion.v4:
        return generator.v4();
      case UuidVersion.v5:
        return generator.v5(namespace, name);
    }
  }
}
