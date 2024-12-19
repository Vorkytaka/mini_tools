import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'feature/json_feature.dart';

extension JsonFeatureContext on BuildContext {
  JsonFeature jsonFeature(BuildContext context, {bool listen = false}) {
    return Provider.of<JsonFeature>(context, listen: listen);
  }
}
