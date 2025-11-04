part of 'number_base_feature.dart';

Next<NumberBaseState, NumberBaseEffect> _updateNumberBase(
  NumberBaseState state,
  NumberBaseMessage message,
) {
  switch (message) {
    case UpdateInputMessage():
      return _updateInputHandle(state, message);
    case UpdateCustomBaseMessage():
      return _updateCustomBase(state, message);
    case SetStateMessage():
      return _setState(state, message);
  }
}

Next<NumberBaseState, NumberBaseEffect> _setState(
  NumberBaseState state,
  SetStateMessage message,
) {
  return next(state: message.state);
}

Next<NumberBaseState, NumberBaseEffect> _updateCustomBase(
  NumberBaseState state,
  UpdateCustomBaseMessage message,
) {
  final newState = state.copyWith(customBase: message.base);
  return _updateInputHandle(
    newState,
    UpdateInputMessage.custom(state.customBaseValue),
  );
}

Next<NumberBaseState, NumberBaseEffect> _updateInputHandle(
  NumberBaseState state,
  UpdateInputMessage message,
) {
  final bigInt = switch (message) {
    UpdateBase2Message() => BigInt.tryParse(message.input, radix: 2),
    UpdateBase8Message() => BigInt.tryParse(message.input, radix: 8),
    UpdateBase10Message() => BigInt.tryParse(message.input, radix: 10),
    UpdateBase16Message() => BigInt.tryParse(message.input, radix: 16),
    UpdateCustomMessage() => BigInt.tryParse(
      message.input,
      radix: state.customBase,
    ),
  };

  String base2, base8, base10, base16, custom;
  if (bigInt != null) {
    base2 = bigInt.toRadixString(2);
    base8 = bigInt.toRadixString(8);
    base10 = bigInt.toRadixString(10);
    base16 = bigInt.toRadixString(16).toUpperCase();
    custom = bigInt.toRadixString(state.customBase).toUpperCase();
  } else {
    base2 = '';
    base8 = '';
    base10 = '';
    base16 = '';
    custom = '';
  }

  // We need this, so currently focused input field will save any input
  // Even wrong one
  switch (message) {
    case UpdateBase2Message():
      base2 = message.input;
      break;
    case UpdateBase8Message():
      base8 = message.input;
      break;
    case UpdateBase10Message():
      base10 = message.input;
      break;
    case UpdateBase16Message():
      base16 = message.input;
      break;
    case UpdateCustomMessage():
      custom = message.input;
      break;
  }

  final newState = state.copyWith(
    base2: base2,
    base8: base8,
    base10: base10,
    base16: base16,
    customBaseValue: custom,
    value: bigInt,
  );

  return next(state: newState, effects: [NumberBaseEffect.saveState(newState)]);
}
