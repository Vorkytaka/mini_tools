import 'package:freezed_annotation/freezed_annotation.dart';

part 'cron_message.freezed.dart';

@freezed
@immutable
sealed class CronMessage with _$CronMessage {
  const factory CronMessage.inputUpdate(String input) = InputUpdateMessage;
}