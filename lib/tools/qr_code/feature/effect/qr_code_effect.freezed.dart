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
mixin _$QrCodeEffect {
  QrCode get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QrCode code, ExportType exportType) saveToFile,
    required TResult Function(QrCode code) copyToClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QrCode code, ExportType exportType)? saveToFile,
    TResult? Function(QrCode code)? copyToClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QrCode code, ExportType exportType)? saveToFile,
    TResult Function(QrCode code)? copyToClipboard,
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

  /// Create a copy of QrCodeEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QrCodeEffectCopyWith<QrCodeEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeEffectCopyWith<$Res> {
  factory $QrCodeEffectCopyWith(
          QrCodeEffect value, $Res Function(QrCodeEffect) then) =
      _$QrCodeEffectCopyWithImpl<$Res, QrCodeEffect>;
  @useResult
  $Res call({QrCode code});
}

/// @nodoc
class _$QrCodeEffectCopyWithImpl<$Res, $Val extends QrCodeEffect>
    implements $QrCodeEffectCopyWith<$Res> {
  _$QrCodeEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrCodeEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QrCode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveToFileEffectImplCopyWith<$Res>
    implements $QrCodeEffectCopyWith<$Res> {
  factory _$$SaveToFileEffectImplCopyWith(_$SaveToFileEffectImpl value,
          $Res Function(_$SaveToFileEffectImpl) then) =
      __$$SaveToFileEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QrCode code, ExportType exportType});
}

/// @nodoc
class __$$SaveToFileEffectImplCopyWithImpl<$Res>
    extends _$QrCodeEffectCopyWithImpl<$Res, _$SaveToFileEffectImpl>
    implements _$$SaveToFileEffectImplCopyWith<$Res> {
  __$$SaveToFileEffectImplCopyWithImpl(_$SaveToFileEffectImpl _value,
      $Res Function(_$SaveToFileEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? exportType = null,
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
    ));
  }
}

/// @nodoc

class _$SaveToFileEffectImpl implements SaveToFileEffect {
  const _$SaveToFileEffectImpl({required this.code, required this.exportType});

  @override
  final QrCode code;
  @override
  final ExportType exportType;

  @override
  String toString() {
    return 'QrCodeEffect.saveToFile(code: $code, exportType: $exportType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveToFileEffectImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.exportType, exportType) ||
                other.exportType == exportType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, exportType);

  /// Create a copy of QrCodeEffect
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
    required TResult Function(QrCode code, ExportType exportType) saveToFile,
    required TResult Function(QrCode code) copyToClipboard,
  }) {
    return saveToFile(code, exportType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QrCode code, ExportType exportType)? saveToFile,
    TResult? Function(QrCode code)? copyToClipboard,
  }) {
    return saveToFile?.call(code, exportType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QrCode code, ExportType exportType)? saveToFile,
    TResult Function(QrCode code)? copyToClipboard,
    required TResult orElse(),
  }) {
    if (saveToFile != null) {
      return saveToFile(code, exportType);
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

abstract class SaveToFileEffect implements QrCodeEffect {
  const factory SaveToFileEffect(
      {required final QrCode code,
      required final ExportType exportType}) = _$SaveToFileEffectImpl;

  @override
  QrCode get code;
  ExportType get exportType;

  /// Create a copy of QrCodeEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveToFileEffectImplCopyWith<_$SaveToFileEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CopyToClipboardEffectImplCopyWith<$Res>
    implements $QrCodeEffectCopyWith<$Res> {
  factory _$$CopyToClipboardEffectImplCopyWith(
          _$CopyToClipboardEffectImpl value,
          $Res Function(_$CopyToClipboardEffectImpl) then) =
      __$$CopyToClipboardEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QrCode code});
}

/// @nodoc
class __$$CopyToClipboardEffectImplCopyWithImpl<$Res>
    extends _$QrCodeEffectCopyWithImpl<$Res, _$CopyToClipboardEffectImpl>
    implements _$$CopyToClipboardEffectImplCopyWith<$Res> {
  __$$CopyToClipboardEffectImplCopyWithImpl(_$CopyToClipboardEffectImpl _value,
      $Res Function(_$CopyToClipboardEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CopyToClipboardEffectImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QrCode,
    ));
  }
}

/// @nodoc

class _$CopyToClipboardEffectImpl implements CopyToClipboardEffect {
  const _$CopyToClipboardEffectImpl({required this.code});

  @override
  final QrCode code;

  @override
  String toString() {
    return 'QrCodeEffect.copyToClipboard(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyToClipboardEffectImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of QrCodeEffect
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
    required TResult Function(QrCode code, ExportType exportType) saveToFile,
    required TResult Function(QrCode code) copyToClipboard,
  }) {
    return copyToClipboard(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QrCode code, ExportType exportType)? saveToFile,
    TResult? Function(QrCode code)? copyToClipboard,
  }) {
    return copyToClipboard?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QrCode code, ExportType exportType)? saveToFile,
    TResult Function(QrCode code)? copyToClipboard,
    required TResult orElse(),
  }) {
    if (copyToClipboard != null) {
      return copyToClipboard(code);
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

abstract class CopyToClipboardEffect implements QrCodeEffect {
  const factory CopyToClipboardEffect({required final QrCode code}) =
      _$CopyToClipboardEffectImpl;

  @override
  QrCode get code;

  /// Create a copy of QrCodeEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyToClipboardEffectImplCopyWith<_$CopyToClipboardEffectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
