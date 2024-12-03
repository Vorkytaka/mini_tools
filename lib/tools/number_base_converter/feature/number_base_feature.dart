import 'package:flutter/widgets.dart';

import '../../../common/mini_tea/feature/feature.dart';

part 'number_base_event.dart';
part 'number_base_state.dart';
part 'number_base_update.dart';

typedef NumberBaseFeature
    = Feature<NumberBaseState, NumberBaseEvent, void, void>;

NumberBaseFeature numberBaseFeatureFactory() =>
    Feature<NumberBaseState, NumberBaseEvent, void, void>(
      initialState: const NumberBaseState.init(),
      update: _updateNumberBase,
    );