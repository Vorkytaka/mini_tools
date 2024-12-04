// ignore_for_file: unnecessary_lambdas, implicit_call_tearoffs

import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/common/mini_tea/feature/feature.dart';
import 'package:mocktail/mocktail.dart';

sealed class Effect {}

class LeftEffect implements Effect {}

class RightEffect implements Effect {}

class MockFeature extends Mock
    implements Feature<dynamic, dynamic, Effect, dynamic> {}

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
    test('description', () {
      final mockHandler = MockEffectHandler();
      final mockFeature = MockFeature();

      when(() => mockFeature.stateStream)
          .thenAnswer((_) => const Stream.empty());
      when(() => mockFeature.effects).thenAnswer((_) => const Stream.empty());
      when(() => mockFeature.news).thenAnswer((_) => const Stream.empty());

      final wrapper = mockFeature.wrap(mockHandler);

      wrapper.accept(1);
      wrapper.state;
      wrapper.stateStream;
      wrapper.init();
      wrapper.dispose();
      wrapper.effects;
      wrapper.news;

      // Check that our wrapper is actual wrapper, not feature itself
      expect(wrapper, isA<EffectHandlerWrapper>());

      // Check that wrapper called original feature on each
      verify(() => mockFeature.accept(1)).called(1);
      verify(() => mockFeature.init()).called(1);
      verify(() => mockFeature.dispose()).called(1);
      verify(() => mockFeature.state).called(1);
      verify(() => mockFeature.stateStream).called(1);
      verify(() => mockFeature.effects).called(
          2); // One because of us, and one because of wrapper subscription
      verify(() => mockFeature.news).called(1);
    });

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
