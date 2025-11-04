import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_base_effect.freezed.dart';

@freezed
@immutable
sealed class NumberBaseEffect with _$NumberBaseEffect {}
