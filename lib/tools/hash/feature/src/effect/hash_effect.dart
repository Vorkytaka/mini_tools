import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/hash_state.dart';

part 'hash_effect.freezed.dart';

sealed class HashEffect {}

@immutable
@freezed
@Implements<HashEffect>()
sealed class SyncHashEffect with _$SyncHashEffect implements HashEffect {
  const factory SyncHashEffect.textHash(
    String text,
    HashAlgorithm algorithm,
  ) = CountTextHashEffect;
}

@immutable
@freezed
@Implements<HashEffect>()
sealed class IsolateHashEffect with _$IsolateHashEffect implements HashEffect {
  const factory IsolateHashEffect.fileHash(
    String path,
    HashAlgorithm algorithm,
  ) = CountFileHashEffect;
}
