import 'dart:async';
import 'dart:isolate';

import 'package:meta/meta.dart';

import '../feature/feature.dart';

@experimental
abstract base class IsolateEffectHandler<Effect, Msg>
    implements IEffectHandler<Effect, Msg> {
  const IsolateEffectHandler();

  FutureOr<void> handle(Effect effect, MsgEmitter<Msg> emit);

  @override
  Future<void> call(Effect effect, MsgEmitter<Msg> emit) async {
    final receivePort = ReceivePort();

    final isolate = await Isolate.spawn(
      _runInIsolate<Effect, Msg>,
      _IsolateParams(effect, receivePort.sendPort, handle),
    );

    await for (final message in receivePort) {
      if (message is Msg) {
        emit(message);
      } else if (message == _doneEvent) {
        receivePort.close();
        isolate.kill(priority: Isolate.immediate);
        break;
      }
    }
  }

  static Future<void> _runInIsolate<Effect, Msg>(
    _IsolateParams<Effect, Msg> params,
  ) async {
    // Imitate emit, so, given handler will work as is
    void isolateEmit(Msg message) {
      params.sendPort.send(message);
    }

    await params.handler(params.effect, isolateEmit);

    params.sendPort.send(_doneEvent);
  }

  static const _doneEvent = 'done';
}

// Helper class to pass everything we need to an isolate
class _IsolateParams<Effect, Msg> {
  final Effect effect;
  final SendPort sendPort;
  final EffectHandler<Effect, Msg> handler;

  const _IsolateParams(
    this.effect,
    this.sendPort,
    this.handler,
  );
}
