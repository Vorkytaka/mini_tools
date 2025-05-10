import 'package:image/image.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../../common.dart';
import '../state/qr_code_state.dart';

abstract interface class NewQrCodeExporter {
  const NewQrCodeExporter._();

  static Future<Image?> generateBytes({
    required QrCode qrCode,
    required QrCodeVisualData visualData,
  }) async {
    final image = QrImage(qrCode);
    final bytes = await image.toImageAsBytes(
      size: 600,
      decoration: PrettyQrDecoration(
        background: visualData.backgroundColor,
        shape: visualData.qrCodeShape,
      ),
    );
    if (bytes == null) {
      return null;
    }
    return decodePng(bytes.buffer.asUint8List());
  }
}
