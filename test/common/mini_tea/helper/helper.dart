import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/common/mini_tea/effect_handler/async_effect_handler.dart';
import 'package:mini_tools/common/mini_tea/effect_handler/sync_effect_handler.dart';
import 'package:mini_tools/common/mini_tea/feature/src/feature.dart';

extension SyncEffectHandlerTests<Effect, Msg>
    on SyncEffectHandler<Effect, Msg> {
  void test({
    required Effect effect,
    Iterable<Msg>? expectedMessages,
  }) {
    final actual = <Msg>[];
    call(effect, actual.add);
    if (expectedMessages == null) {
      expect(actual, isEmpty);
    } else {
      expect(actual, containsAllInOrder(expectedMessages));
    }
  }
}

extension AsyncEffectHandlerTests<Effect, Msg>
    on AsyncEffectHandler<Effect, Msg> {
  Future<void> test({
    required Effect effect,
    Iterable<Msg>? expectedMessages,
  }) async {
    final actual = <Msg>[];
    await call(effect, actual.add);
    if (expectedMessages == null) {
      expect(actual, isEmpty);
    } else {
      expect(actual, containsAllInOrder(expectedMessages));
    }
  }
}

extension UpdateTest<State, Msg, Effect> on Update<State, Msg, Effect> {
  void test({
    required State state,
    required Msg message,
    State? expectedState,
    List<Effect> expectedEffects = const [],
  }) {
    final (actualState, actualEffects) = this(state, message);
    expect(actualState, expectedState);
    expect(actualEffects, containsAllInOrder(expectedEffects));
  }
}

extension IUpdateTest<State, Msg, Effect> on IUpdate<State, Msg, Effect> {
  void test({
    required State state,
    required Msg message,
    State? expectedState,
    List<Effect> expectedEffects = const [],
  }) {
    final (actualState, actualEffects) = this(state, message);
    expect(actualState, expectedState);
    if (expectedEffects.isEmpty) {
      expect(actualEffects, isEmpty);
    } else {
      expect(actualEffects, containsAllInOrder(expectedEffects));
    }
  }
}
