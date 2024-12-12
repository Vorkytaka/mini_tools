import 'package:flutter/widgets.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import 'feature/number_base_feature.dart';

typedef NumberBaseFeatureBuilder
    = FeatureBuilder<NumberBaseFeature, NumberBaseState, NumberBaseEvent, void>;

extension NumberBaseFeatureContext on BuildContext {
  NumberBaseFeature numberBaseFeature(BuildContext context,
      {bool listen = false}) {
    return Provider.of<NumberBaseFeature>(context, listen: listen);
  }
}
