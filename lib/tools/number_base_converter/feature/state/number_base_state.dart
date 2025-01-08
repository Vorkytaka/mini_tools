import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_base_state.freezed.dart';

@freezed
@immutable
class NumberBaseState with _$NumberBaseState {
  const factory NumberBaseState({
    required String base2,
    required String base8,
    required String base10,
    required String base16,
    required BigInt? value,
  }) = _NumberBaseState;

  factory NumberBaseState.init() => const NumberBaseState(
        base2: '',
        base8: '',
        base10: '',
        base16: '',
        value: null,
      );
}
