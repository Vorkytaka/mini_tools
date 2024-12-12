import 'package:flutter/widgets.dart';
import 'package:mini_tea/feature.dart';

part 'number_base_event.dart';

part 'number_base_state.dart';

part 'number_base_update.dart';

typedef NumberBaseFeature = Feature<NumberBaseState, NumberBaseEvent, void>;

NumberBaseFeature numberBaseFeatureFactory() =>
    Feature<NumberBaseState, NumberBaseEvent, void>(
      initialState: const NumberBaseState.init(),
      update: _updateNumberBase,
    );
