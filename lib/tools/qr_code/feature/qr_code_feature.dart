import 'package:mini_tea/feature.dart';

import 'message/qr_code_message.dart';
import 'qr_code_update.dart';
import 'state/qr_code_state.dart';

typedef QrCodeFeature = Feature<QrCodeState, QrCodeMessage, void>;

QrCodeFeature qrCodeFeatureFactory() => QrCodeFeature(
      initialState: QrCodeState.initialState(),
      update: qrCodeUpdate,
    );
