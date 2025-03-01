import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr/qr.dart';

part 'qr_code_effect.freezed.dart';

@freezed
@immutable
sealed class QrCodeEffect with _$QrCodeEffect {
  const factory QrCodeEffect.saveToFile({
    required QrCode code,
  }) = SaveToFileEffect;
}
