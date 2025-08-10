import 'package:image/image.dart' as img;
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../common/color.dart';
import '../state/qr_code_state.dart';

abstract interface class OldQrCodeExporter {
  const OldQrCodeExporter._();

  static Future<img.Image?> generateBytes({
    required QrCode qrCode,
    required QrCodeVisualData visualData,
  }) async {
    final painter = QrPainter.withQr(
      qr: qrCode,
      gapless: true,
      dataModuleStyle: visualData.toModuleStyle,
      eyeStyle: visualData.toEyeStyle,
    );
    final data = await painter.toImageData(600);

    if (data == null) {
      return null;
    }

    final qrImage = img.decodePng(data.buffer.asUint8List());

    if (qrImage == null) {
      return null;
    }

    img.Image image = img.Image(height: 600, width: 600);
    image = img.fill(image, color: visualData.backgroundColor.toImageColor);
    return img.compositeImage(image, qrImage);
  }
}
