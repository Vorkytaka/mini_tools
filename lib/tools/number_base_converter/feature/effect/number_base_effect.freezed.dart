// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_base_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NumberBaseEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberBaseState state) saveState,
    required TResult Function() loadState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NumberBaseState state)? saveState,
    TResult? Function()? loadState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberBaseState state)? saveState,
    TResult Function()? loadState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveStateEffect value) saveState,
    required TResult Function(LoadStateEffect value) loadState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveStateEffect value)? saveState,
    TResult? Function(LoadStateEffect value)? loadState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveStateEffect value)? saveState,
    TResult Function(LoadStateEffect value)? loadState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberBaseEffectCopyWith<$Res> {
  factory $NumberBaseEffectCopyWith(
          NumberBaseEffect value, $Res Function(NumberBaseEffect) then) =
      _$NumberBaseEffectCopyWithImpl<$Res, NumberBaseEffect>;
}

/// @nodoc
class _$NumberBaseEffectCopyWithImpl<$Res, $Val extends NumberBaseEffect>
    implements $NumberBaseEffectCopyWith<$Res> {
  _$NumberBaseEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NumberBaseEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveStateEffectImplCopyWith<$Res> {
  factory _$$SaveStateEffectImplCopyWith(_$SaveStateEffectImpl value,
          $Res Function(_$SaveStateEffectImpl) then) =
      __$$SaveStateEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NumberBaseState state});

  $NumberBaseStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$SaveStateEffectImplCopyWithImpl<$Res>
    extends _$NumberBaseEffectCopyWithImpl<$Res, _$SaveStateEffectImpl>
    implements _$$SaveStateEffectImplCopyWith<$Res> {
  __$$SaveStateEffectImplCopyWithImpl(
      _$SaveStateEffectImpl _value, $Res Function(_$SaveStateEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberBaseEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$SaveStateEffectImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as NumberBaseState,
    ));
  }

  /// Create a copy of NumberBaseEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NumberBaseStateCopyWith<$Res> get state {
    return $NumberBaseStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$SaveStateEffectImpl implements SaveStateEffect {
  const _$SaveStateEffectImpl(this.state);

  @override
  final NumberBaseState state;

  @override
  String toString() {
    return 'NumberBaseEffect.saveState(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveStateEffectImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of NumberBaseEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveStateEffectImplCopyWith<_$SaveStateEffectImpl> get copyWith =>
      __$$SaveStateEffectImplCopyWithImpl<_$SaveStateEffectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberBaseState state) saveState,
    required TResult Function() loadState,
  }) {
    return saveState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NumberBaseState state)? saveState,
    TResult? Function()? loadState,
  }) {
    return saveState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberBaseState state)? saveState,
    TResult Function()? loadState,
    required TResult orElse(),
  }) {
    if (saveState != null) {
      return saveState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveStateEffect value) saveState,
    required TResult Function(LoadStateEffect value) loadState,
  }) {
    return saveState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveStateEffect value)? saveState,
    TResult? Function(LoadStateEffect value)? loadState,
  }) {
    return saveState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveStateEffect value)? saveState,
    TResult Function(LoadStateEffect value)? loadState,
    required TResult orElse(),
  }) {
    if (saveState != null) {
      return saveState(this);
    }
    return orElse();
  }
}

abstract class SaveStateEffect implements NumberBaseEffect {
  const factory SaveStateEffect(final NumberBaseState state) =
      _$SaveStateEffectImpl;

  NumberBaseState get state;

  /// Create a copy of NumberBaseEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveStateEffectImplCopyWith<_$SaveStateEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadStateEffectImplCopyWith<$Res> {
  factory _$$LoadStateEffectImplCopyWith(_$LoadStateEffectImpl value,
          $Res Function(_$LoadStateEffectImpl) then) =
      __$$LoadStateEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadStateEffectImplCopyWithImpl<$Res>
    extends _$NumberBaseEffectCopyWithImpl<$Res, _$LoadStateEffectImpl>
    implements _$$LoadStateEffectImplCopyWith<$Res> {
  __$$LoadStateEffectImplCopyWithImpl(
      _$LoadStateEffectImpl _value, $Res Function(_$LoadStateEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberBaseEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadStateEffectImpl implements LoadStateEffect {
  const _$LoadStateEffectImpl();

  @override
  String toString() {
    return 'NumberBaseEffect.loadState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadStateEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberBaseState state) saveState,
    required TResult Function() loadState,
  }) {
    return loadState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NumberBaseState state)? saveState,
    TResult? Function()? loadState,
  }) {
    return loadState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberBaseState state)? saveState,
    TResult Function()? loadState,
    required TResult orElse(),
  }) {
    if (loadState != null) {
      return loadState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveStateEffect value) saveState,
    required TResult Function(LoadStateEffect value) loadState,
  }) {
    return loadState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveStateEffect value)? saveState,
    TResult? Function(LoadStateEffect value)? loadState,
  }) {
    return loadState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveStateEffect value)? saveState,
    TResult Function(LoadStateEffect value)? loadState,
    required TResult orElse(),
  }) {
    if (loadState != null) {
      return loadState(this);
    }
    return orElse();
  }
}

abstract class LoadStateEffect implements NumberBaseEffect {
  const factory LoadStateEffect() = _$LoadStateEffectImpl;
}
