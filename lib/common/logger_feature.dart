import 'package:mini_tea/feature.dart';

import 'logger.dart';

// TODO(Vorkytaka): Fix https://github.com/Vorkytaka/mini_tea/issues/57
class LoggerFeatureObserver<State, Message, Effect>
    implements FeatureObserver<State, Message, Effect> {
  final String tag;

  LoggerFeatureObserver({required this.tag});

  @override
  void onCreate() {
    Logger.v(tag, 'Feature create');
  }

  @override
  void onDispose() {
    Logger.v(tag, 'Feature disposed');
  }

  @override
  void onEffect(Effect effect) {
    Logger.v(tag, 'Effect: $effect');
  }

  @override
  void onInit() {
    Logger.v(tag, 'Feature init');
  }

  @override
  void onMsg(Message message) {
    Logger.v(tag, 'Message: $message');
  }

  @override
  void onState(State state) {
    Logger.v(tag, 'New state: $state');
  }
}

extension XXX<S, M, E> on Feature<S, M, E> {
  Feature<S, M, E> logger(String tag) => FeatureObserverWrapper(
        feature: this,
        observer: LoggerFeatureObserver(tag: tag),
      );
}
