import 'package:pretty_qr_code/pretty_qr_code.dart';

import 'feature/state/qr_code_state.dart';

extension QrCodeVisualDataUtils on QrCodeVisualData {
  PrettyQrShape get qrCodeShape {
    return switch (shape) {
      QrCodeShape.square => PrettyQrSmoothSymbol(
        roundFactor: 0,
        color: foregroundColor,
      ),
      QrCodeShape.circle => PrettyQrSquaresSymbol(color: foregroundColor),
      QrCodeShape.smooth => PrettyQrSmoothSymbol(
        roundFactor: 1,
        color: foregroundColor,
      ),
    };
  }
}
