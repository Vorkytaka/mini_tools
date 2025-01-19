import 'package:freezed_annotation/freezed_annotation.dart';

part 'uuid_state.freezed.dart';

@freezed
@immutable
sealed class UuidVersion with _$UuidVersion {
  const factory UuidVersion.v1() = UuidV1;

  const factory UuidVersion.v4() = UuidV4;

  const factory UuidVersion.v5({
    required String namespace,
    required String name,
  }) = UuidV5;
}

@freezed
@immutable
abstract class UuidState with _$UuidState {
  @Assert('count > 0')
  const factory UuidState({
    required UuidVersion version,
    required int count,
    required List<String> ids,
  }) = _UuidState;
}
