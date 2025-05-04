// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExportEffect {
  QrCode get code => throw _privateConstructorUsedError;
  QrCodeVisualData get visualData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)
        saveToFile,
    required TResult Function(QrCode code, QrCodeVisualData visualData)
        copyToClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)?
        saveToFile,
    TResult? Function(QrCode code, QrCodeVisualData visualData)?
        copyToClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)?
        saveToFile,
    TResult Function(QrCode code, QrCodeVisualData visualData)? copyToClipboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveToFileEffect value) saveToFile,
    required TResult Function(CopyToClipboardEffect value) copyToClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveToFileEffect value)? saveToFile,
    TResult? Function(CopyToClipboardEffect value)? copyToClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveToFileEffect value)? saveToFile,
    TResult Function(CopyToClipboardEffect value)? copyToClipboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ExportEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExportEffectCopyWith<ExportEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExportEffectCopyWith<$Res> {
  factory $ExportEffectCopyWith(
          ExportEffect value, $Res Function(ExportEffect) then) =
      _$ExportEffectCopyWithImpl<$Res, ExportEffect>;
  @useResult
  $Res call({QrCode code, QrCodeVisualData visualData});

  $QrCodeVisualDataCopyWith<$Res> get visualData;
}

/// @nodoc
class _$ExportEffectCopyWithImpl<$Res, $Val extends ExportEffect>
    implements $ExportEffectCopyWith<$Res> {
  _$ExportEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExportEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? visualData = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QrCode,
      visualData: null == visualData
          ? _value.visualData
          : visualData // ignore: cast_nullable_to_non_nullable
              as QrCodeVisualData,
    ) as $Val);
  }

  /// Create a copy of ExportEffect
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
abstract class _$$SaveToFileEffectImplCopyWith<$Res>
    implements $ExportEffectCopyWith<$Res> {
  factory _$$SaveToFileEffectImplCopyWith(_$SaveToFileEffectImpl value,
          $Res Function(_$SaveToFileEffectImpl) then) =
      __$$SaveToFileEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QrCode code, ExportType exportType, QrCodeVisualData visualData});

  @override
  $QrCodeVisualDataCopyWith<$Res> get visualData;
}

/// @nodoc
class __$$SaveToFileEffectImplCopyWithImpl<$Res>
    extends _$ExportEffectCopyWithImpl<$Res, _$SaveToFileEffectImpl>
    implements _$$SaveToFileEffectImplCopyWith<$Res> {
  __$$SaveToFileEffectImplCopyWithImpl(_$SaveToFileEffectImpl _value,
      $Res Function(_$SaveToFileEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExportEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? exportType = null,
    Object? visualData = null,
  }) {
    return _then(_$SaveToFileEffectImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QrCode,
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

class _$SaveToFileEffectImpl implements SaveToFileEffect {
  const _$SaveToFileEffectImpl(
      {required this.code, required this.exportType, required this.visualData});

  @override
  final QrCode code;
  @override
  final ExportType exportType;
  @override
  final QrCodeVisualData visualData;

  @override
  String toString() {
    return 'ExportEffect.saveToFile(code: $code, exportType: $exportType, visualData: $visualData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveToFileEffectImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.exportType, exportType) ||
                other.exportType == exportType) &&
            (identical(other.visualData, visualData) ||
                other.visualData == visualData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, exportType, visualData);

  /// Create a copy of ExportEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveToFileEffectImplCopyWith<_$SaveToFileEffectImpl> get copyWith =>
      __$$SaveToFileEffectImplCopyWithImpl<_$SaveToFileEffectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)
        saveToFile,
    required TResult Function(QrCode code, QrCodeVisualData visualData)
        copyToClipboard,
  }) {
    return saveToFile(code, exportType, visualData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)?
        saveToFile,
    TResult? Function(QrCode code, QrCodeVisualData visualData)?
        copyToClipboard,
  }) {
    return saveToFile?.call(code, exportType, visualData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)?
        saveToFile,
    TResult Function(QrCode code, QrCodeVisualData visualData)? copyToClipboard,
    required TResult orElse(),
  }) {
    if (saveToFile != null) {
      return saveToFile(code, exportType, visualData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveToFileEffect value) saveToFile,
    required TResult Function(CopyToClipboardEffect value) copyToClipboard,
  }) {
    return saveToFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveToFileEffect value)? saveToFile,
    TResult? Function(CopyToClipboardEffect value)? copyToClipboard,
  }) {
    return saveToFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveToFileEffect value)? saveToFile,
    TResult Function(CopyToClipboardEffect value)? copyToClipboard,
    required TResult orElse(),
  }) {
    if (saveToFile != null) {
      return saveToFile(this);
    }
    return orElse();
  }
}

abstract class SaveToFileEffect implements ExportEffect {
  const factory SaveToFileEffect(
      {required final QrCode code,
      required final ExportType exportType,
      required final QrCodeVisualData visualData}) = _$SaveToFileEffectImpl;

  @override
  QrCode get code;
  ExportType get exportType;
  @override
  QrCodeVisualData get visualData;

  /// Create a copy of ExportEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveToFileEffectImplCopyWith<_$SaveToFileEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CopyToClipboardEffectImplCopyWith<$Res>
    implements $ExportEffectCopyWith<$Res> {
  factory _$$CopyToClipboardEffectImplCopyWith(
          _$CopyToClipboardEffectImpl value,
          $Res Function(_$CopyToClipboardEffectImpl) then) =
      __$$CopyToClipboardEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QrCode code, QrCodeVisualData visualData});

  @override
  $QrCodeVisualDataCopyWith<$Res> get visualData;
}

/// @nodoc
class __$$CopyToClipboardEffectImplCopyWithImpl<$Res>
    extends _$ExportEffectCopyWithImpl<$Res, _$CopyToClipboardEffectImpl>
    implements _$$CopyToClipboardEffectImplCopyWith<$Res> {
  __$$CopyToClipboardEffectImplCopyWithImpl(_$CopyToClipboardEffectImpl _value,
      $Res Function(_$CopyToClipboardEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExportEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? visualData = null,
  }) {
    return _then(_$CopyToClipboardEffectImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QrCode,
      visualData: null == visualData
          ? _value.visualData
          : visualData // ignore: cast_nullable_to_non_nullable
              as QrCodeVisualData,
    ));
  }
}

/// @nodoc

class _$CopyToClipboardEffectImpl implements CopyToClipboardEffect {
  const _$CopyToClipboardEffectImpl(
      {required this.code, required this.visualData});

  @override
  final QrCode code;
  @override
  final QrCodeVisualData visualData;

  @override
  String toString() {
    return 'ExportEffect.copyToClipboard(code: $code, visualData: $visualData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyToClipboardEffectImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.visualData, visualData) ||
                other.visualData == visualData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, visualData);

  /// Create a copy of ExportEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyToClipboardEffectImplCopyWith<_$CopyToClipboardEffectImpl>
      get copyWith => __$$CopyToClipboardEffectImplCopyWithImpl<
          _$CopyToClipboardEffectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)
        saveToFile,
    required TResult Function(QrCode code, QrCodeVisualData visualData)
        copyToClipboard,
  }) {
    return copyToClipboard(code, visualData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)?
        saveToFile,
    TResult? Function(QrCode code, QrCodeVisualData visualData)?
        copyToClipboard,
  }) {
    return copyToClipboard?.call(code, visualData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QrCode code, ExportType exportType, QrCodeVisualData visualData)?
        saveToFile,
    TResult Function(QrCode code, QrCodeVisualData visualData)? copyToClipboard,
    required TResult orElse(),
  }) {
    if (copyToClipboard != null) {
      return copyToClipboard(code, visualData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveToFileEffect value) saveToFile,
    required TResult Function(CopyToClipboardEffect value) copyToClipboard,
  }) {
    return copyToClipboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveToFileEffect value)? saveToFile,
    TResult? Function(CopyToClipboardEffect value)? copyToClipboard,
  }) {
    return copyToClipboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveToFileEffect value)? saveToFile,
    TResult Function(CopyToClipboardEffect value)? copyToClipboard,
    required TResult orElse(),
  }) {
    if (copyToClipboard != null) {
      return copyToClipboard(this);
    }
    return orElse();
  }
}

abstract class CopyToClipboardEffect implements ExportEffect {
  const factory CopyToClipboardEffect(
          {required final QrCode code,
          required final QrCodeVisualData visualData}) =
      _$CopyToClipboardEffectImpl;

  @override
  QrCode get code;
  @override
  QrCodeVisualData get visualData;

  /// Create a copy of ExportEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyToClipboardEffectImplCopyWith<_$CopyToClipboardEffectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SaveStateEffect {
  QrCodeState get state => throw _privateConstructorUsedError;

  /// Create a copy of SaveStateEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveStateEffectCopyWith<SaveStateEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveStateEffectCopyWith<$Res> {
  factory $SaveStateEffectCopyWith(
          SaveStateEffect value, $Res Function(SaveStateEffect) then) =
      _$SaveStateEffectCopyWithImpl<$Res, SaveStateEffect>;
  @useResult
  $Res call({QrCodeState state});

  $QrCodeStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SaveStateEffectCopyWithImpl<$Res, $Val extends SaveStateEffect>
    implements $SaveStateEffectCopyWith<$Res> {
  _$SaveStateEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveStateEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as QrCodeState,
    ) as $Val);
  }

  /// Create a copy of SaveStateEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QrCodeStateCopyWith<$Res> get state {
    return $QrCodeStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveStateEffectImplCopyWith<$Res>
    implements $SaveStateEffectCopyWith<$Res> {
  factory _$$SaveStateEffectImplCopyWith(_$SaveStateEffectImpl value,
          $Res Function(_$SaveStateEffectImpl) then) =
      __$$SaveStateEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QrCodeState state});

  @override
  $QrCodeStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$SaveStateEffectImplCopyWithImpl<$Res>
    extends _$SaveStateEffectCopyWithImpl<$Res, _$SaveStateEffectImpl>
    implements _$$SaveStateEffectImplCopyWith<$Res> {
  __$$SaveStateEffectImplCopyWithImpl(
      _$SaveStateEffectImpl _value, $Res Function(_$SaveStateEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveStateEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$SaveStateEffectImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as QrCodeState,
    ));
  }
}

/// @nodoc

class _$SaveStateEffectImpl implements _SaveStateEffect {
  const _$SaveStateEffectImpl({required this.state});

  @override
  final QrCodeState state;

  @override
  String toString() {
    return 'SaveStateEffect(state: $state)';
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

  /// Create a copy of SaveStateEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveStateEffectImplCopyWith<_$SaveStateEffectImpl> get copyWith =>
      __$$SaveStateEffectImplCopyWithImpl<_$SaveStateEffectImpl>(
          this, _$identity);
}

abstract class _SaveStateEffect implements SaveStateEffect {
  const factory _SaveStateEffect({required final QrCodeState state}) =
      _$SaveStateEffectImpl;

  @override
  QrCodeState get state;

  /// Create a copy of SaveStateEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveStateEffectImplCopyWith<_$SaveStateEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadStateEffect {}

/// @nodoc
abstract class $LoadStateEffectCopyWith<$Res> {
  factory $LoadStateEffectCopyWith(
          LoadStateEffect value, $Res Function(LoadStateEffect) then) =
      _$LoadStateEffectCopyWithImpl<$Res, LoadStateEffect>;
}

/// @nodoc
class _$LoadStateEffectCopyWithImpl<$Res, $Val extends LoadStateEffect>
    implements $LoadStateEffectCopyWith<$Res> {
  _$LoadStateEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadStateEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadStateEffectImplCopyWith<$Res> {
  factory _$$LoadStateEffectImplCopyWith(_$LoadStateEffectImpl value,
          $Res Function(_$LoadStateEffectImpl) then) =
      __$$LoadStateEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadStateEffectImplCopyWithImpl<$Res>
    extends _$LoadStateEffectCopyWithImpl<$Res, _$LoadStateEffectImpl>
    implements _$$LoadStateEffectImplCopyWith<$Res> {
  __$$LoadStateEffectImplCopyWithImpl(
      _$LoadStateEffectImpl _value, $Res Function(_$LoadStateEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadStateEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadStateEffectImpl implements _LoadStateEffect {
  const _$LoadStateEffectImpl();

  @override
  String toString() {
    return 'LoadStateEffect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadStateEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadStateEffect implements LoadStateEffect {
  const factory _LoadStateEffect() = _$LoadStateEffectImpl;
}
