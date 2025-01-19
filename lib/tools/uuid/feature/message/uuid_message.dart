import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/uuid_state.dart';

part 'uuid_message.freezed.dart';

@freezed
@immutable
sealed class UuidMessage with _$UuidMessage {
  const factory UuidMessage.updateVersion(UuidVersion version) = UpdateVersionMessage;
  const factory UuidMessage.updateCount(int count) = UpdateCountMessage;
  const factory UuidMessage.generate() = GenerateMessage;
  const factory UuidMessage.setIds(List<String> ids) = SetIdsMessage;
}