// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NumberBaseState _$NumberBaseStateFromJson(Map<String, dynamic> json) {
  return _NumberBaseState.fromJson(json);
}

/// @nodoc
mixin _$NumberBaseState {
  String get base2 => throw _privateConstructorUsedError;
  String get base8 => throw _privateConstructorUsedError;
  String get base10 => throw _privateConstructorUsedError;
  String get base16 => throw _privateConstructorUsedError;
  int get customBase => throw _privateConstructorUsedError;
  String get customBaseValue => throw _privateConstructorUsedError;
  BigInt? get value => throw _privateConstructorUsedError;

  /// Serializes this NumberBaseState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NumberBaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NumberBaseStateCopyWith<NumberBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberBaseStateCopyWith<$Res> {
  factory $NumberBaseStateCopyWith(
          NumberBaseState value, $Res Function(NumberBaseState) then) =
      _$NumberBaseStateCopyWithImpl<$Res, NumberBaseState>;
  @useResult
  $Res call(
      {String base2,
      String base8,
      String base10,
      String base16,
      int customBase,
      String customBaseValue,
      BigInt? value});
}

/// @nodoc
class _$NumberBaseStateCopyWithImpl<$Res, $Val extends NumberBaseState>
    implements $NumberBaseStateCopyWith<$Res> {
  _$NumberBaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NumberBaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base2 = null,
    Object? base8 = null,
    Object? base10 = null,
    Object? base16 = null,
    Object? customBase = null,
    Object? customBaseValue = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      base2: null == base2
          ? _value.base2
          : base2 // ignore: cast_nullable_to_non_nullable
              as String,
      base8: null == base8
          ? _value.base8
          : base8 // ignore: cast_nullable_to_non_nullable
              as String,
      base10: null == base10
          ? _value.base10
          : base10 // ignore: cast_nullable_to_non_nullable
              as String,
      base16: null == base16
          ? _value.base16
          : base16 // ignore: cast_nullable_to_non_nullable
              as String,
      customBase: null == customBase
          ? _value.customBase
          : customBase // ignore: cast_nullable_to_non_nullable
              as int,
      customBaseValue: null == customBaseValue
          ? _value.customBaseValue
          : customBaseValue // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NumberBaseStateImplCopyWith<$Res>
    implements $NumberBaseStateCopyWith<$Res> {
  factory _$$NumberBaseStateImplCopyWith(_$NumberBaseStateImpl value,
          $Res Function(_$NumberBaseStateImpl) then) =
      __$$NumberBaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String base2,
      String base8,
      String base10,
      String base16,
      int customBase,
      String customBaseValue,
      BigInt? value});
}

/// @nodoc
class __$$NumberBaseStateImplCopyWithImpl<$Res>
    extends _$NumberBaseStateCopyWithImpl<$Res, _$NumberBaseStateImpl>
    implements _$$NumberBaseStateImplCopyWith<$Res> {
  __$$NumberBaseStateImplCopyWithImpl(
      _$NumberBaseStateImpl _value, $Res Function(_$NumberBaseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberBaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base2 = null,
    Object? base8 = null,
    Object? base10 = null,
    Object? base16 = null,
    Object? customBase = null,
    Object? customBaseValue = null,
    Object? value = freezed,
  }) {
    return _then(_$NumberBaseStateImpl(
      base2: null == base2
          ? _value.base2
          : base2 // ignore: cast_nullable_to_non_nullable
              as String,
      base8: null == base8
          ? _value.base8
          : base8 // ignore: cast_nullable_to_non_nullable
              as String,
      base10: null == base10
          ? _value.base10
          : base10 // ignore: cast_nullable_to_non_nullable
              as String,
      base16: null == base16
          ? _value.base16
          : base16 // ignore: cast_nullable_to_non_nullable
              as String,
      customBase: null == customBase
          ? _value.customBase
          : customBase // ignore: cast_nullable_to_non_nullable
              as int,
      customBaseValue: null == customBaseValue
          ? _value.customBaseValue
          : customBaseValue // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberBaseStateImpl implements _NumberBaseState {
  const _$NumberBaseStateImpl(
      {required this.base2,
      required this.base8,
      required this.base10,
      required this.base16,
      required this.customBase,
      required this.customBaseValue,
      required this.value})
      : assert(customBase >= 2 && customBase <= 36);

  factory _$NumberBaseStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberBaseStateImplFromJson(json);

  @override
  final String base2;
  @override
  final String base8;
  @override
  final String base10;
  @override
  final String base16;
  @override
  final int customBase;
  @override
  final String customBaseValue;
  @override
  final BigInt? value;

  @override
  String toString() {
    return 'NumberBaseState(base2: $base2, base8: $base8, base10: $base10, base16: $base16, customBase: $customBase, customBaseValue: $customBaseValue, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberBaseStateImpl &&
            (identical(other.base2, base2) || other.base2 == base2) &&
            (identical(other.base8, base8) || other.base8 == base8) &&
            (identical(other.base10, base10) || other.base10 == base10) &&
            (identical(other.base16, base16) || other.base16 == base16) &&
            (identical(other.customBase, customBase) ||
                other.customBase == customBase) &&
            (identical(other.customBaseValue, customBaseValue) ||
                other.customBaseValue == customBaseValue) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base2, base8, base10, base16,
      customBase, customBaseValue, value);

  /// Create a copy of NumberBaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberBaseStateImplCopyWith<_$NumberBaseStateImpl> get copyWith =>
      __$$NumberBaseStateImplCopyWithImpl<_$NumberBaseStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberBaseStateImplToJson(
      this,
    );
  }
}

abstract class _NumberBaseState implements NumberBaseState {
  const factory _NumberBaseState(
      {required final String base2,
      required final String base8,
      required final String base10,
      required final String base16,
      required final int customBase,
      required final String customBaseValue,
      required final BigInt? value}) = _$NumberBaseStateImpl;

  factory _NumberBaseState.fromJson(Map<String, dynamic> json) =
      _$NumberBaseStateImpl.fromJson;

  @override
  String get base2;
  @override
  String get base8;
  @override
  String get base10;
  @override
  String get base16;
  @override
  int get customBase;
  @override
  String get customBaseValue;
  @override
  BigInt? get value;

  /// Create a copy of NumberBaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NumberBaseStateImplCopyWith<_$NumberBaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
