import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr/qr.dart';

part 'qr_code_state.freezed.dart';

enum ErrorCorrectionLevel {
  L, // Low 7%
  M, // Medium 15%
  Q, // Quartile 25%
  H, // High 30%
}

enum ExportType {
  png,
  jpg,
  svg,
}

extension ErrorCorrectionLevelUtils on ErrorCorrectionLevel {
  int get toInt => switch (this) {
        ErrorCorrectionLevel.L => QrErrorCorrectLevel.L,
        ErrorCorrectionLevel.M => QrErrorCorrectLevel.M,
        ErrorCorrectionLevel.Q => QrErrorCorrectLevel.Q,
        ErrorCorrectionLevel.H => QrErrorCorrectLevel.H,
      };
}

extension ExportTypeUtils on ExportType {
  String get extension => switch (this) {
        ExportType.png => 'png',
        ExportType.jpg => 'jpg',
        ExportType.svg => 'svg',
      };
}

@freezed
@immutable
class QrCodeState with _$QrCodeState {
  const factory QrCodeState({
    required QrCode? code,
    required String input,
    required ErrorCorrectionLevel correctionLevel,
    required ExportType exportType,
    required QrCodeVisualData visualData,
  }) = _QrCodeState;

  factory QrCodeState.initialState() => const QrCodeState(
        code: null,
        input: '',
        correctionLevel: ErrorCorrectionLevel.H,
        exportType: ExportType.png,
        visualData: QrCodeVisualData(
          backgroundColor: Color(0xffffffff),
          foregroundColor: Color(0xff000000),
          shape: QrCodeShape.square,
          paddings: EdgeInsets.zero,
        ),
      );
}

enum QrCodeShape {
  square,
  circle,
}

@freezed
@immutable
class QrCodeVisualData with _$QrCodeVisualData {
  const factory QrCodeVisualData({
    required Color backgroundColor,
    required Color foregroundColor,
    required QrCodeShape shape,
    required EdgeInsets paddings,
  }) = _QrCodeVisualData;
}
