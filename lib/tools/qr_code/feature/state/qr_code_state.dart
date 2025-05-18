import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../common/json.dart';

part 'qr_code_state.freezed.dart';

part 'qr_code_state.g.dart';

enum ErrorCorrectionLevel {
  L, // Low 7%
  M, // Medium 15%
  Q, // Quartile 25%
  H, // High 30%
}

enum ExportType {
  png,
  jpg,
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
      };
}

@freezed
@immutable
class QrCodeState with _$QrCodeState {
  static const minExportSize = 300;
  static const maxExportSize = 4000;

  const factory QrCodeState({
    required String input,
    required ErrorCorrectionLevel correctionLevel,
    required ExportType exportType,
    required QrCodeVisualData visualData,
    @Assert('exportDensity > 0') @Default(600) int exportSize,
  }) = _QrCodeState;

  const QrCodeState._();

  factory QrCodeState.fromJson(Map<String, dynamic> json) =>
      _$QrCodeStateFromJson(json);

  static const initialState = QrCodeState(
    input: '',
    correctionLevel: ErrorCorrectionLevel.H,
    exportType: ExportType.png,
    visualData: QrCodeVisualData(
      backgroundColor: Color(0xffffffff),
      foregroundColor: Color(0xff000000),
      shape: QrCodeShape.smooth,
      paddings: EdgeInsets.zero,
    ),
  );

  QrCode? get code {
    if (input.isEmpty) {
      return null;
    }

    try {
      return QrCode.fromData(
        data: input,
        errorCorrectLevel: correctionLevel.toInt,
      );
    } on Object catch (_) {
      return null;
    }
  }
}

enum QrCodeShape {
  smooth,
  square,
  circle,
}

@freezed
@immutable
class QrCodeVisualData with _$QrCodeVisualData {
  const factory QrCodeVisualData({
    @ColorConverter() required Color backgroundColor,
    @ColorConverter() required Color foregroundColor,
    required QrCodeShape shape,
    @EdgeInsetsConverter() required EdgeInsets paddings,
  }) = _QrCodeVisualData;

  factory QrCodeVisualData.fromJson(Map<String, dynamic> json) =>
      _$QrCodeVisualDataFromJson(json);
}

extension QrCodeVisualDataUtils on QrCodeVisualData {
  QrEyeStyle get toEyeStyle => QrEyeStyle(
        color: foregroundColor,
        eyeShape: shape.toEyeShape,
      );

  QrDataModuleStyle get toModuleStyle => QrDataModuleStyle(
        color: foregroundColor,
        dataModuleShape: shape.toModuleShape,
      );
}

extension on QrCodeShape {
  QrEyeShape get toEyeShape => switch (this) {
        QrCodeShape.square => QrEyeShape.square,
        QrCodeShape.circle => QrEyeShape.circle,
        QrCodeShape.smooth => QrEyeShape.square,
      };

  QrDataModuleShape get toModuleShape => switch (this) {
        QrCodeShape.square => QrDataModuleShape.square,
        QrCodeShape.circle => QrDataModuleShape.circle,
        QrCodeShape.smooth => QrDataModuleShape.square,
      };
}
