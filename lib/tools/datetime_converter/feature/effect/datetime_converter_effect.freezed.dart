// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datetime_converter_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DatetimeConverterEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNow,
    required TResult Function(String input, InputType type) parse,
    required TResult Function(DateTime datetime) setInitialDatetime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNow,
    TResult? Function(String input, InputType type)? parse,
    TResult? Function(DateTime datetime)? setInitialDatetime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNow,
    TResult Function(String input, InputType type)? parse,
    TResult Function(DateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNowEffect value) getNow,
    required TResult Function(ParseEffect value) parse,
    required TResult Function(SetInitialDatetimeEffect value)
    setInitialDatetime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNowEffect value)? getNow,
    TResult? Function(ParseEffect value)? parse,
    TResult? Function(SetInitialDatetimeEffect value)? setInitialDatetime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNowEffect value)? getNow,
    TResult Function(ParseEffect value)? parse,
    TResult Function(SetInitialDatetimeEffect value)? setInitialDatetime,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatetimeConverterEffectCopyWith<$Res> {
  factory $DatetimeConverterEffectCopyWith(
    DatetimeConverterEffect value,
    $Res Function(DatetimeConverterEffect) then,
  ) = _$DatetimeConverterEffectCopyWithImpl<$Res, DatetimeConverterEffect>;
}

/// @nodoc
class _$DatetimeConverterEffectCopyWithImpl<
  $Res,
  $Val extends DatetimeConverterEffect
>
    implements $DatetimeConverterEffectCopyWith<$Res> {
  _$DatetimeConverterEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatetimeConverterEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetNowEffectImplCopyWith<$Res> {
  factory _$$GetNowEffectImplCopyWith(
    _$GetNowEffectImpl value,
    $Res Function(_$GetNowEffectImpl) then,
  ) = __$$GetNowEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNowEffectImplCopyWithImpl<$Res>
    extends _$DatetimeConverterEffectCopyWithImpl<$Res, _$GetNowEffectImpl>
    implements _$$GetNowEffectImplCopyWith<$Res> {
  __$$GetNowEffectImplCopyWithImpl(
    _$GetNowEffectImpl _value,
    $Res Function(_$GetNowEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNowEffectImpl implements GetNowEffect {
  const _$GetNowEffectImpl();

  @override
  String toString() {
    return 'DatetimeConverterEffect.getNow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNowEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNow,
    required TResult Function(String input, InputType type) parse,
    required TResult Function(DateTime datetime) setInitialDatetime,
  }) {
    return getNow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNow,
    TResult? Function(String input, InputType type)? parse,
    TResult? Function(DateTime datetime)? setInitialDatetime,
  }) {
    return getNow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNow,
    TResult Function(String input, InputType type)? parse,
    TResult Function(DateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (getNow != null) {
      return getNow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNowEffect value) getNow,
    required TResult Function(ParseEffect value) parse,
    required TResult Function(SetInitialDatetimeEffect value)
    setInitialDatetime,
  }) {
    return getNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNowEffect value)? getNow,
    TResult? Function(ParseEffect value)? parse,
    TResult? Function(SetInitialDatetimeEffect value)? setInitialDatetime,
  }) {
    return getNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNowEffect value)? getNow,
    TResult Function(ParseEffect value)? parse,
    TResult Function(SetInitialDatetimeEffect value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (getNow != null) {
      return getNow(this);
    }
    return orElse();
  }
}

abstract class GetNowEffect implements DatetimeConverterEffect {
  const factory GetNowEffect() = _$GetNowEffectImpl;
}

/// @nodoc
abstract class _$$ParseEffectImplCopyWith<$Res> {
  factory _$$ParseEffectImplCopyWith(
    _$ParseEffectImpl value,
    $Res Function(_$ParseEffectImpl) then,
  ) = __$$ParseEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input, InputType type});
}

/// @nodoc
class __$$ParseEffectImplCopyWithImpl<$Res>
    extends _$DatetimeConverterEffectCopyWithImpl<$Res, _$ParseEffectImpl>
    implements _$$ParseEffectImplCopyWith<$Res> {
  __$$ParseEffectImplCopyWithImpl(
    _$ParseEffectImpl _value,
    $Res Function(_$ParseEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? input = null, Object? type = null}) {
    return _then(
      _$ParseEffectImpl(
        input:
            null == input
                ? _value.input
                : input // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as InputType,
      ),
    );
  }
}

/// @nodoc

class _$ParseEffectImpl implements ParseEffect {
  const _$ParseEffectImpl({required this.input, required this.type});

  @override
  final String input;
  @override
  final InputType type;

  @override
  String toString() {
    return 'DatetimeConverterEffect.parse(input: $input, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseEffectImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input, type);

  /// Create a copy of DatetimeConverterEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseEffectImplCopyWith<_$ParseEffectImpl> get copyWith =>
      __$$ParseEffectImplCopyWithImpl<_$ParseEffectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNow,
    required TResult Function(String input, InputType type) parse,
    required TResult Function(DateTime datetime) setInitialDatetime,
  }) {
    return parse(input, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNow,
    TResult? Function(String input, InputType type)? parse,
    TResult? Function(DateTime datetime)? setInitialDatetime,
  }) {
    return parse?.call(input, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNow,
    TResult Function(String input, InputType type)? parse,
    TResult Function(DateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(input, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNowEffect value) getNow,
    required TResult Function(ParseEffect value) parse,
    required TResult Function(SetInitialDatetimeEffect value)
    setInitialDatetime,
  }) {
    return parse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNowEffect value)? getNow,
    TResult? Function(ParseEffect value)? parse,
    TResult? Function(SetInitialDatetimeEffect value)? setInitialDatetime,
  }) {
    return parse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNowEffect value)? getNow,
    TResult Function(ParseEffect value)? parse,
    TResult Function(SetInitialDatetimeEffect value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(this);
    }
    return orElse();
  }
}

abstract class ParseEffect implements DatetimeConverterEffect {
  const factory ParseEffect({
    required final String input,
    required final InputType type,
  }) = _$ParseEffectImpl;

  String get input;
  InputType get type;

  /// Create a copy of DatetimeConverterEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParseEffectImplCopyWith<_$ParseEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetInitialDatetimeEffectImplCopyWith<$Res> {
  factory _$$SetInitialDatetimeEffectImplCopyWith(
    _$SetInitialDatetimeEffectImpl value,
    $Res Function(_$SetInitialDatetimeEffectImpl) then,
  ) = __$$SetInitialDatetimeEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime datetime});
}

/// @nodoc
class __$$SetInitialDatetimeEffectImplCopyWithImpl<$Res>
    extends
        _$DatetimeConverterEffectCopyWithImpl<
          $Res,
          _$SetInitialDatetimeEffectImpl
        >
    implements _$$SetInitialDatetimeEffectImplCopyWith<$Res> {
  __$$SetInitialDatetimeEffectImplCopyWithImpl(
    _$SetInitialDatetimeEffectImpl _value,
    $Res Function(_$SetInitialDatetimeEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? datetime = null}) {
    return _then(
      _$SetInitialDatetimeEffectImpl(
        null == datetime
            ? _value.datetime
            : datetime // ignore: cast_nullable_to_non_nullable
                as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$SetInitialDatetimeEffectImpl implements SetInitialDatetimeEffect {
  const _$SetInitialDatetimeEffectImpl(this.datetime);

  @override
  final DateTime datetime;

  @override
  String toString() {
    return 'DatetimeConverterEffect.setInitialDatetime(datetime: $datetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInitialDatetimeEffectImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datetime);

  /// Create a copy of DatetimeConverterEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInitialDatetimeEffectImplCopyWith<_$SetInitialDatetimeEffectImpl>
  get copyWith => __$$SetInitialDatetimeEffectImplCopyWithImpl<
    _$SetInitialDatetimeEffectImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNow,
    required TResult Function(String input, InputType type) parse,
    required TResult Function(DateTime datetime) setInitialDatetime,
  }) {
    return setInitialDatetime(datetime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNow,
    TResult? Function(String input, InputType type)? parse,
    TResult? Function(DateTime datetime)? setInitialDatetime,
  }) {
    return setInitialDatetime?.call(datetime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNow,
    TResult Function(String input, InputType type)? parse,
    TResult Function(DateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (setInitialDatetime != null) {
      return setInitialDatetime(datetime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNowEffect value) getNow,
    required TResult Function(ParseEffect value) parse,
    required TResult Function(SetInitialDatetimeEffect value)
    setInitialDatetime,
  }) {
    return setInitialDatetime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNowEffect value)? getNow,
    TResult? Function(ParseEffect value)? parse,
    TResult? Function(SetInitialDatetimeEffect value)? setInitialDatetime,
  }) {
    return setInitialDatetime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNowEffect value)? getNow,
    TResult Function(ParseEffect value)? parse,
    TResult Function(SetInitialDatetimeEffect value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (setInitialDatetime != null) {
      return setInitialDatetime(this);
    }
    return orElse();
  }
}

abstract class SetInitialDatetimeEffect implements DatetimeConverterEffect {
  const factory SetInitialDatetimeEffect(final DateTime datetime) =
      _$SetInitialDatetimeEffectImpl;

  DateTime get datetime;

  /// Create a copy of DatetimeConverterEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetInitialDatetimeEffectImplCopyWith<_$SetInitialDatetimeEffectImpl>
  get copyWith => throw _privateConstructorUsedError;
}
