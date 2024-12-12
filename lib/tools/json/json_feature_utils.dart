import 'package:flutter/widgets.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import 'feature/json_feature.dart';

typedef JsonFeatureBuilder
    = FeatureBuilder<JsonFeature, JsonState, JsonEvent, JsonEffect>;

extension JsonFeatureContext on BuildContext {
  JsonFeature jsonFeature(BuildContext context, {bool listen = false}) {
    return Provider.of<JsonFeature>(context, listen: listen);
  }
}
