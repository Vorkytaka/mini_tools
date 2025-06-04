part of 'qr_code_screen.dart';

extension ErrorCorrectionLevelUI on ErrorCorrectionLevel {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      ErrorCorrectionLevel.L => t.qrCode.correctionLevel.l,
      ErrorCorrectionLevel.M => t.qrCode.correctionLevel.m,
      ErrorCorrectionLevel.Q => t.qrCode.correctionLevel.q,
      ErrorCorrectionLevel.H => t.qrCode.correctionLevel.h,
    };
  }

  String formatShort(BuildContext context) {
    return switch (this) {
      ErrorCorrectionLevel.L => 'L',
      ErrorCorrectionLevel.M => 'M',
      ErrorCorrectionLevel.Q => 'Q',
      ErrorCorrectionLevel.H => 'H',
    };
  }

  String formatPercentages(BuildContext context) {
    return switch (this) {
      ErrorCorrectionLevel.L => '7%',
      ErrorCorrectionLevel.M => '15%',
      ErrorCorrectionLevel.Q => '25%',
      ErrorCorrectionLevel.H => '30%',
    };
  }
}

extension ExportTypeX on ExportType {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      ExportType.png => t.qrCode.exportType.png,
      ExportType.jpg => t.qrCode.exportType.jpg,
    };
  }
}

extension QrCodeShapeUI on QrCodeShape {
  IconData get icon {
    return switch (this) {
      QrCodeShape.smooth => Icons.rounded_corner,
      QrCodeShape.square => Icons.square_outlined,
      QrCodeShape.circle => Icons.circle_outlined,
    };
  }
}
