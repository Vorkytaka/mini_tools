import 'package:mini_tea/feature.dart';
import 'package:qr/qr.dart';

import 'effect/qr_code_effect.dart';
import 'message/qr_code_message.dart';
import 'state/qr_code_state.dart';

Next<QrCodeState, QrCodeEffect> qrCodeUpdate(
  QrCodeState state,
  QrCodeMessage message,
) {
  switch (message) {
    case UpdateInputMessage():
      final code = parseQrCode(message.text, state.correctionLevel);
      return next(
        state: state.copyWith(
          input: message.text,
          code: code,
        ),
      );
    case UpdateCorrectionLevelMessage():
      final code = parseQrCode(state.input, message.level);
      return next(
        state: state.copyWith(
          code: code,
          correctionLevel: message.level,
        ),
      );
    case SaveToFileMessage():
      final code = state.code;
      return next(
        effects: [
          if (code != null) QrCodeEffect.saveToFile(code: code),
        ],
      );
  }
}

QrCode? parseQrCode(String input, ErrorCorrectionLevel level) {
  if (input.isEmpty) {
    return null;
  }

  try {
    return QrCode.fromData(
      data: input,
      errorCorrectLevel: level.toInt,
    );
  } on Object catch (_) {
    return null;
  }
}
