// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datetime_converter_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DatetimeConverterMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatetimeConverterMessageCopyWith<$Res> {
  factory $DatetimeConverterMessageCopyWith(
    DatetimeConverterMessage value,
    $Res Function(DatetimeConverterMessage) then,
  ) = _$DatetimeConverterMessageCopyWithImpl<$Res, DatetimeConverterMessage>;
}

/// @nodoc
class _$DatetimeConverterMessageCopyWithImpl<
  $Res,
  $Val extends DatetimeConverterMessage
>
    implements $DatetimeConverterMessageCopyWith<$Res> {
  _$DatetimeConverterMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateInputMessageImplCopyWith<$Res> {
  factory _$$UpdateInputMessageImplCopyWith(
    _$UpdateInputMessageImpl value,
    $Res Function(_$UpdateInputMessageImpl) then,
  ) = __$$UpdateInputMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$UpdateInputMessageImplCopyWithImpl<$Res>
    extends
        _$DatetimeConverterMessageCopyWithImpl<$Res, _$UpdateInputMessageImpl>
    implements _$$UpdateInputMessageImplCopyWith<$Res> {
  __$$UpdateInputMessageImplCopyWithImpl(
    _$UpdateInputMessageImpl _value,
    $Res Function(_$UpdateInputMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? input = null}) {
    return _then(
      _$UpdateInputMessageImpl(
        null == input
            ? _value.input
            : input // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateInputMessageImpl implements UpdateInputMessage {
  const _$UpdateInputMessageImpl(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'DatetimeConverterMessage.updateInput(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInputMessageImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInputMessageImplCopyWith<_$UpdateInputMessageImpl> get copyWith =>
      __$$UpdateInputMessageImplCopyWithImpl<_$UpdateInputMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) {
    return updateInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) {
    return updateInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (updateInput != null) {
      return updateInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) {
    return updateInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) {
    return updateInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (updateInput != null) {
      return updateInput(this);
    }
    return orElse();
  }
}

abstract class UpdateInputMessage implements DatetimeConverterMessage {
  const factory UpdateInputMessage(final String input) =
      _$UpdateInputMessageImpl;

  String get input;

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInputMessageImplCopyWith<_$UpdateInputMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDatetimeMessageImplCopyWith<$Res> {
  factory _$$UpdateDatetimeMessageImplCopyWith(
    _$UpdateDatetimeMessageImpl value,
    $Res Function(_$UpdateDatetimeMessageImpl) then,
  ) = __$$UpdateDatetimeMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TZDateTime datetime});
}

/// @nodoc
class __$$UpdateDatetimeMessageImplCopyWithImpl<$Res>
    extends
        _$DatetimeConverterMessageCopyWithImpl<
          $Res,
          _$UpdateDatetimeMessageImpl
        >
    implements _$$UpdateDatetimeMessageImplCopyWith<$Res> {
  __$$UpdateDatetimeMessageImplCopyWithImpl(
    _$UpdateDatetimeMessageImpl _value,
    $Res Function(_$UpdateDatetimeMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? datetime = null}) {
    return _then(
      _$UpdateDatetimeMessageImpl(
        null == datetime
            ? _value.datetime
            : datetime // ignore: cast_nullable_to_non_nullable
                as TZDateTime,
      ),
    );
  }
}

/// @nodoc

class _$UpdateDatetimeMessageImpl implements UpdateDatetimeMessage {
  const _$UpdateDatetimeMessageImpl(this.datetime);

  @override
  final TZDateTime datetime;

  @override
  String toString() {
    return 'DatetimeConverterMessage.updateDatetime(datetime: $datetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDatetimeMessageImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datetime);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDatetimeMessageImplCopyWith<_$UpdateDatetimeMessageImpl>
  get copyWith =>
      __$$UpdateDatetimeMessageImplCopyWithImpl<_$UpdateDatetimeMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) {
    return updateDatetime(datetime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) {
    return updateDatetime?.call(datetime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (updateDatetime != null) {
      return updateDatetime(datetime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) {
    return updateDatetime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) {
    return updateDatetime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (updateDatetime != null) {
      return updateDatetime(this);
    }
    return orElse();
  }
}

abstract class UpdateDatetimeMessage implements DatetimeConverterMessage {
  const factory UpdateDatetimeMessage(final TZDateTime datetime) =
      _$UpdateDatetimeMessageImpl;

  TZDateTime get datetime;

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDatetimeMessageImplCopyWith<_$UpdateDatetimeMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInputTypeMessageImplCopyWith<$Res> {
  factory _$$UpdateInputTypeMessageImplCopyWith(
    _$UpdateInputTypeMessageImpl value,
    $Res Function(_$UpdateInputTypeMessageImpl) then,
  ) = __$$UpdateInputTypeMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputType type});
}

/// @nodoc
class __$$UpdateInputTypeMessageImplCopyWithImpl<$Res>
    extends
        _$DatetimeConverterMessageCopyWithImpl<
          $Res,
          _$UpdateInputTypeMessageImpl
        >
    implements _$$UpdateInputTypeMessageImplCopyWith<$Res> {
  __$$UpdateInputTypeMessageImplCopyWithImpl(
    _$UpdateInputTypeMessageImpl _value,
    $Res Function(_$UpdateInputTypeMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _$UpdateInputTypeMessageImpl(
        null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                as InputType,
      ),
    );
  }
}

/// @nodoc

class _$UpdateInputTypeMessageImpl implements UpdateInputTypeMessage {
  const _$UpdateInputTypeMessageImpl(this.type);

  @override
  final InputType type;

  @override
  String toString() {
    return 'DatetimeConverterMessage.updateInputType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInputTypeMessageImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInputTypeMessageImplCopyWith<_$UpdateInputTypeMessageImpl>
  get copyWith =>
      __$$UpdateInputTypeMessageImplCopyWithImpl<_$UpdateInputTypeMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) {
    return updateInputType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) {
    return updateInputType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (updateInputType != null) {
      return updateInputType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) {
    return updateInputType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) {
    return updateInputType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (updateInputType != null) {
      return updateInputType(this);
    }
    return orElse();
  }
}

abstract class UpdateInputTypeMessage implements DatetimeConverterMessage {
  const factory UpdateInputTypeMessage(final InputType type) =
      _$UpdateInputTypeMessageImpl;

  InputType get type;

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInputTypeMessageImplCopyWith<_$UpdateInputTypeMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDatetimeFormatMessageImplCopyWith<$Res> {
  factory _$$UpdateDatetimeFormatMessageImplCopyWith(
    _$UpdateDatetimeFormatMessageImpl value,
    $Res Function(_$UpdateDatetimeFormatMessageImpl) then,
  ) = __$$UpdateDatetimeFormatMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DatetimeFormat format});
}

/// @nodoc
class __$$UpdateDatetimeFormatMessageImplCopyWithImpl<$Res>
    extends
        _$DatetimeConverterMessageCopyWithImpl<
          $Res,
          _$UpdateDatetimeFormatMessageImpl
        >
    implements _$$UpdateDatetimeFormatMessageImplCopyWith<$Res> {
  __$$UpdateDatetimeFormatMessageImplCopyWithImpl(
    _$UpdateDatetimeFormatMessageImpl _value,
    $Res Function(_$UpdateDatetimeFormatMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? format = null}) {
    return _then(
      _$UpdateDatetimeFormatMessageImpl(
        null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                as DatetimeFormat,
      ),
    );
  }
}

/// @nodoc

class _$UpdateDatetimeFormatMessageImpl implements UpdateDatetimeFormatMessage {
  const _$UpdateDatetimeFormatMessageImpl(this.format);

  @override
  final DatetimeFormat format;

  @override
  String toString() {
    return 'DatetimeConverterMessage.updateDatetimeFormat(format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDatetimeFormatMessageImpl &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode => Object.hash(runtimeType, format);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDatetimeFormatMessageImplCopyWith<_$UpdateDatetimeFormatMessageImpl>
  get copyWith => __$$UpdateDatetimeFormatMessageImplCopyWithImpl<
    _$UpdateDatetimeFormatMessageImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) {
    return updateDatetimeFormat(format);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) {
    return updateDatetimeFormat?.call(format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (updateDatetimeFormat != null) {
      return updateDatetimeFormat(format);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) {
    return updateDatetimeFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) {
    return updateDatetimeFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (updateDatetimeFormat != null) {
      return updateDatetimeFormat(this);
    }
    return orElse();
  }
}

abstract class UpdateDatetimeFormatMessage implements DatetimeConverterMessage {
  const factory UpdateDatetimeFormatMessage(final DatetimeFormat format) =
      _$UpdateDatetimeFormatMessageImpl;

  DatetimeFormat get format;

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDatetimeFormatMessageImplCopyWith<_$UpdateDatetimeFormatMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMessageImplCopyWith<$Res> {
  factory _$$ClearMessageImplCopyWith(
    _$ClearMessageImpl value,
    $Res Function(_$ClearMessageImpl) then,
  ) = __$$ClearMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMessageImplCopyWithImpl<$Res>
    extends _$DatetimeConverterMessageCopyWithImpl<$Res, _$ClearMessageImpl>
    implements _$$ClearMessageImplCopyWith<$Res> {
  __$$ClearMessageImplCopyWithImpl(
    _$ClearMessageImpl _value,
    $Res Function(_$ClearMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearMessageImpl implements ClearMessage {
  const _$ClearMessageImpl();

  @override
  String toString() {
    return 'DatetimeConverterMessage.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class ClearMessage implements DatetimeConverterMessage {
  const factory ClearMessage() = _$ClearMessageImpl;
}

/// @nodoc
abstract class _$$GetNowMessageImplCopyWith<$Res> {
  factory _$$GetNowMessageImplCopyWith(
    _$GetNowMessageImpl value,
    $Res Function(_$GetNowMessageImpl) then,
  ) = __$$GetNowMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNowMessageImplCopyWithImpl<$Res>
    extends _$DatetimeConverterMessageCopyWithImpl<$Res, _$GetNowMessageImpl>
    implements _$$GetNowMessageImplCopyWith<$Res> {
  __$$GetNowMessageImplCopyWithImpl(
    _$GetNowMessageImpl _value,
    $Res Function(_$GetNowMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNowMessageImpl implements GetNowMessage {
  const _$GetNowMessageImpl();

  @override
  String toString() {
    return 'DatetimeConverterMessage.getNow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNowMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) {
    return getNow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) {
    return getNow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
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
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) {
    return getNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) {
    return getNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (getNow != null) {
      return getNow(this);
    }
    return orElse();
  }
}

abstract class GetNowMessage implements DatetimeConverterMessage {
  const factory GetNowMessage() = _$GetNowMessageImpl;
}

/// @nodoc
abstract class _$$SetNowMessageImplCopyWith<$Res> {
  factory _$$SetNowMessageImplCopyWith(
    _$SetNowMessageImpl value,
    $Res Function(_$SetNowMessageImpl) then,
  ) = __$$SetNowMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TZDateTime datetime});
}

/// @nodoc
class __$$SetNowMessageImplCopyWithImpl<$Res>
    extends _$DatetimeConverterMessageCopyWithImpl<$Res, _$SetNowMessageImpl>
    implements _$$SetNowMessageImplCopyWith<$Res> {
  __$$SetNowMessageImplCopyWithImpl(
    _$SetNowMessageImpl _value,
    $Res Function(_$SetNowMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? datetime = null}) {
    return _then(
      _$SetNowMessageImpl(
        null == datetime
            ? _value.datetime
            : datetime // ignore: cast_nullable_to_non_nullable
                as TZDateTime,
      ),
    );
  }
}

/// @nodoc

class _$SetNowMessageImpl implements SetNowMessage {
  const _$SetNowMessageImpl(this.datetime);

  @override
  final TZDateTime datetime;

  @override
  String toString() {
    return 'DatetimeConverterMessage.setNow(datetime: $datetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNowMessageImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datetime);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNowMessageImplCopyWith<_$SetNowMessageImpl> get copyWith =>
      __$$SetNowMessageImplCopyWithImpl<_$SetNowMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) {
    return setNow(datetime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) {
    return setNow?.call(datetime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (setNow != null) {
      return setNow(datetime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) {
    return setNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) {
    return setNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (setNow != null) {
      return setNow(this);
    }
    return orElse();
  }
}

abstract class SetNowMessage implements DatetimeConverterMessage {
  const factory SetNowMessage(final TZDateTime datetime) = _$SetNowMessageImpl;

  TZDateTime get datetime;

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetNowMessageImplCopyWith<_$SetNowMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetInitialDatetimeMessageImplCopyWith<$Res> {
  factory _$$SetInitialDatetimeMessageImplCopyWith(
    _$SetInitialDatetimeMessageImpl value,
    $Res Function(_$SetInitialDatetimeMessageImpl) then,
  ) = __$$SetInitialDatetimeMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TZDateTime datetime});
}

/// @nodoc
class __$$SetInitialDatetimeMessageImplCopyWithImpl<$Res>
    extends
        _$DatetimeConverterMessageCopyWithImpl<
          $Res,
          _$SetInitialDatetimeMessageImpl
        >
    implements _$$SetInitialDatetimeMessageImplCopyWith<$Res> {
  __$$SetInitialDatetimeMessageImplCopyWithImpl(
    _$SetInitialDatetimeMessageImpl _value,
    $Res Function(_$SetInitialDatetimeMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? datetime = null}) {
    return _then(
      _$SetInitialDatetimeMessageImpl(
        null == datetime
            ? _value.datetime
            : datetime // ignore: cast_nullable_to_non_nullable
                as TZDateTime,
      ),
    );
  }
}

/// @nodoc

class _$SetInitialDatetimeMessageImpl implements SetInitialDatetimeMessage {
  const _$SetInitialDatetimeMessageImpl(this.datetime);

  @override
  final TZDateTime datetime;

  @override
  String toString() {
    return 'DatetimeConverterMessage.setInitialDatetime(datetime: $datetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInitialDatetimeMessageImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datetime);

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInitialDatetimeMessageImplCopyWith<_$SetInitialDatetimeMessageImpl>
  get copyWith => __$$SetInitialDatetimeMessageImplCopyWithImpl<
    _$SetInitialDatetimeMessageImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(TZDateTime datetime) updateDatetime,
    required TResult Function(InputType type) updateInputType,
    required TResult Function(DatetimeFormat format) updateDatetimeFormat,
    required TResult Function() clear,
    required TResult Function() getNow,
    required TResult Function(TZDateTime datetime) setNow,
    required TResult Function(TZDateTime datetime) setInitialDatetime,
  }) {
    return setInitialDatetime(datetime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(TZDateTime datetime)? updateDatetime,
    TResult? Function(InputType type)? updateInputType,
    TResult? Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult? Function()? clear,
    TResult? Function()? getNow,
    TResult? Function(TZDateTime datetime)? setNow,
    TResult? Function(TZDateTime datetime)? setInitialDatetime,
  }) {
    return setInitialDatetime?.call(datetime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(TZDateTime datetime)? updateDatetime,
    TResult Function(InputType type)? updateInputType,
    TResult Function(DatetimeFormat format)? updateDatetimeFormat,
    TResult Function()? clear,
    TResult Function()? getNow,
    TResult Function(TZDateTime datetime)? setNow,
    TResult Function(TZDateTime datetime)? setInitialDatetime,
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
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateDatetimeMessage value) updateDatetime,
    required TResult Function(UpdateInputTypeMessage value) updateInputType,
    required TResult Function(UpdateDatetimeFormatMessage value)
    updateDatetimeFormat,
    required TResult Function(ClearMessage value) clear,
    required TResult Function(GetNowMessage value) getNow,
    required TResult Function(SetNowMessage value) setNow,
    required TResult Function(SetInitialDatetimeMessage value)
    setInitialDatetime,
  }) {
    return setInitialDatetime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult? Function(UpdateInputTypeMessage value)? updateInputType,
    TResult? Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult? Function(ClearMessage value)? clear,
    TResult? Function(GetNowMessage value)? getNow,
    TResult? Function(SetNowMessage value)? setNow,
    TResult? Function(SetInitialDatetimeMessage value)? setInitialDatetime,
  }) {
    return setInitialDatetime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateDatetimeMessage value)? updateDatetime,
    TResult Function(UpdateInputTypeMessage value)? updateInputType,
    TResult Function(UpdateDatetimeFormatMessage value)? updateDatetimeFormat,
    TResult Function(ClearMessage value)? clear,
    TResult Function(GetNowMessage value)? getNow,
    TResult Function(SetNowMessage value)? setNow,
    TResult Function(SetInitialDatetimeMessage value)? setInitialDatetime,
    required TResult orElse(),
  }) {
    if (setInitialDatetime != null) {
      return setInitialDatetime(this);
    }
    return orElse();
  }
}

abstract class SetInitialDatetimeMessage implements DatetimeConverterMessage {
  const factory SetInitialDatetimeMessage(final TZDateTime datetime) =
      _$SetInitialDatetimeMessageImpl;

  TZDateTime get datetime;

  /// Create a copy of DatetimeConverterMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetInitialDatetimeMessageImplCopyWith<_$SetInitialDatetimeMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}
