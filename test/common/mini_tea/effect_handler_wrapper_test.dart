// ignore_for_file: unnecessary_lambdas, implicit_call_tearoffs

import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/common/mini_tea/feature/feature.dart';
import 'package:mocktail/mocktail.dart';

sealed class Effect {}

class LeftEffect implements Effect {}

class RightEffect implements Effect {}

class MockFeature extends Mock implements Feature<dynamic, dynamic, Effect> {}

class MockEffectHandler extends Mock
    implements IEffectHandler<Effect, dynamic> {}

class MockLeftEffectHandler extends Mock
    implements IEffectHandler<LeftEffect, dynamic> {}

void main() {
  setUpAll(() {
    registerFallbackValue(LeftEffect());
    registerFallbackValue(RightEffect());
  });

  group('EffectHandlerWrapper', () {
    test('Wrapper handle correct effects', () async {
      final mockHandler = MockLeftEffectHandler();
      final mockFeature = MockFeature();
      final leftEffect = LeftEffect();

      when(() => mockFeature.effects)
          .thenAnswer((_) => Stream.value(leftEffect));

      final wrapper = mockFeature.wrap<LeftEffect>(mockHandler);
      wrapper.init();
      await Future.value();

      verify(() => mockHandler.call(leftEffect, any())).called(1);
    });

    test('Wrapper ignore other effects', () async {
      final mockHandler = MockLeftEffectHandler();
      final mockFeature = MockFeature();
      final rightEffect = RightEffect();

      when(() => mockFeature.effects)
          .thenAnswer((_) => Stream.value(rightEffect));

      final wrapper = mockFeature.wrap<LeftEffect>(mockHandler);
      wrapper.init();
      await Future.value();

      verifyNever(() => mockHandler.call(any(), any()));
    });

    test('Two wrapper works fine', () async {
      final mockFeature = MockFeature();
      final mockHandler1 = MockLeftEffectHandler();
      final mockHandler2 = MockLeftEffectHandler();
      final leftEffect = LeftEffect();

      when(() => mockFeature.effects)
          .thenAnswer((_) => Stream.value(leftEffect));

      final wrapper = mockFeature
          .wrap<LeftEffect>(mockHandler1)
          .wrap<LeftEffect>(mockHandler2);
      wrapper.init();
      await Future.value();

      verify(() => mockHandler1.call(leftEffect, any())).called(1);
      verify(() => mockHandler2.call(leftEffect, any())).called(1);
    });
  });
}
