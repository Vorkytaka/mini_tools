import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_base_state.freezed.dart';

@freezed
@immutable
class NumberBaseState with _$NumberBaseState {
  @Assert('customBase >= 2 && customBase <= 36')
  const factory NumberBaseState({
    required String base2,
    required String base8,
    required String base10,
    required String base16,
    required int customBase,
    required String customBaseValue,
    required BigInt? value,
  }) = _NumberBaseState;

  factory NumberBaseState.init() => const NumberBaseState(
        base2: '',
        base8: '',
        base10: '',
        base16: '',
        customBase: 12,
        customBaseValue: '',
        value: null,
      );
}
