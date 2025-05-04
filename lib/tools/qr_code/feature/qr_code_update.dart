import 'package:mini_tea/feature.dart';

import 'effect/qr_code_effect.dart';
import 'message/qr_code_message.dart';
import 'state/qr_code_state.dart';

Next<QrCodeState, QrCodeEffect> qrCodeUpdate(
  QrCodeState state,
  QrCodeMessage message,
) {
  switch (message) {
    case UpdateInputMessage():
      return next(state: state.copyWith(input: message.text));
    case UpdateCorrectionLevelMessage():
      return next(state: state.copyWith(correctionLevel: message.level));
    case SaveToFileMessage():
      final code = state.code;
      return next(
        effects: [
          if (code != null)
            QrCodeEffect.saveToFile(
              code: code,
              exportType: state.exportType,
              visualData: state.visualData,
            ),
        ],
      );
    case UpdateExportTypeMessage():
      return next(state: state.copyWith(exportType: message.type));
    case CopyToClipboardMessage():
      final code = state.code;
      return next(
        effects: [
          if (code != null)
            QrCodeEffect.copyToClipboard(
              code: code,
              visualData: state.visualData,
            ),
        ],
      );
    case ShapeUpdateMessage():
      return next(
        state: state.copyWith(
          visualData: state.visualData.copyWith(
            shape: message.shape,
          ),
        ),
      );
    case PaddingUpdateMessage():
      return next(
        state: state.copyWith(
          visualData: state.visualData.copyWith(
            paddings: message.padding,
          ),
        ),
      );
  }
}
