import 'package:freezed_annotation/freezed_annotation.dart';

part 'uuid_state.freezed.dart';

enum UuidVersion { v1, v4, v5 }

@freezed
@immutable
abstract class UuidState with _$UuidState {
  @Assert('count > 0')
  const factory UuidState({
    required UuidVersion version,
    required String namespace,
    required String name,
    required int count,
    required List<String> ids,
    required bool isLowerCase,
  }) = _UuidState;

  factory UuidState.init() => const UuidState(
    version: UuidVersion.v4,
    namespace: '',
    name: '',
    count: 1,
    ids: [],
    isLowerCase: false,
  );
}
