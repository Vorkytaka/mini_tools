import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr/qr.dart';

import '../state/qr_code_state.dart';

part 'qr_code_effect.freezed.dart';

@freezed
@immutable
sealed class QrCodeEffect with _$QrCodeEffect {
  const factory QrCodeEffect.saveToFile({
    required QrCode code,
    required ExportType exportType,
    required QrCodeVisualData visualData,
  }) = SaveToFileEffect;

  const factory QrCodeEffect.copyToClipboard({
    required QrCode code,
    required QrCodeVisualData visualData,
  }) = CopyToClipboardEffect;
}
