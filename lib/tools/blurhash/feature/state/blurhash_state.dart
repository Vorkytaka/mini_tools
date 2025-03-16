import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blurhash_state.freezed.dart';

@freezed
@immutable
class BlurhashState with _$BlurhashState {
  const factory BlurhashState({
    required String blurhash,
    required ImageProvider? origin,
  }) = _BlurhashState;

  static const defaultValue = BlurhashState(
    blurhash: '',
    origin: null,
  );
}
