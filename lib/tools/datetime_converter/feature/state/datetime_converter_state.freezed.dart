// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datetime_converter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DatetimeConverterState {
  TZDateTime? get datetime => throw _privateConstructorUsedError;
  bool get isReadOnly => throw _privateConstructorUsedError;
  String get input => throw _privateConstructorUsedError;
  InputType get inputType => throw _privateConstructorUsedError;
  DatetimeFormat get format => throw _privateConstructorUsedError;

  /// Create a copy of DatetimeConverterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatetimeConverterStateCopyWith<DatetimeConverterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatetimeConverterStateCopyWith<$Res> {
  factory $DatetimeConverterStateCopyWith(DatetimeConverterState value,
          $Res Function(DatetimeConverterState) then) =
      _$DatetimeConverterStateCopyWithImpl<$Res, DatetimeConverterState>;
  @useResult
  $Res call(
      {TZDateTime? datetime,
      bool isReadOnly,
      String input,
      InputType inputType,
      DatetimeFormat format});
}

/// @nodoc
class _$DatetimeConverterStateCopyWithImpl<$Res,
        $Val extends DatetimeConverterState>
    implements $DatetimeConverterStateCopyWith<$Res> {
  _$DatetimeConverterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatetimeConverterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = freezed,
    Object? isReadOnly = null,
    Object? input = null,
    Object? inputType = null,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as TZDateTime?,
      isReadOnly: null == isReadOnly
          ? _value.isReadOnly
          : isReadOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      inputType: null == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as InputType,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as DatetimeFormat,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatetimeConverterStateImplCopyWith<$Res>
    implements $DatetimeConverterStateCopyWith<$Res> {
  factory _$$DatetimeConverterStateImplCopyWith(
          _$DatetimeConverterStateImpl value,
          $Res Function(_$DatetimeConverterStateImpl) then) =
      __$$DatetimeConverterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TZDateTime? datetime,
      bool isReadOnly,
      String input,
      InputType inputType,
      DatetimeFormat format});
}

/// @nodoc
class __$$DatetimeConverterStateImplCopyWithImpl<$Res>
    extends _$DatetimeConverterStateCopyWithImpl<$Res,
        _$DatetimeConverterStateImpl>
    implements _$$DatetimeConverterStateImplCopyWith<$Res> {
  __$$DatetimeConverterStateImplCopyWithImpl(
      _$DatetimeConverterStateImpl _value,
      $Res Function(_$DatetimeConverterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatetimeConverterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = freezed,
    Object? isReadOnly = null,
    Object? input = null,
    Object? inputType = null,
    Object? format = null,
  }) {
    return _then(_$DatetimeConverterStateImpl(
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as TZDateTime?,
      isReadOnly: null == isReadOnly
          ? _value.isReadOnly
          : isReadOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      inputType: null == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as InputType,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as DatetimeFormat,
    ));
  }
}

/// @nodoc

class _$DatetimeConverterStateImpl implements _DatetimeConverterState {
  const _$DatetimeConverterStateImpl(
      {required this.datetime,
      required this.isReadOnly,
      required this.input,
      required this.inputType,
      required this.format});

  @override
  final TZDateTime? datetime;
  @override
  final bool isReadOnly;
  @override
  final String input;
  @override
  final InputType inputType;
  @override
  final DatetimeFormat format;

  @override
  String toString() {
    return 'DatetimeConverterState(datetime: $datetime, isReadOnly: $isReadOnly, input: $input, inputType: $inputType, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatetimeConverterStateImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.isReadOnly, isReadOnly) ||
                other.isReadOnly == isReadOnly) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.inputType, inputType) ||
                other.inputType == inputType) &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, datetime, isReadOnly, input, inputType, format);

  /// Create a copy of DatetimeConverterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatetimeConverterStateImplCopyWith<_$DatetimeConverterStateImpl>
      get copyWith => __$$DatetimeConverterStateImplCopyWithImpl<
          _$DatetimeConverterStateImpl>(this, _$identity);
}

abstract class _DatetimeConverterState implements DatetimeConverterState {
  const factory _DatetimeConverterState(
      {required final TZDateTime? datetime,
      required final bool isReadOnly,
      required final String input,
      required final InputType inputType,
      required final DatetimeFormat format}) = _$DatetimeConverterStateImpl;

  @override
  TZDateTime? get datetime;
  @override
  bool get isReadOnly;
  @override
  String get input;
  @override
  InputType get inputType;
  @override
  DatetimeFormat get format;

  /// Create a copy of DatetimeConverterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatetimeConverterStateImplCopyWith<_$DatetimeConverterStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
