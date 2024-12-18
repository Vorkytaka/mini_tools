import 'package:flutter/cupertino.dart';
import 'package:mini_tea_flutter/mini_tea_flutter.dart';
import 'package:provider/provider.dart';

import 'feature/sqlite_feature.dart';

typedef SqliteFeatureBuilder = FeatureBuilder<SqliteFeature, SqliteState>;

extension SqliteFeatureContext on BuildContext {
  SqliteFeature sqliteFeature({bool listen = false}) =>
      Provider.of<SqliteFeature>(this, listen: listen);
}
