// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrCodeMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateInput,
    required TResult Function(ErrorCorrectionLevel level) updateCorrectionLevel,
    required TResult Function() saveToFile,
    required TResult Function(ExportType type) updateExportType,
    required TResult Function() copyToClipboard,
    required TResult Function(QrCodeShape shape) shapeUpdate,
    required TResult Function(EdgeInsets padding) paddingUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult? Function()? saveToFile,
    TResult? Function(ExportType type)? updateExportType,
    TResult? Function()? copyToClipboard,
    TResult? Function(QrCodeShape shape)? shapeUpdate,
    TResult? Function(EdgeInsets padding)? paddingUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult Function()? saveToFile,
    TResult Function(ExportType type)? updateExportType,
    TResult Function()? copyToClipboard,
    TResult Function(QrCodeShape shape)? shapeUpdate,
    TResult Function(EdgeInsets padding)? paddingUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
    required TResult Function(SaveToFileMessage value) saveToFile,
    required TResult Function(UpdateExportTypeMessage value) updateExportType,
    required TResult Function(CopyToClipboardMessage value) copyToClipboard,
    required TResult Function(ShapeUpdateMessage value) shapeUpdate,
    required TResult Function(PaddingUpdateMessage value) paddingUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
    TResult? Function(SaveToFileMessage value)? saveToFile,
    TResult? Function(UpdateExportTypeMessage value)? updateExportType,
    TResult? Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult? Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult? Function(PaddingUpdateMessage value)? paddingUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
    TResult Function(SaveToFileMessage value)? saveToFile,
    TResult Function(UpdateExportTypeMessage value)? updateExportType,
    TResult Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult Function(PaddingUpdateMessage value)? paddingUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeMessageCopyWith<$Res> {
  factory $QrCodeMessageCopyWith(
          QrCodeMessage value, $Res Function(QrCodeMessage) then) =
      _$QrCodeMessageCopyWithImpl<$Res, QrCodeMessage>;
}

/// @nodoc
class _$QrCodeMessageCopyWithImpl<$Res, $Val extends QrCodeMessage>
    implements $QrCodeMessageCopyWith<$Res> {
  _$QrCodeMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateInputMessageImplCopyWith<$Res> {
  factory _$$UpdateInputMessageImplCopyWith(_$UpdateInputMessageImpl value,
          $Res Function(_$UpdateInputMessageImpl) then) =
      __$$UpdateInputMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$UpdateInputMessageImplCopyWithImpl<$Res>
    extends _$QrCodeMessageCopyWithImpl<$Res, _$UpdateInputMessageImpl>
    implements _$$UpdateInputMessageImplCopyWith<$Res> {
  __$$UpdateInputMessageImplCopyWithImpl(_$UpdateInputMessageImpl _value,
      $Res Function(_$UpdateInputMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$UpdateInputMessageImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateInputMessageImpl implements UpdateInputMessage {
  const _$UpdateInputMessageImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'QrCodeMessage.updateInput(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInputMessageImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInputMessageImplCopyWith<_$UpdateInputMessageImpl> get copyWith =>
      __$$UpdateInputMessageImplCopyWithImpl<_$UpdateInputMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateInput,
    required TResult Function(ErrorCorrectionLevel level) updateCorrectionLevel,
    required TResult Function() saveToFile,
    required TResult Function(ExportType type) updateExportType,
    required TResult Function() copyToClipboard,
    required TResult Function(QrCodeShape shape) shapeUpdate,
    required TResult Function(EdgeInsets padding) paddingUpdate,
  }) {
    return updateInput(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult? Function()? saveToFile,
    TResult? Function(ExportType type)? updateExportType,
    TResult? Function()? copyToClipboard,
    TResult? Function(QrCodeShape shape)? shapeUpdate,
    TResult? Function(EdgeInsets padding)? paddingUpdate,
  }) {
    return updateInput?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult Function()? saveToFile,
    TResult Function(ExportType type)? updateExportType,
    TResult Function()? copyToClipboard,
    TResult Function(QrCodeShape shape)? shapeUpdate,
    TResult Function(EdgeInsets padding)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (updateInput != null) {
      return updateInput(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
    required TResult Function(SaveToFileMessage value) saveToFile,
    required TResult Function(UpdateExportTypeMessage value) updateExportType,
    required TResult Function(CopyToClipboardMessage value) copyToClipboard,
    required TResult Function(ShapeUpdateMessage value) shapeUpdate,
    required TResult Function(PaddingUpdateMessage value) paddingUpdate,
  }) {
    return updateInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
    TResult? Function(SaveToFileMessage value)? saveToFile,
    TResult? Function(UpdateExportTypeMessage value)? updateExportType,
    TResult? Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult? Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult? Function(PaddingUpdateMessage value)? paddingUpdate,
  }) {
    return updateInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
    TResult Function(SaveToFileMessage value)? saveToFile,
    TResult Function(UpdateExportTypeMessage value)? updateExportType,
    TResult Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult Function(PaddingUpdateMessage value)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (updateInput != null) {
      return updateInput(this);
    }
    return orElse();
  }
}

abstract class UpdateInputMessage implements QrCodeMessage {
  const factory UpdateInputMessage(final String text) =
      _$UpdateInputMessageImpl;

  String get text;

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInputMessageImplCopyWith<_$UpdateInputMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCorrectionLevelMessageImplCopyWith<$Res> {
  factory _$$UpdateCorrectionLevelMessageImplCopyWith(
          _$UpdateCorrectionLevelMessageImpl value,
          $Res Function(_$UpdateCorrectionLevelMessageImpl) then) =
      __$$UpdateCorrectionLevelMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorCorrectionLevel level});
}

/// @nodoc
class __$$UpdateCorrectionLevelMessageImplCopyWithImpl<$Res>
    extends _$QrCodeMessageCopyWithImpl<$Res,
        _$UpdateCorrectionLevelMessageImpl>
    implements _$$UpdateCorrectionLevelMessageImplCopyWith<$Res> {
  __$$UpdateCorrectionLevelMessageImplCopyWithImpl(
      _$UpdateCorrectionLevelMessageImpl _value,
      $Res Function(_$UpdateCorrectionLevelMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_$UpdateCorrectionLevelMessageImpl(
      null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ErrorCorrectionLevel,
    ));
  }
}

/// @nodoc

class _$UpdateCorrectionLevelMessageImpl
    implements UpdateCorrectionLevelMessage {
  const _$UpdateCorrectionLevelMessageImpl(this.level);

  @override
  final ErrorCorrectionLevel level;

  @override
  String toString() {
    return 'QrCodeMessage.updateCorrectionLevel(level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCorrectionLevelMessageImpl &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCorrectionLevelMessageImplCopyWith<
          _$UpdateCorrectionLevelMessageImpl>
      get copyWith => __$$UpdateCorrectionLevelMessageImplCopyWithImpl<
          _$UpdateCorrectionLevelMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateInput,
    required TResult Function(ErrorCorrectionLevel level) updateCorrectionLevel,
    required TResult Function() saveToFile,
    required TResult Function(ExportType type) updateExportType,
    required TResult Function() copyToClipboard,
    required TResult Function(QrCodeShape shape) shapeUpdate,
    required TResult Function(EdgeInsets padding) paddingUpdate,
  }) {
    return updateCorrectionLevel(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult? Function()? saveToFile,
    TResult? Function(ExportType type)? updateExportType,
    TResult? Function()? copyToClipboard,
    TResult? Function(QrCodeShape shape)? shapeUpdate,
    TResult? Function(EdgeInsets padding)? paddingUpdate,
  }) {
    return updateCorrectionLevel?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult Function()? saveToFile,
    TResult Function(ExportType type)? updateExportType,
    TResult Function()? copyToClipboard,
    TResult Function(QrCodeShape shape)? shapeUpdate,
    TResult Function(EdgeInsets padding)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (updateCorrectionLevel != null) {
      return updateCorrectionLevel(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
    required TResult Function(SaveToFileMessage value) saveToFile,
    required TResult Function(UpdateExportTypeMessage value) updateExportType,
    required TResult Function(CopyToClipboardMessage value) copyToClipboard,
    required TResult Function(ShapeUpdateMessage value) shapeUpdate,
    required TResult Function(PaddingUpdateMessage value) paddingUpdate,
  }) {
    return updateCorrectionLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
    TResult? Function(SaveToFileMessage value)? saveToFile,
    TResult? Function(UpdateExportTypeMessage value)? updateExportType,
    TResult? Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult? Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult? Function(PaddingUpdateMessage value)? paddingUpdate,
  }) {
    return updateCorrectionLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
    TResult Function(SaveToFileMessage value)? saveToFile,
    TResult Function(UpdateExportTypeMessage value)? updateExportType,
    TResult Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult Function(PaddingUpdateMessage value)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (updateCorrectionLevel != null) {
      return updateCorrectionLevel(this);
    }
    return orElse();
  }
}

abstract class UpdateCorrectionLevelMessage implements QrCodeMessage {
  const factory UpdateCorrectionLevelMessage(final ErrorCorrectionLevel level) =
      _$UpdateCorrectionLevelMessageImpl;

  ErrorCorrectionLevel get level;

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCorrectionLevelMessageImplCopyWith<
          _$UpdateCorrectionLevelMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveToFileMessageImplCopyWith<$Res> {
  factory _$$SaveToFileMessageImplCopyWith(_$SaveToFileMessageImpl value,
          $Res Function(_$SaveToFileMessageImpl) then) =
      __$$SaveToFileMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveToFileMessageImplCopyWithImpl<$Res>
    extends _$QrCodeMessageCopyWithImpl<$Res, _$SaveToFileMessageImpl>
    implements _$$SaveToFileMessageImplCopyWith<$Res> {
  __$$SaveToFileMessageImplCopyWithImpl(_$SaveToFileMessageImpl _value,
      $Res Function(_$SaveToFileMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveToFileMessageImpl implements SaveToFileMessage {
  const _$SaveToFileMessageImpl();

  @override
  String toString() {
    return 'QrCodeMessage.saveToFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveToFileMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateInput,
    required TResult Function(ErrorCorrectionLevel level) updateCorrectionLevel,
    required TResult Function() saveToFile,
    required TResult Function(ExportType type) updateExportType,
    required TResult Function() copyToClipboard,
    required TResult Function(QrCodeShape shape) shapeUpdate,
    required TResult Function(EdgeInsets padding) paddingUpdate,
  }) {
    return saveToFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult? Function()? saveToFile,
    TResult? Function(ExportType type)? updateExportType,
    TResult? Function()? copyToClipboard,
    TResult? Function(QrCodeShape shape)? shapeUpdate,
    TResult? Function(EdgeInsets padding)? paddingUpdate,
  }) {
    return saveToFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult Function()? saveToFile,
    TResult Function(ExportType type)? updateExportType,
    TResult Function()? copyToClipboard,
    TResult Function(QrCodeShape shape)? shapeUpdate,
    TResult Function(EdgeInsets padding)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (saveToFile != null) {
      return saveToFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
    required TResult Function(SaveToFileMessage value) saveToFile,
    required TResult Function(UpdateExportTypeMessage value) updateExportType,
    required TResult Function(CopyToClipboardMessage value) copyToClipboard,
    required TResult Function(ShapeUpdateMessage value) shapeUpdate,
    required TResult Function(PaddingUpdateMessage value) paddingUpdate,
  }) {
    return saveToFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
    TResult? Function(SaveToFileMessage value)? saveToFile,
    TResult? Function(UpdateExportTypeMessage value)? updateExportType,
    TResult? Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult? Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult? Function(PaddingUpdateMessage value)? paddingUpdate,
  }) {
    return saveToFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
    TResult Function(SaveToFileMessage value)? saveToFile,
    TResult Function(UpdateExportTypeMessage value)? updateExportType,
    TResult Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult Function(PaddingUpdateMessage value)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (saveToFile != null) {
      return saveToFile(this);
    }
    return orElse();
  }
}

abstract class SaveToFileMessage implements QrCodeMessage {
  const factory SaveToFileMessage() = _$SaveToFileMessageImpl;
}

/// @nodoc
abstract class _$$UpdateExportTypeMessageImplCopyWith<$Res> {
  factory _$$UpdateExportTypeMessageImplCopyWith(
          _$UpdateExportTypeMessageImpl value,
          $Res Function(_$UpdateExportTypeMessageImpl) then) =
      __$$UpdateExportTypeMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExportType type});
}

/// @nodoc
class __$$UpdateExportTypeMessageImplCopyWithImpl<$Res>
    extends _$QrCodeMessageCopyWithImpl<$Res, _$UpdateExportTypeMessageImpl>
    implements _$$UpdateExportTypeMessageImplCopyWith<$Res> {
  __$$UpdateExportTypeMessageImplCopyWithImpl(
      _$UpdateExportTypeMessageImpl _value,
      $Res Function(_$UpdateExportTypeMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$UpdateExportTypeMessageImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExportType,
    ));
  }
}

/// @nodoc

class _$UpdateExportTypeMessageImpl implements UpdateExportTypeMessage {
  const _$UpdateExportTypeMessageImpl(this.type);

  @override
  final ExportType type;

  @override
  String toString() {
    return 'QrCodeMessage.updateExportType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExportTypeMessageImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExportTypeMessageImplCopyWith<_$UpdateExportTypeMessageImpl>
      get copyWith => __$$UpdateExportTypeMessageImplCopyWithImpl<
          _$UpdateExportTypeMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateInput,
    required TResult Function(ErrorCorrectionLevel level) updateCorrectionLevel,
    required TResult Function() saveToFile,
    required TResult Function(ExportType type) updateExportType,
    required TResult Function() copyToClipboard,
    required TResult Function(QrCodeShape shape) shapeUpdate,
    required TResult Function(EdgeInsets padding) paddingUpdate,
  }) {
    return updateExportType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult? Function()? saveToFile,
    TResult? Function(ExportType type)? updateExportType,
    TResult? Function()? copyToClipboard,
    TResult? Function(QrCodeShape shape)? shapeUpdate,
    TResult? Function(EdgeInsets padding)? paddingUpdate,
  }) {
    return updateExportType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult Function()? saveToFile,
    TResult Function(ExportType type)? updateExportType,
    TResult Function()? copyToClipboard,
    TResult Function(QrCodeShape shape)? shapeUpdate,
    TResult Function(EdgeInsets padding)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (updateExportType != null) {
      return updateExportType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
    required TResult Function(SaveToFileMessage value) saveToFile,
    required TResult Function(UpdateExportTypeMessage value) updateExportType,
    required TResult Function(CopyToClipboardMessage value) copyToClipboard,
    required TResult Function(ShapeUpdateMessage value) shapeUpdate,
    required TResult Function(PaddingUpdateMessage value) paddingUpdate,
  }) {
    return updateExportType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
    TResult? Function(SaveToFileMessage value)? saveToFile,
    TResult? Function(UpdateExportTypeMessage value)? updateExportType,
    TResult? Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult? Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult? Function(PaddingUpdateMessage value)? paddingUpdate,
  }) {
    return updateExportType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
    TResult Function(SaveToFileMessage value)? saveToFile,
    TResult Function(UpdateExportTypeMessage value)? updateExportType,
    TResult Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult Function(PaddingUpdateMessage value)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (updateExportType != null) {
      return updateExportType(this);
    }
    return orElse();
  }
}

abstract class UpdateExportTypeMessage implements QrCodeMessage {
  const factory UpdateExportTypeMessage(final ExportType type) =
      _$UpdateExportTypeMessageImpl;

  ExportType get type;

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateExportTypeMessageImplCopyWith<_$UpdateExportTypeMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CopyToClipboardMessageImplCopyWith<$Res> {
  factory _$$CopyToClipboardMessageImplCopyWith(
          _$CopyToClipboardMessageImpl value,
          $Res Function(_$CopyToClipboardMessageImpl) then) =
      __$$CopyToClipboardMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CopyToClipboardMessageImplCopyWithImpl<$Res>
    extends _$QrCodeMessageCopyWithImpl<$Res, _$CopyToClipboardMessageImpl>
    implements _$$CopyToClipboardMessageImplCopyWith<$Res> {
  __$$CopyToClipboardMessageImplCopyWithImpl(
      _$CopyToClipboardMessageImpl _value,
      $Res Function(_$CopyToClipboardMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CopyToClipboardMessageImpl implements CopyToClipboardMessage {
  const _$CopyToClipboardMessageImpl();

  @override
  String toString() {
    return 'QrCodeMessage.copyToClipboard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyToClipboardMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateInput,
    required TResult Function(ErrorCorrectionLevel level) updateCorrectionLevel,
    required TResult Function() saveToFile,
    required TResult Function(ExportType type) updateExportType,
    required TResult Function() copyToClipboard,
    required TResult Function(QrCodeShape shape) shapeUpdate,
    required TResult Function(EdgeInsets padding) paddingUpdate,
  }) {
    return copyToClipboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult? Function()? saveToFile,
    TResult? Function(ExportType type)? updateExportType,
    TResult? Function()? copyToClipboard,
    TResult? Function(QrCodeShape shape)? shapeUpdate,
    TResult? Function(EdgeInsets padding)? paddingUpdate,
  }) {
    return copyToClipboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult Function()? saveToFile,
    TResult Function(ExportType type)? updateExportType,
    TResult Function()? copyToClipboard,
    TResult Function(QrCodeShape shape)? shapeUpdate,
    TResult Function(EdgeInsets padding)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (copyToClipboard != null) {
      return copyToClipboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
    required TResult Function(SaveToFileMessage value) saveToFile,
    required TResult Function(UpdateExportTypeMessage value) updateExportType,
    required TResult Function(CopyToClipboardMessage value) copyToClipboard,
    required TResult Function(ShapeUpdateMessage value) shapeUpdate,
    required TResult Function(PaddingUpdateMessage value) paddingUpdate,
  }) {
    return copyToClipboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
    TResult? Function(SaveToFileMessage value)? saveToFile,
    TResult? Function(UpdateExportTypeMessage value)? updateExportType,
    TResult? Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult? Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult? Function(PaddingUpdateMessage value)? paddingUpdate,
  }) {
    return copyToClipboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
    TResult Function(SaveToFileMessage value)? saveToFile,
    TResult Function(UpdateExportTypeMessage value)? updateExportType,
    TResult Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult Function(PaddingUpdateMessage value)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (copyToClipboard != null) {
      return copyToClipboard(this);
    }
    return orElse();
  }
}

abstract class CopyToClipboardMessage implements QrCodeMessage {
  const factory CopyToClipboardMessage() = _$CopyToClipboardMessageImpl;
}

/// @nodoc
abstract class _$$ShapeUpdateMessageImplCopyWith<$Res> {
  factory _$$ShapeUpdateMessageImplCopyWith(_$ShapeUpdateMessageImpl value,
          $Res Function(_$ShapeUpdateMessageImpl) then) =
      __$$ShapeUpdateMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QrCodeShape shape});
}

/// @nodoc
class __$$ShapeUpdateMessageImplCopyWithImpl<$Res>
    extends _$QrCodeMessageCopyWithImpl<$Res, _$ShapeUpdateMessageImpl>
    implements _$$ShapeUpdateMessageImplCopyWith<$Res> {
  __$$ShapeUpdateMessageImplCopyWithImpl(_$ShapeUpdateMessageImpl _value,
      $Res Function(_$ShapeUpdateMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shape = null,
  }) {
    return _then(_$ShapeUpdateMessageImpl(
      null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as QrCodeShape,
    ));
  }
}

/// @nodoc

class _$ShapeUpdateMessageImpl implements ShapeUpdateMessage {
  const _$ShapeUpdateMessageImpl(this.shape);

  @override
  final QrCodeShape shape;

  @override
  String toString() {
    return 'QrCodeMessage.shapeUpdate(shape: $shape)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShapeUpdateMessageImpl &&
            (identical(other.shape, shape) || other.shape == shape));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shape);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShapeUpdateMessageImplCopyWith<_$ShapeUpdateMessageImpl> get copyWith =>
      __$$ShapeUpdateMessageImplCopyWithImpl<_$ShapeUpdateMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateInput,
    required TResult Function(ErrorCorrectionLevel level) updateCorrectionLevel,
    required TResult Function() saveToFile,
    required TResult Function(ExportType type) updateExportType,
    required TResult Function() copyToClipboard,
    required TResult Function(QrCodeShape shape) shapeUpdate,
    required TResult Function(EdgeInsets padding) paddingUpdate,
  }) {
    return shapeUpdate(shape);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult? Function()? saveToFile,
    TResult? Function(ExportType type)? updateExportType,
    TResult? Function()? copyToClipboard,
    TResult? Function(QrCodeShape shape)? shapeUpdate,
    TResult? Function(EdgeInsets padding)? paddingUpdate,
  }) {
    return shapeUpdate?.call(shape);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult Function()? saveToFile,
    TResult Function(ExportType type)? updateExportType,
    TResult Function()? copyToClipboard,
    TResult Function(QrCodeShape shape)? shapeUpdate,
    TResult Function(EdgeInsets padding)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (shapeUpdate != null) {
      return shapeUpdate(shape);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
    required TResult Function(SaveToFileMessage value) saveToFile,
    required TResult Function(UpdateExportTypeMessage value) updateExportType,
    required TResult Function(CopyToClipboardMessage value) copyToClipboard,
    required TResult Function(ShapeUpdateMessage value) shapeUpdate,
    required TResult Function(PaddingUpdateMessage value) paddingUpdate,
  }) {
    return shapeUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
    TResult? Function(SaveToFileMessage value)? saveToFile,
    TResult? Function(UpdateExportTypeMessage value)? updateExportType,
    TResult? Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult? Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult? Function(PaddingUpdateMessage value)? paddingUpdate,
  }) {
    return shapeUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
    TResult Function(SaveToFileMessage value)? saveToFile,
    TResult Function(UpdateExportTypeMessage value)? updateExportType,
    TResult Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult Function(PaddingUpdateMessage value)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (shapeUpdate != null) {
      return shapeUpdate(this);
    }
    return orElse();
  }
}

abstract class ShapeUpdateMessage implements QrCodeMessage {
  const factory ShapeUpdateMessage(final QrCodeShape shape) =
      _$ShapeUpdateMessageImpl;

  QrCodeShape get shape;

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShapeUpdateMessageImplCopyWith<_$ShapeUpdateMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaddingUpdateMessageImplCopyWith<$Res> {
  factory _$$PaddingUpdateMessageImplCopyWith(_$PaddingUpdateMessageImpl value,
          $Res Function(_$PaddingUpdateMessageImpl) then) =
      __$$PaddingUpdateMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EdgeInsets padding});
}

/// @nodoc
class __$$PaddingUpdateMessageImplCopyWithImpl<$Res>
    extends _$QrCodeMessageCopyWithImpl<$Res, _$PaddingUpdateMessageImpl>
    implements _$$PaddingUpdateMessageImplCopyWith<$Res> {
  __$$PaddingUpdateMessageImplCopyWithImpl(_$PaddingUpdateMessageImpl _value,
      $Res Function(_$PaddingUpdateMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? padding = null,
  }) {
    return _then(_$PaddingUpdateMessageImpl(
      null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
    ));
  }
}

/// @nodoc

class _$PaddingUpdateMessageImpl implements PaddingUpdateMessage {
  const _$PaddingUpdateMessageImpl(this.padding);

  @override
  final EdgeInsets padding;

  @override
  String toString() {
    return 'QrCodeMessage.paddingUpdate(padding: $padding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaddingUpdateMessageImpl &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @override
  int get hashCode => Object.hash(runtimeType, padding);

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaddingUpdateMessageImplCopyWith<_$PaddingUpdateMessageImpl>
      get copyWith =>
          __$$PaddingUpdateMessageImplCopyWithImpl<_$PaddingUpdateMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateInput,
    required TResult Function(ErrorCorrectionLevel level) updateCorrectionLevel,
    required TResult Function() saveToFile,
    required TResult Function(ExportType type) updateExportType,
    required TResult Function() copyToClipboard,
    required TResult Function(QrCodeShape shape) shapeUpdate,
    required TResult Function(EdgeInsets padding) paddingUpdate,
  }) {
    return paddingUpdate(padding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult? Function()? saveToFile,
    TResult? Function(ExportType type)? updateExportType,
    TResult? Function()? copyToClipboard,
    TResult? Function(QrCodeShape shape)? shapeUpdate,
    TResult? Function(EdgeInsets padding)? paddingUpdate,
  }) {
    return paddingUpdate?.call(padding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    TResult Function()? saveToFile,
    TResult Function(ExportType type)? updateExportType,
    TResult Function()? copyToClipboard,
    TResult Function(QrCodeShape shape)? shapeUpdate,
    TResult Function(EdgeInsets padding)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (paddingUpdate != null) {
      return paddingUpdate(padding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
    required TResult Function(SaveToFileMessage value) saveToFile,
    required TResult Function(UpdateExportTypeMessage value) updateExportType,
    required TResult Function(CopyToClipboardMessage value) copyToClipboard,
    required TResult Function(ShapeUpdateMessage value) shapeUpdate,
    required TResult Function(PaddingUpdateMessage value) paddingUpdate,
  }) {
    return paddingUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
    TResult? Function(SaveToFileMessage value)? saveToFile,
    TResult? Function(UpdateExportTypeMessage value)? updateExportType,
    TResult? Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult? Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult? Function(PaddingUpdateMessage value)? paddingUpdate,
  }) {
    return paddingUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
    TResult Function(SaveToFileMessage value)? saveToFile,
    TResult Function(UpdateExportTypeMessage value)? updateExportType,
    TResult Function(CopyToClipboardMessage value)? copyToClipboard,
    TResult Function(ShapeUpdateMessage value)? shapeUpdate,
    TResult Function(PaddingUpdateMessage value)? paddingUpdate,
    required TResult orElse(),
  }) {
    if (paddingUpdate != null) {
      return paddingUpdate(this);
    }
    return orElse();
  }
}

abstract class PaddingUpdateMessage implements QrCodeMessage {
  const factory PaddingUpdateMessage(final EdgeInsets padding) =
      _$PaddingUpdateMessageImpl;

  EdgeInsets get padding;

  /// Create a copy of QrCodeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaddingUpdateMessageImplCopyWith<_$PaddingUpdateMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
