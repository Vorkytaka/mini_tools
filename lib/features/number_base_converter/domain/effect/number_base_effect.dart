import 'package:freezed_annotation/freezed_annotation.dart';

import '../number_base_feature.dart';

part 'number_base_effect.freezed.dart';

@freezed
@immutable
sealed class NumberBaseEffect with _$NumberBaseEffect {
  const factory NumberBaseEffect.saveState(NumberBaseState state) =
      SaveStateEffect;

  const factory NumberBaseEffect.loadState() = LoadStateEffect;
}
