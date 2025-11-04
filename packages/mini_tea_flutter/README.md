# Mini TEA for Flutter

> ⚠️ This package is under active development and may (and probably will) change in the future.

This package contains widgets for [Mini TEA](https://github.com/Vorkytaka/mini_tea).

With them you can easily integrate Mini TEA into your Flutter app.

Learn more about Mini TEA [here](https://github.com/Vorkytaka/mini_tea/blob/master/README.md).

---

> ⚠️ Currently this package just copy-pasted from `flutter_bloc`
> Because we really love how does bloc integrates with flutter.

---

## Usage

If you've ever used Bloc, you won't have any questions about how to use this widgets.

We really like the simplicity and elegance that the `flutter_bloc` package provides, so in many ways here is a copy-paste of their solution for our architecture.

#### Provider

You can use `FeatureProvider` to create and provide a `Feature` instance.

```dart
typedef CounterFeature = Feature<CounterState, CounterMsg, CounterEffect>;

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeatureProvider.create(
        create: (context) => CounterFeature(),
        child: CounterPage(),
      ),
    );
  }
}
```

And later you can get it from widget tree:

```dart
// Just read
final feature = FeatureProvider.of<CounterFeature>(context);
final sameFeature = context.read<CounterFeature>();

// Or watch
final feature = FeatureProvider.watch<CounterFeature>(context, listen: true);
final sameFeature = context.watch<CounterFeature>();
```

#### Listener

You can use `FeatureListener` to listen to a `Feature` instance.

```dart
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FeatureListener<CounterFeature, CounterState>(
      listener: (context, state) => print(state),
      child: CounterWidget(),
    );
  }
}
```

#### Builder

You can use `FeatureBuilder` to build a widget based on a `Feature` instance.

```dart
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FeatureBuilder<CounterFeature, CounterState>(
      builder: (context, state) => CounterWidget(state.value),
    );
  }
}
```

#### Selector

You can use `FeatureSelector` to build a widget based on a `Feature` instance and a part of its state.

```dart
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FeatureSelector<CounterFeature, CounterState, int>(
      selector: (state) => state.value,
      builder: (context, value) => CounterWidget(value),
    );
  }
}
```

This widget will be rebuilt only when the selected part of the state changes.

#### Effect Listener (single time events)

Some events must happen only once, for example showing a snackbar.

To handle this you can use tree of `Effects` to separate UI effects and other.

```dart
// Our main effect class that will be used in our feature
sealed class Effect {}

// Parent for all UI effects
// Sealed class from another sealed class
sealed class UiEffect implements Effect {}

final class ShowSnackbar implements UiEffect {
  final String message;

  const ShowSnackbar(this.message);
}

// Parent for all async effects
// Also sealed class from another sealed class
sealed class AsyncEffect implements Effect {}

final class LoginEffect implements AsyncEffect {
  final String email;
  final String password;

  const LoginEffect(this.email, this.password);
}
```

After that you can listen for `UiEffect` in your UI.

```dart
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FeatureEffectListener<CounterFeature, Effect, UiEffect>(
      listener: (context, effect) =>
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(effect.message)),
          ),
      child: CounterWidget(),
    );
  }
}
```