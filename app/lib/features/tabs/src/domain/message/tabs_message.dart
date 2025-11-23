import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/tabs_state.dart';

part 'tabs_message.freezed.dart';

@freezed
@immutable
sealed class TabsMessage with _$TabsMessage {
  const factory TabsMessage.createTab({required String toolId}) =
      CreateTabMessage;

  const factory TabsMessage.createdTab({required TabItem tab}) =
      CreatedTabMessage;

  const factory TabsMessage.deleteTab({required String tabId}) =
      DeleteTabMessage;

  const factory TabsMessage.selectTab({required String tabId}) =
      SelectTabMessage;
}
