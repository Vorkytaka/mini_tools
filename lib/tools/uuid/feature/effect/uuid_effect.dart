import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/uuid_state.dart';

part 'uuid_effect.freezed.dart';

@freezed
@immutable
sealed class UuidEffect with _$UuidEffect {
  const factory UuidEffect.init() = InitEffect;

  const factory UuidEffect.generate({
    required UuidVersion version,
    required int count,
  }) = GenerateEffect;
}
