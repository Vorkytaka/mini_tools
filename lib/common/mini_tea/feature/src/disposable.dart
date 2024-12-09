part of 'feature.dart';

/// Can be used with class that implements [IEffectHandler].
/// If so, then feature will called dispose for this effect handler.
// ignore:one_member_abstracts
abstract interface class Disposable {
  Future<void> dispose();
}
