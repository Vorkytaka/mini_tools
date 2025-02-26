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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInputMessage value) updateInput,
    required TResult Function(UpdateCorrectionLevelMessage value)
        updateCorrectionLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
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
  }) {
    return updateInput(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
  }) {
    return updateInput?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
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
  }) {
    return updateInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
  }) {
    return updateInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
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
  }) {
    return updateCorrectionLevel(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateInput,
    TResult? Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
  }) {
    return updateCorrectionLevel?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateInput,
    TResult Function(ErrorCorrectionLevel level)? updateCorrectionLevel,
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
  }) {
    return updateCorrectionLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInputMessage value)? updateInput,
    TResult? Function(UpdateCorrectionLevelMessage value)?
        updateCorrectionLevel,
  }) {
    return updateCorrectionLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInputMessage value)? updateInput,
    TResult Function(UpdateCorrectionLevelMessage value)? updateCorrectionLevel,
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
