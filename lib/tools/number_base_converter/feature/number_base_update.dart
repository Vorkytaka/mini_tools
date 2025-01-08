part of 'number_base_feature.dart';

Next<NumberBaseState, void> _updateNumberBase(
  NumberBaseState state,
  NumberBaseMessage event,
) {
  switch (event) {
    case UpdateInputMessage():
      return _updateInputHandle(state, event);
  }
}

Next<NumberBaseState, void> _updateInputHandle(
  NumberBaseState state,
  UpdateInputMessage event,
) {
  final bigInt = switch (event) {
    UpdateBase2Message() => BigInt.tryParse(event.input, radix: 2),
    UpdateBase8Message() => BigInt.tryParse(event.input, radix: 8),
    UpdateBase10Message() => BigInt.tryParse(event.input, radix: 10),
    UpdateBase16Message() => BigInt.tryParse(event.input, radix: 16),
  };

  String base2, base8, base10, base16;
  if (bigInt != null) {
    base2 = bigInt.toRadixString(2);
    base8 = bigInt.toRadixString(8);
    base10 = bigInt.toRadixString(10);
    base16 = bigInt.toRadixString(16).toUpperCase();
  } else {
    base2 = '';
    base8 = '';
    base10 = '';
    base16 = '';
  }

  // We need this, so currently focused input field will save any input
  // Even wrong one
  switch (event) {
    case UpdateBase2Message():
      base2 = event.input;
      break;
    case UpdateBase8Message():
      base8 = event.input;
      break;
    case UpdateBase10Message():
      base10 = event.input;
      break;
    case UpdateBase16Message():
      base16 = event.input;
      break;
  }

  final newState = state.copyWith(
    base2: base2,
    base8: base8,
    base10: base10,
    base16: base16,
    value: bigInt,
  );

  return (newState, const []);
}
