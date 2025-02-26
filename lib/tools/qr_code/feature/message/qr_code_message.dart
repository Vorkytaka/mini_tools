import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr/qr.dart';

import '../state/qr_code_state.dart';

part 'qr_code_message.freezed.dart';

@freezed
@immutable
sealed class QrCodeMessage with _$QrCodeMessage {
  const factory QrCodeMessage.updateInput(String text) = UpdateInputMessage;

  const factory QrCodeMessage.updateCorrectionLevel(
      ErrorCorrectionLevel level) = UpdateCorrectionLevelMessage;
}
