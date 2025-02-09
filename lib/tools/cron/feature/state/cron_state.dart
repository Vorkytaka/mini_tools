import 'package:freezed_annotation/freezed_annotation.dart';

import '../parser/cron_parser.dart';
import '../parser/exception/cron_exception.dart';

part 'cron_state.freezed.dart';

@freezed
@immutable
class CronState with _$CronState {
  const factory CronState({
    required String input,
    required CronResult result,
  }) = _CronState;

  factory CronState.init() => const CronState(
        input: '',
        result: CronResult.idle(),
      );
}

extension CronStateUtils on CronState {
  Cron? get cron => result.maybeWhen(
        success: (cron) => cron,
        orElse: () => null,
      );
}

@freezed
@immutable
sealed class CronResult with _$CronResult {
  const factory CronResult.idle() = _Idle;

  const factory CronResult.success(Cron cron) = _Success;

  const factory CronResult.failure(CronException exception) = _Failure;
}
