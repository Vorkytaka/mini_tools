import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr/qr.dart';

import '../state/qr_code_state.dart';

part 'qr_code_effect.freezed.dart';

@immutable
sealed class QrCodeEffect {
  const factory QrCodeEffect.saveToFile({
    required QrCode code,
    required ExportType exportType,
    required QrCodeVisualData visualData,
  }) = SaveToFileEffect;

  const factory QrCodeEffect.copyToClipboard({
    required QrCode code,
    required QrCodeVisualData visualData,
  }) = CopyToClipboardEffect;

  const factory QrCodeEffect.saveState({
    required QrCodeState state,
  }) = _SaveStateEffect;

  const factory QrCodeEffect.loadState() = _LoadStateEffect;
}

@freezed
@immutable
sealed class ExportEffect with _$ExportEffect implements QrCodeEffect {
  const factory ExportEffect.saveToFile({
    required QrCode code,
    required ExportType exportType,
    required QrCodeVisualData visualData,
  }) = SaveToFileEffect;

  const factory ExportEffect.copyToClipboard({
    required QrCode code,
    required QrCodeVisualData visualData,
  }) = CopyToClipboardEffect;
}

@freezed
@immutable
class SaveStateEffect with _$SaveStateEffect implements QrCodeEffect {
  const factory SaveStateEffect({
    required QrCodeState state,
  }) = _SaveStateEffect;
}

@freezed
@immutable
class LoadStateEffect with _$LoadStateEffect implements QrCodeEffect {
  const factory LoadStateEffect() = _LoadStateEffect;
}
