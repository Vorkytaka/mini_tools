import 'dart:async';
import 'dart:isolate';

import 'package:meta/meta.dart';

import '../feature/feature.dart';

@experimental
abstract class IsolateEffectHandler<Effect, Event>
    implements IEffectHandler<Effect, Event> {
  const IsolateEffectHandler();

  FutureOr<void> handle(Effect effect, EventEmitter<Event> emit);

  @override
  Future<void> call(Effect effect, EventEmitter<Event> emit) async {
    final receivePort = ReceivePort();

    final isolate = await Isolate.spawn(
      _runInIsolate<Effect, Event>,
      _IsolateParams(effect, receivePort.sendPort, handle),
    );

    await for (final message in receivePort) {
      if (message is Event) {
        emit(message);
      } else if (message == _doneEvent) {
        receivePort.close();
        isolate.kill(priority: Isolate.immediate);
        break;
      }
    }
  }

  static Future<void> _runInIsolate<Effect, Event>(
    _IsolateParams<Effect, Event> params,
  ) async {
    // Imitate emit, so, given handler will work as is
    void isolateEmit(Event event) {
      params.sendPort.send(event);
    }

    await params.handler(params.effect, isolateEmit);

    params.sendPort.send(_doneEvent);
  }

  static const _doneEvent = 'done';
}

// Helper class to pass everything we need to an isolate
class _IsolateParams<Effect, Event> {
  final Effect effect;
  final SendPort sendPort;
  final EffectHandler<Effect, Event> handler;

  const _IsolateParams(
    this.effect,
    this.sendPort,
    this.handler,
  );
}
