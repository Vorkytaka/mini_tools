# Mini TEA test

This package contains test utilities for [Mini TEA](https://github.com/Vorkytaka/mini_tea).

We give you helper extensions to test your business logic and side effects.

## Usage

#### Update test

Just use extension method `test`.
It expect some state, message to test, expected state and effects.
If you omit expected effects, it will check that no effects are emitted.

```dart
void main() {
  test('Test update function', () {
    update.test(
      state: const State(),
      message: const UpdateTextEvent('Hello, World!'),
      expectedState: const State(
        input: 'Hello, World!',
      ),
      expectedEffects: [
        const SaveTextEffect(
          'Hello, World!',
        ),
      ],
    );
  });
}
```

#### Effect Handler test

Also, just use extension method `test`.
It expect some effect and expected messages.

Because of the contract of the `EffectHandler`, you need to await result of `test` method.

```dart
void main() {
  test('Effect Handler test', () async {
    const handler = ExampleEffectHandler(
      // Here can be some mocks
    );
    await handler.test(
      effect: const CountTextHashEffect(
        '1',
        HashAlgorithm.md5,
      ),
      expectedMessages: [UpdateHashEvent(_md5OfOne)],
    );
  });
}
```