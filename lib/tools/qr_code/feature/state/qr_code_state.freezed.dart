// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrCodeState {
  QrCode? get code => throw _privateConstructorUsedError;
  String get input => throw _privateConstructorUsedError;
  ErrorCorrectionLevel get correctionLevel =>
      throw _privateConstructorUsedError;

  /// Create a copy of QrCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QrCodeStateCopyWith<QrCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeStateCopyWith<$Res> {
  factory $QrCodeStateCopyWith(
          QrCodeState value, $Res Function(QrCodeState) then) =
      _$QrCodeStateCopyWithImpl<$Res, QrCodeState>;
  @useResult
  $Res call({QrCode? code, String input, ErrorCorrectionLevel correctionLevel});
}

/// @nodoc
class _$QrCodeStateCopyWithImpl<$Res, $Val extends QrCodeState>
    implements $QrCodeStateCopyWith<$Res> {
  _$QrCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? input = null,
    Object? correctionLevel = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QrCode?,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      correctionLevel: null == correctionLevel
          ? _value.correctionLevel
          : correctionLevel // ignore: cast_nullable_to_non_nullable
              as ErrorCorrectionLevel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrCodeStateImplCopyWith<$Res>
    implements $QrCodeStateCopyWith<$Res> {
  factory _$$QrCodeStateImplCopyWith(
          _$QrCodeStateImpl value, $Res Function(_$QrCodeStateImpl) then) =
      __$$QrCodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QrCode? code, String input, ErrorCorrectionLevel correctionLevel});
}

/// @nodoc
class __$$QrCodeStateImplCopyWithImpl<$Res>
    extends _$QrCodeStateCopyWithImpl<$Res, _$QrCodeStateImpl>
    implements _$$QrCodeStateImplCopyWith<$Res> {
  __$$QrCodeStateImplCopyWithImpl(
      _$QrCodeStateImpl _value, $Res Function(_$QrCodeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? input = null,
    Object? correctionLevel = null,
  }) {
    return _then(_$QrCodeStateImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QrCode?,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      correctionLevel: null == correctionLevel
          ? _value.correctionLevel
          : correctionLevel // ignore: cast_nullable_to_non_nullable
              as ErrorCorrectionLevel,
    ));
  }
}

/// @nodoc

class _$QrCodeStateImpl implements _QrCodeState {
  const _$QrCodeStateImpl(
      {required this.code, required this.input, required this.correctionLevel});

  @override
  final QrCode? code;
  @override
  final String input;
  @override
  final ErrorCorrectionLevel correctionLevel;

  @override
  String toString() {
    return 'QrCodeState(code: $code, input: $input, correctionLevel: $correctionLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCodeStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.correctionLevel, correctionLevel) ||
                other.correctionLevel == correctionLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, input, correctionLevel);

  /// Create a copy of QrCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrCodeStateImplCopyWith<_$QrCodeStateImpl> get copyWith =>
      __$$QrCodeStateImplCopyWithImpl<_$QrCodeStateImpl>(this, _$identity);
}

abstract class _QrCodeState implements QrCodeState {
  const factory _QrCodeState(
      {required final QrCode? code,
      required final String input,
      required final ErrorCorrectionLevel correctionLevel}) = _$QrCodeStateImpl;

  @override
  QrCode? get code;
  @override
  String get input;
  @override
  ErrorCorrectionLevel get correctionLevel;

  /// Create a copy of QrCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrCodeStateImplCopyWith<_$QrCodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
