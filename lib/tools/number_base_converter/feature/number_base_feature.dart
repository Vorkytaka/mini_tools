import 'package:mini_tea/feature.dart';

import 'message/number_base_message.dart';
import 'state/number_base_state.dart';

export 'message/number_base_message.dart';
export 'state/number_base_state.dart';

part 'number_base_update.dart';

typedef NumberBaseFeature = Feature<NumberBaseState, NumberBaseMessage, void>;

NumberBaseFeature numberBaseFeatureFactory() =>
    Feature<NumberBaseState, NumberBaseMessage, void>(
      initialState: NumberBaseState.init(),
      update: _updateNumberBase,
    );
