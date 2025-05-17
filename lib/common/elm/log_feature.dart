import 'package:mini_tea/feature.dart';

import '../logger/logger.dart';

final class LogFeature<State, Message, Effect>
    extends ProxyFeature<State, Message, Effect> {
  final String tag;

  const LogFeature({
    required this.tag,
    required super.feature,
  });

  @override
  void accept(Message message) {
    Log.v(tag, 'State: $state');
    Log.v(tag, 'Message: $message');

    super.accept(message);
  }
}

extension LogFeatureX<State, Message, Effect>
    on Feature<State, Message, Effect> {
  Feature<State, Message, Effect> withLog({
    required String tag,
  }) =>
      LogFeature(tag: tag, feature: this);
}
