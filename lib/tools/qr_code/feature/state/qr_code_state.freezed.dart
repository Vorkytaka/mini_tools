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
  String get input => throw _privateConstructorUsedError;
  ErrorCorrectionLevel get correctionLevel =>
      throw _privateConstructorUsedError;
  ExportType get exportType => throw _privateConstructorUsedError;
  QrCodeVisualData get visualData => throw _privateConstructorUsedError;

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
  $Res call(
      {String input,
      ErrorCorrectionLevel correctionLevel,
      ExportType exportType,
      QrCodeVisualData visualData});

  $QrCodeVisualDataCopyWith<$Res> get visualData;
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
    Object? input = null,
    Object? correctionLevel = null,
    Object? exportType = null,
    Object? visualData = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      correctionLevel: null == correctionLevel
          ? _value.correctionLevel
          : correctionLevel // ignore: cast_nullable_to_non_nullable
              as ErrorCorrectionLevel,
      exportType: null == exportType
          ? _value.exportType
          : exportType // ignore: cast_nullable_to_non_nullable
              as ExportType,
      visualData: null == visualData
          ? _value.visualData
          : visualData // ignore: cast_nullable_to_non_nullable
              as QrCodeVisualData,
    ) as $Val);
  }

  /// Create a copy of QrCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QrCodeVisualDataCopyWith<$Res> get visualData {
    return $QrCodeVisualDataCopyWith<$Res>(_value.visualData, (value) {
      return _then(_value.copyWith(visualData: value) as $Val);
    });
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
  $Res call(
      {String input,
      ErrorCorrectionLevel correctionLevel,
      ExportType exportType,
      QrCodeVisualData visualData});

  @override
  $QrCodeVisualDataCopyWith<$Res> get visualData;
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
    Object? input = null,
    Object? correctionLevel = null,
    Object? exportType = null,
    Object? visualData = null,
  }) {
    return _then(_$QrCodeStateImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      correctionLevel: null == correctionLevel
          ? _value.correctionLevel
          : correctionLevel // ignore: cast_nullable_to_non_nullable
              as ErrorCorrectionLevel,
      exportType: null == exportType
          ? _value.exportType
          : exportType // ignore: cast_nullable_to_non_nullable
              as ExportType,
      visualData: null == visualData
          ? _value.visualData
          : visualData // ignore: cast_nullable_to_non_nullable
              as QrCodeVisualData,
    ));
  }
}

/// @nodoc

class _$QrCodeStateImpl extends _QrCodeState {
  const _$QrCodeStateImpl(
      {required this.input,
      required this.correctionLevel,
      required this.exportType,
      required this.visualData})
      : super._();

  @override
  final String input;
  @override
  final ErrorCorrectionLevel correctionLevel;
  @override
  final ExportType exportType;
  @override
  final QrCodeVisualData visualData;

  @override
  String toString() {
    return 'QrCodeState(input: $input, correctionLevel: $correctionLevel, exportType: $exportType, visualData: $visualData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCodeStateImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.correctionLevel, correctionLevel) ||
                other.correctionLevel == correctionLevel) &&
            (identical(other.exportType, exportType) ||
                other.exportType == exportType) &&
            (identical(other.visualData, visualData) ||
                other.visualData == visualData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, input, correctionLevel, exportType, visualData);

  /// Create a copy of QrCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrCodeStateImplCopyWith<_$QrCodeStateImpl> get copyWith =>
      __$$QrCodeStateImplCopyWithImpl<_$QrCodeStateImpl>(this, _$identity);
}

abstract class _QrCodeState extends QrCodeState {
  const factory _QrCodeState(
      {required final String input,
      required final ErrorCorrectionLevel correctionLevel,
      required final ExportType exportType,
      required final QrCodeVisualData visualData}) = _$QrCodeStateImpl;
  const _QrCodeState._() : super._();

  @override
  String get input;
  @override
  ErrorCorrectionLevel get correctionLevel;
  @override
  ExportType get exportType;
  @override
  QrCodeVisualData get visualData;

  /// Create a copy of QrCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrCodeStateImplCopyWith<_$QrCodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QrCodeVisualData {
  Color get backgroundColor => throw _privateConstructorUsedError;
  Color get foregroundColor => throw _privateConstructorUsedError;
  QrCodeShape get shape => throw _privateConstructorUsedError;
  EdgeInsets get paddings => throw _privateConstructorUsedError;

  /// Create a copy of QrCodeVisualData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QrCodeVisualDataCopyWith<QrCodeVisualData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeVisualDataCopyWith<$Res> {
  factory $QrCodeVisualDataCopyWith(
          QrCodeVisualData value, $Res Function(QrCodeVisualData) then) =
      _$QrCodeVisualDataCopyWithImpl<$Res, QrCodeVisualData>;
  @useResult
  $Res call(
      {Color backgroundColor,
      Color foregroundColor,
      QrCodeShape shape,
      EdgeInsets paddings});
}

/// @nodoc
class _$QrCodeVisualDataCopyWithImpl<$Res, $Val extends QrCodeVisualData>
    implements $QrCodeVisualDataCopyWith<$Res> {
  _$QrCodeVisualDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrCodeVisualData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? foregroundColor = null,
    Object? shape = null,
    Object? paddings = null,
  }) {
    return _then(_value.copyWith(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      foregroundColor: null == foregroundColor
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as QrCodeShape,
      paddings: null == paddings
          ? _value.paddings
          : paddings // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrCodeVisualDataImplCopyWith<$Res>
    implements $QrCodeVisualDataCopyWith<$Res> {
  factory _$$QrCodeVisualDataImplCopyWith(_$QrCodeVisualDataImpl value,
          $Res Function(_$QrCodeVisualDataImpl) then) =
      __$$QrCodeVisualDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color backgroundColor,
      Color foregroundColor,
      QrCodeShape shape,
      EdgeInsets paddings});
}

/// @nodoc
class __$$QrCodeVisualDataImplCopyWithImpl<$Res>
    extends _$QrCodeVisualDataCopyWithImpl<$Res, _$QrCodeVisualDataImpl>
    implements _$$QrCodeVisualDataImplCopyWith<$Res> {
  __$$QrCodeVisualDataImplCopyWithImpl(_$QrCodeVisualDataImpl _value,
      $Res Function(_$QrCodeVisualDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeVisualData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? foregroundColor = null,
    Object? shape = null,
    Object? paddings = null,
  }) {
    return _then(_$QrCodeVisualDataImpl(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      foregroundColor: null == foregroundColor
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as QrCodeShape,
      paddings: null == paddings
          ? _value.paddings
          : paddings // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
    ));
  }
}

/// @nodoc

class _$QrCodeVisualDataImpl implements _QrCodeVisualData {
  const _$QrCodeVisualDataImpl(
      {required this.backgroundColor,
      required this.foregroundColor,
      required this.shape,
      required this.paddings});

  @override
  final Color backgroundColor;
  @override
  final Color foregroundColor;
  @override
  final QrCodeShape shape;
  @override
  final EdgeInsets paddings;

  @override
  String toString() {
    return 'QrCodeVisualData(backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, shape: $shape, paddings: $paddings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCodeVisualDataImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.paddings, paddings) ||
                other.paddings == paddings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, backgroundColor, foregroundColor, shape, paddings);

  /// Create a copy of QrCodeVisualData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrCodeVisualDataImplCopyWith<_$QrCodeVisualDataImpl> get copyWith =>
      __$$QrCodeVisualDataImplCopyWithImpl<_$QrCodeVisualDataImpl>(
          this, _$identity);
}

abstract class _QrCodeVisualData implements QrCodeVisualData {
  const factory _QrCodeVisualData(
      {required final Color backgroundColor,
      required final Color foregroundColor,
      required final QrCodeShape shape,
      required final EdgeInsets paddings}) = _$QrCodeVisualDataImpl;

  @override
  Color get backgroundColor;
  @override
  Color get foregroundColor;
  @override
  QrCodeShape get shape;
  @override
  EdgeInsets get paddings;

  /// Create a copy of QrCodeVisualData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrCodeVisualDataImplCopyWith<_$QrCodeVisualDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
