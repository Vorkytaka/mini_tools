part of 'qr_code_screen.dart';

extension on ErrorCorrectionLevel {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      ErrorCorrectionLevel.L => t.qrCode.correctionLevel.l,
      ErrorCorrectionLevel.M => t.qrCode.correctionLevel.m,
      ErrorCorrectionLevel.Q => t.qrCode.correctionLevel.q,
      ErrorCorrectionLevel.H => t.qrCode.correctionLevel.h,
    };
  }
}

extension on ExportType {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      ExportType.png => t.qrCode.exportType.png,
      ExportType.jpg => t.qrCode.exportType.jpg,
      ExportType.svg => t.qrCode.exportType.svg,
    };
  }
}
