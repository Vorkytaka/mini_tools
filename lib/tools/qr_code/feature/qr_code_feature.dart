import 'package:mini_tea/feature.dart';

import 'effect/qr_code_effect.dart';
import 'message/qr_code_message.dart';
import 'qr_code_effect_handler.dart';
import 'qr_code_update.dart';
import 'state/qr_code_state.dart';

typedef QrCodeFeature = Feature<QrCodeState, QrCodeMessage, QrCodeEffect>;

QrCodeFeature qrCodeFeatureFactory() => QrCodeFeature(
      initialState: QrCodeState.initialState,
      update: qrCodeUpdate,
      effectHandlers: [QrCodeEffectHandler()],
    );
