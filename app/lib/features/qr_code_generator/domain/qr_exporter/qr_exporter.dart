import 'package:image/image.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../state/qr_code_state.dart';

typedef QrCodeBytesExporter =
    Future<Image?> Function({
      required QrCode qrCode,
      required QrCodeVisualData visualData,
      required int exportSize,
    });
