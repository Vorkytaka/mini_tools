import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_tea/feature.dart';

import 'state/number_base_state.dart';

export 'state/number_base_state.dart';

part 'number_base_event.dart';

part 'number_base_update.dart';

typedef NumberBaseFeature = Feature<NumberBaseState, NumberBaseEvent, void>;

NumberBaseFeature numberBaseFeatureFactory() =>
    Feature<NumberBaseState, NumberBaseEvent, void>(
      initialState: NumberBaseState.init(),
      update: _updateNumberBase,
    );
