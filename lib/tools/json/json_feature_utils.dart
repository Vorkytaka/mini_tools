import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../common/mini_tea/flutter/flutter.dart';
import 'feature/json_feature.dart';

typedef JsonFeatureBuilder
    = FeatureBuilder<JsonFeature, JsonState, JsonEvent, JsonEffect>;

extension JsonFeatureContext on BuildContext {
  JsonFeature jsonFeature(BuildContext context, {bool listen = false}) {
    return Provider.of<JsonFeature>(context, listen: listen);
  }
}
