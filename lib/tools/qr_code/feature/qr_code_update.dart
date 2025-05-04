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
      final newState = state.copyWith(input: message.text);
      return next(
        state: newState,
        effects: [SaveStateEffect(state: newState)],
      );
    case UpdateCorrectionLevelMessage():
      final newState = state.copyWith(correctionLevel: message.level);
      return next(
        state: newState,
        effects: [SaveStateEffect(state: newState)],
      );
    case SaveToFileMessage():
      final code = state.code;
      return next(
        effects: [
          if (code != null)
            ExportEffect.saveToFile(
              code: code,
              exportType: state.exportType,
              visualData: state.visualData,
            ),
        ],
      );
    case UpdateExportTypeMessage():
      final newState = state.copyWith(exportType: message.type);
      return next(
        state: newState,
        effects: [SaveStateEffect(state: newState)],
      );
    case CopyToClipboardMessage():
      final code = state.code;
      return next(
        effects: [
          if (code != null)
            ExportEffect.copyToClipboard(
              code: code,
              visualData: state.visualData,
            ),
        ],
      );
    case ShapeUpdateMessage():
      final newState = state.copyWith(
        visualData: state.visualData.copyWith(
          shape: message.shape,
        ),
      );
      return next(
        state: newState,
        effects: [SaveStateEffect(state: newState)],
      );
    case PaddingUpdateMessage():
      final newState = state.copyWith(
        visualData: state.visualData.copyWith(
          paddings: message.padding,
        ),
      );
      return next(
        state: newState,
        effects: [SaveStateEffect(state: newState)],
      );
    case LoadedStateMessage():
      return next(state: message.state);
  }
}
