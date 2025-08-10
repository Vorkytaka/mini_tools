import 'package:mini_tea/feature.dart';

import 'datetime_converter_effect_handler.dart';
import 'datetime_converter_update.dart';
import 'effect/datetime_converter_effect.dart';
import 'message/datetime_converter_message.dart';
import 'state/datetime_converter_state.dart';

export 'effect/datetime_converter_effect.dart';
export 'message/datetime_converter_message.dart';
export 'state/datetime_converter_state.dart';

typedef DatetimeConverterFeature =
    Feature<
      DatetimeConverterState,
      DatetimeConverterMessage,
      DatetimeConverterEffect
    >;

DatetimeConverterFeature datetimeConverterFeatureFactory({
  DateTime? initialDatetime,
}) => DatetimeConverterFeature(
  initialState: DatetimeConverterState.defaultValue(),
  update: datetimeConverterUpdate,
  effectHandlers: const [DatetimeConverterEffectHandler()],
  initialEffects: [
    if (initialDatetime != null)
      DatetimeConverterEffect.setInitialDatetime(initialDatetime),
  ],
);
