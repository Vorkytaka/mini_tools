// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cron_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CronEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) save,
    required TResult Function() load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? save,
    TResult? Function()? load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? save,
    TResult Function()? load,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEffect value) save,
    required TResult Function(LoadEffect value) load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveEffect value)? save,
    TResult? Function(LoadEffect value)? load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEffect value)? save,
    TResult Function(LoadEffect value)? load,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CronEffectCopyWith<$Res> {
  factory $CronEffectCopyWith(
    CronEffect value,
    $Res Function(CronEffect) then,
  ) = _$CronEffectCopyWithImpl<$Res, CronEffect>;
}

/// @nodoc
class _$CronEffectCopyWithImpl<$Res, $Val extends CronEffect>
    implements $CronEffectCopyWith<$Res> {
  _$CronEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CronEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveEffectImplCopyWith<$Res> {
  factory _$$SaveEffectImplCopyWith(
    _$SaveEffectImpl value,
    $Res Function(_$SaveEffectImpl) then,
  ) = __$$SaveEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$SaveEffectImplCopyWithImpl<$Res>
    extends _$CronEffectCopyWithImpl<$Res, _$SaveEffectImpl>
    implements _$$SaveEffectImplCopyWith<$Res> {
  __$$SaveEffectImplCopyWithImpl(
    _$SaveEffectImpl _value,
    $Res Function(_$SaveEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CronEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? input = null}) {
    return _then(
      _$SaveEffectImpl(
        null == input
            ? _value.input
            : input // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SaveEffectImpl implements SaveEffect {
  const _$SaveEffectImpl(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'CronEffect.save(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveEffectImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  /// Create a copy of CronEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveEffectImplCopyWith<_$SaveEffectImpl> get copyWith =>
      __$$SaveEffectImplCopyWithImpl<_$SaveEffectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) save,
    required TResult Function() load,
  }) {
    return save(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? save,
    TResult? Function()? load,
  }) {
    return save?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? save,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEffect value) save,
    required TResult Function(LoadEffect value) load,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveEffect value)? save,
    TResult? Function(LoadEffect value)? load,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEffect value)? save,
    TResult Function(LoadEffect value)? load,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveEffect implements CronEffect {
  const factory SaveEffect(final String input) = _$SaveEffectImpl;

  String get input;

  /// Create a copy of CronEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveEffectImplCopyWith<_$SaveEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEffectImplCopyWith<$Res> {
  factory _$$LoadEffectImplCopyWith(
    _$LoadEffectImpl value,
    $Res Function(_$LoadEffectImpl) then,
  ) = __$$LoadEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEffectImplCopyWithImpl<$Res>
    extends _$CronEffectCopyWithImpl<$Res, _$LoadEffectImpl>
    implements _$$LoadEffectImplCopyWith<$Res> {
  __$$LoadEffectImplCopyWithImpl(
    _$LoadEffectImpl _value,
    $Res Function(_$LoadEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CronEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadEffectImpl implements LoadEffect {
  const _$LoadEffectImpl();

  @override
  String toString() {
    return 'CronEffect.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) save,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? save,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? save,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEffect value) save,
    required TResult Function(LoadEffect value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveEffect value)? save,
    TResult? Function(LoadEffect value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEffect value)? save,
    TResult Function(LoadEffect value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadEffect implements CronEffect {
  const factory LoadEffect() = _$LoadEffectImpl;
}
