import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../common/mini_tea/flutter/flutter.dart';
import 'feature/number_base_feature.dart';

typedef NumberBaseFeatureBuilder
    = FeatureBuilder<NumberBaseFeature, NumberBaseState, NumberBaseEvent, void>;

extension NumberBaseFeatureContext on BuildContext {
  NumberBaseFeature numberBaseFeature(BuildContext context,
      {bool listen = false}) {
    return Provider.of<NumberBaseFeature>(context, listen: listen);
  }
}
