import 'package:freezed_annotation/freezed_annotation.dart';

import '../state/qr_code_state.dart';

part 'qr_code_message.freezed.dart';

@freezed
@immutable
sealed class QrCodeMessage with _$QrCodeMessage {
  const factory QrCodeMessage.updateInput(String text) = UpdateInputMessage;

  const factory QrCodeMessage.updateCorrectionLevel(
      ErrorCorrectionLevel level) = UpdateCorrectionLevelMessage;

  const factory QrCodeMessage.saveToFile() = SaveToFileMessage;

  const factory QrCodeMessage.updateExportType(ExportType type) =
      UpdateExportTypeMessage;

  const factory QrCodeMessage.copyToClipboard() = CopyToClipboardMessage;
}
