import 'package:freezed_annotation/freezed_annotation.dart';

import '../parser/cron_parser.dart';

part 'cron_state.freezed.dart';

@freezed
@immutable
class CronState with _$CronState {
  const factory CronState({
    required String input,
    required Cron? cron,
  }) = _CronState;
}
