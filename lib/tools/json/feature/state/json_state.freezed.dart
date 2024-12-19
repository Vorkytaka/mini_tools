// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JsonState {
  String get input => throw _privateConstructorUsedError;
  String? get output => throw _privateConstructorUsedError;
  JsonOutputFormat get format => throw _privateConstructorUsedError;
  JsonPathState get jsonPath => throw _privateConstructorUsedError;

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JsonStateCopyWith<JsonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonStateCopyWith<$Res> {
  factory $JsonStateCopyWith(JsonState value, $Res Function(JsonState) then) =
      _$JsonStateCopyWithImpl<$Res, JsonState>;
  @useResult
  $Res call(
      {String input,
      String? output,
      JsonOutputFormat format,
      JsonPathState jsonPath});

  $JsonPathStateCopyWith<$Res> get jsonPath;
}

/// @nodoc
class _$JsonStateCopyWithImpl<$Res, $Val extends JsonState>
    implements $JsonStateCopyWith<$Res> {
  _$JsonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? output = freezed,
    Object? format = null,
    Object? jsonPath = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: freezed == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String?,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as JsonOutputFormat,
      jsonPath: null == jsonPath
          ? _value.jsonPath
          : jsonPath // ignore: cast_nullable_to_non_nullable
              as JsonPathState,
    ) as $Val);
  }

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JsonPathStateCopyWith<$Res> get jsonPath {
    return $JsonPathStateCopyWith<$Res>(_value.jsonPath, (value) {
      return _then(_value.copyWith(jsonPath: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JsonStateImplCopyWith<$Res>
    implements $JsonStateCopyWith<$Res> {
  factory _$$JsonStateImplCopyWith(
          _$JsonStateImpl value, $Res Function(_$JsonStateImpl) then) =
      __$$JsonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String input,
      String? output,
      JsonOutputFormat format,
      JsonPathState jsonPath});

  @override
  $JsonPathStateCopyWith<$Res> get jsonPath;
}

/// @nodoc
class __$$JsonStateImplCopyWithImpl<$Res>
    extends _$JsonStateCopyWithImpl<$Res, _$JsonStateImpl>
    implements _$$JsonStateImplCopyWith<$Res> {
  __$$JsonStateImplCopyWithImpl(
      _$JsonStateImpl _value, $Res Function(_$JsonStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? output = freezed,
    Object? format = null,
    Object? jsonPath = null,
  }) {
    return _then(_$JsonStateImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: freezed == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String?,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as JsonOutputFormat,
      jsonPath: null == jsonPath
          ? _value.jsonPath
          : jsonPath // ignore: cast_nullable_to_non_nullable
              as JsonPathState,
    ));
  }
}

/// @nodoc

class _$JsonStateImpl implements _JsonState {
  const _$JsonStateImpl(
      {required this.input,
      required this.output,
      required this.format,
      required this.jsonPath});

  @override
  final String input;
  @override
  final String? output;
  @override
  final JsonOutputFormat format;
  @override
  final JsonPathState jsonPath;

  @override
  String toString() {
    return 'JsonState(input: $input, output: $output, format: $format, jsonPath: $jsonPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonStateImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.jsonPath, jsonPath) ||
                other.jsonPath == jsonPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input, output, format, jsonPath);

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonStateImplCopyWith<_$JsonStateImpl> get copyWith =>
      __$$JsonStateImplCopyWithImpl<_$JsonStateImpl>(this, _$identity);
}

abstract class _JsonState implements JsonState {
  const factory _JsonState(
      {required final String input,
      required final String? output,
      required final JsonOutputFormat format,
      required final JsonPathState jsonPath}) = _$JsonStateImpl;

  @override
  String get input;
  @override
  String? get output;
  @override
  JsonOutputFormat get format;
  @override
  JsonPathState get jsonPath;

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonStateImplCopyWith<_$JsonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JsonPathState {
  String get input => throw _privateConstructorUsedError;
  JsonPath? get value => throw _privateConstructorUsedError;

  /// Create a copy of JsonPathState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JsonPathStateCopyWith<JsonPathState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonPathStateCopyWith<$Res> {
  factory $JsonPathStateCopyWith(
          JsonPathState value, $Res Function(JsonPathState) then) =
      _$JsonPathStateCopyWithImpl<$Res, JsonPathState>;
  @useResult
  $Res call({String input, JsonPath? value});
}

/// @nodoc
class _$JsonPathStateCopyWithImpl<$Res, $Val extends JsonPathState>
    implements $JsonPathStateCopyWith<$Res> {
  _$JsonPathStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JsonPathState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as JsonPath?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JsonPathStateImplCopyWith<$Res>
    implements $JsonPathStateCopyWith<$Res> {
  factory _$$JsonPathStateImplCopyWith(
          _$JsonPathStateImpl value, $Res Function(_$JsonPathStateImpl) then) =
      __$$JsonPathStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String input, JsonPath? value});
}

/// @nodoc
class __$$JsonPathStateImplCopyWithImpl<$Res>
    extends _$JsonPathStateCopyWithImpl<$Res, _$JsonPathStateImpl>
    implements _$$JsonPathStateImplCopyWith<$Res> {
  __$$JsonPathStateImplCopyWithImpl(
      _$JsonPathStateImpl _value, $Res Function(_$JsonPathStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JsonPathState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? value = freezed,
  }) {
    return _then(_$JsonPathStateImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as JsonPath?,
    ));
  }
}

/// @nodoc

class _$JsonPathStateImpl extends _JsonPathState {
  const _$JsonPathStateImpl({required this.input, required this.value})
      : super._();

  @override
  final String input;
  @override
  final JsonPath? value;

  @override
  String toString() {
    return 'JsonPathState(input: $input, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonPathStateImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input, value);

  /// Create a copy of JsonPathState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonPathStateImplCopyWith<_$JsonPathStateImpl> get copyWith =>
      __$$JsonPathStateImplCopyWithImpl<_$JsonPathStateImpl>(this, _$identity);
}

abstract class _JsonPathState extends JsonPathState {
  const factory _JsonPathState(
      {required final String input,
      required final JsonPath? value}) = _$JsonPathStateImpl;
  const _JsonPathState._() : super._();

  @override
  String get input;
  @override
  JsonPath? get value;

  /// Create a copy of JsonPathState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonPathStateImplCopyWith<_$JsonPathStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
