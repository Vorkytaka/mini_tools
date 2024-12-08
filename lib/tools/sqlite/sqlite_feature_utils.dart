import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../common/mini_tea/flutter/flutter.dart';
import 'feature/sqlite_feature.dart';

typedef SqliteFeatureBuilder
    = FeatureBuilder<SqliteFeature, SqliteState, SqliteMsg, SqliteEffect>;

extension SqliteFeatureContext on BuildContext {
  SqliteFeature sqliteFeature({bool listen = false}) =>
      Provider.of<SqliteFeature>(this, listen: listen);
}
