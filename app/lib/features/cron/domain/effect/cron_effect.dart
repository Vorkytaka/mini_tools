import 'package:freezed_annotation/freezed_annotation.dart';

part 'cron_effect.freezed.dart';

@freezed
@immutable
sealed class CronEffect with _$CronEffect {}
