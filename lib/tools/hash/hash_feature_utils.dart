import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../common/mini_tea/flutter/flutter.dart';
import 'feature/hash_feature.dart';

extension HashBuildContext on BuildContext {
  HashFeature hashFeature({bool listen = false}) =>
      Provider.of<HashFeature>(this, listen: listen);
}

typedef HashFeatureBuilder
    = FeatureBuilder<HashFeature, HashState, HashEvent, HashEffect>;
