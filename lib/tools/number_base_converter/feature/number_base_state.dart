part of 'number_base_feature.dart';

@immutable
final class NumberBaseState {
  final String base2;
  final String base8;
  final String base10;
  final String base16;
  final BigInt? value;

  const NumberBaseState({
    required this.base2,
    required this.base8,
    required this.base10,
    required this.base16,
    required this.value,
  });

  const NumberBaseState.init()
      : base2 = '',
        base8 = '',
        base10 = '',
        base16 = '',
        value = null;

  NumberBaseState copyWith({
    String? base2,
    String? base8,
    String? base10,
    String? base16,
    BigInt? value,
  }) =>
      NumberBaseState(
        base2: base2 ?? this.base2,
        base8: base8 ?? this.base8,
        base10: base10 ?? this.base10,
        base16: base16 ?? this.base16,
        value: value ?? this.value,
      );

  NumberBaseState clearValue({
    String? base2,
    String? base8,
    String? base10,
    String? base16,
  }) =>
      NumberBaseState(
        base2: base2 ?? this.base2,
        base8: base8 ?? this.base8,
        base10: base10 ?? this.base10,
        base16: base16 ?? this.base16,
        value: null,
      );
}
