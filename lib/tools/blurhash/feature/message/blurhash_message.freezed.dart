// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blurhash_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlurhashMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectFile,
    required TResult Function(ImageProvider<Object> origin) setOrigin,
    required TResult Function(String blurhash) setBlurhash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectFile,
    TResult? Function(ImageProvider<Object> origin)? setOrigin,
    TResult? Function(String blurhash)? setBlurhash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectFile,
    TResult Function(ImageProvider<Object> origin)? setOrigin,
    TResult Function(String blurhash)? setBlurhash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectFileMessage value) selectFile,
    required TResult Function(SetOriginMessage value) setOrigin,
    required TResult Function(SetBlurhashMessage value) setBlurhash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectFileMessage value)? selectFile,
    TResult? Function(SetOriginMessage value)? setOrigin,
    TResult? Function(SetBlurhashMessage value)? setBlurhash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectFileMessage value)? selectFile,
    TResult Function(SetOriginMessage value)? setOrigin,
    TResult Function(SetBlurhashMessage value)? setBlurhash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlurhashMessageCopyWith<$Res> {
  factory $BlurhashMessageCopyWith(
          BlurhashMessage value, $Res Function(BlurhashMessage) then) =
      _$BlurhashMessageCopyWithImpl<$Res, BlurhashMessage>;
}

/// @nodoc
class _$BlurhashMessageCopyWithImpl<$Res, $Val extends BlurhashMessage>
    implements $BlurhashMessageCopyWith<$Res> {
  _$BlurhashMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlurhashMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectFileMessageImplCopyWith<$Res> {
  factory _$$SelectFileMessageImplCopyWith(_$SelectFileMessageImpl value,
          $Res Function(_$SelectFileMessageImpl) then) =
      __$$SelectFileMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectFileMessageImplCopyWithImpl<$Res>
    extends _$BlurhashMessageCopyWithImpl<$Res, _$SelectFileMessageImpl>
    implements _$$SelectFileMessageImplCopyWith<$Res> {
  __$$SelectFileMessageImplCopyWithImpl(_$SelectFileMessageImpl _value,
      $Res Function(_$SelectFileMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlurhashMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectFileMessageImpl implements SelectFileMessage {
  const _$SelectFileMessageImpl();

  @override
  String toString() {
    return 'BlurhashMessage.selectFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectFileMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectFile,
    required TResult Function(ImageProvider<Object> origin) setOrigin,
    required TResult Function(String blurhash) setBlurhash,
  }) {
    return selectFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectFile,
    TResult? Function(ImageProvider<Object> origin)? setOrigin,
    TResult? Function(String blurhash)? setBlurhash,
  }) {
    return selectFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectFile,
    TResult Function(ImageProvider<Object> origin)? setOrigin,
    TResult Function(String blurhash)? setBlurhash,
    required TResult orElse(),
  }) {
    if (selectFile != null) {
      return selectFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectFileMessage value) selectFile,
    required TResult Function(SetOriginMessage value) setOrigin,
    required TResult Function(SetBlurhashMessage value) setBlurhash,
  }) {
    return selectFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectFileMessage value)? selectFile,
    TResult? Function(SetOriginMessage value)? setOrigin,
    TResult? Function(SetBlurhashMessage value)? setBlurhash,
  }) {
    return selectFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectFileMessage value)? selectFile,
    TResult Function(SetOriginMessage value)? setOrigin,
    TResult Function(SetBlurhashMessage value)? setBlurhash,
    required TResult orElse(),
  }) {
    if (selectFile != null) {
      return selectFile(this);
    }
    return orElse();
  }
}

abstract class SelectFileMessage implements BlurhashMessage {
  const factory SelectFileMessage() = _$SelectFileMessageImpl;
}

/// @nodoc
abstract class _$$SetOriginMessageImplCopyWith<$Res> {
  factory _$$SetOriginMessageImplCopyWith(_$SetOriginMessageImpl value,
          $Res Function(_$SetOriginMessageImpl) then) =
      __$$SetOriginMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageProvider<Object> origin});
}

/// @nodoc
class __$$SetOriginMessageImplCopyWithImpl<$Res>
    extends _$BlurhashMessageCopyWithImpl<$Res, _$SetOriginMessageImpl>
    implements _$$SetOriginMessageImplCopyWith<$Res> {
  __$$SetOriginMessageImplCopyWithImpl(_$SetOriginMessageImpl _value,
      $Res Function(_$SetOriginMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlurhashMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
  }) {
    return _then(_$SetOriginMessageImpl(
      null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
    ));
  }
}

/// @nodoc

class _$SetOriginMessageImpl implements SetOriginMessage {
  const _$SetOriginMessageImpl(this.origin);

  @override
  final ImageProvider<Object> origin;

  @override
  String toString() {
    return 'BlurhashMessage.setOrigin(origin: $origin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetOriginMessageImpl &&
            (identical(other.origin, origin) || other.origin == origin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, origin);

  /// Create a copy of BlurhashMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetOriginMessageImplCopyWith<_$SetOriginMessageImpl> get copyWith =>
      __$$SetOriginMessageImplCopyWithImpl<_$SetOriginMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectFile,
    required TResult Function(ImageProvider<Object> origin) setOrigin,
    required TResult Function(String blurhash) setBlurhash,
  }) {
    return setOrigin(origin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectFile,
    TResult? Function(ImageProvider<Object> origin)? setOrigin,
    TResult? Function(String blurhash)? setBlurhash,
  }) {
    return setOrigin?.call(origin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectFile,
    TResult Function(ImageProvider<Object> origin)? setOrigin,
    TResult Function(String blurhash)? setBlurhash,
    required TResult orElse(),
  }) {
    if (setOrigin != null) {
      return setOrigin(origin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectFileMessage value) selectFile,
    required TResult Function(SetOriginMessage value) setOrigin,
    required TResult Function(SetBlurhashMessage value) setBlurhash,
  }) {
    return setOrigin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectFileMessage value)? selectFile,
    TResult? Function(SetOriginMessage value)? setOrigin,
    TResult? Function(SetBlurhashMessage value)? setBlurhash,
  }) {
    return setOrigin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectFileMessage value)? selectFile,
    TResult Function(SetOriginMessage value)? setOrigin,
    TResult Function(SetBlurhashMessage value)? setBlurhash,
    required TResult orElse(),
  }) {
    if (setOrigin != null) {
      return setOrigin(this);
    }
    return orElse();
  }
}

abstract class SetOriginMessage implements BlurhashMessage {
  const factory SetOriginMessage(final ImageProvider<Object> origin) =
      _$SetOriginMessageImpl;

  ImageProvider<Object> get origin;

  /// Create a copy of BlurhashMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetOriginMessageImplCopyWith<_$SetOriginMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetBlurhashMessageImplCopyWith<$Res> {
  factory _$$SetBlurhashMessageImplCopyWith(_$SetBlurhashMessageImpl value,
          $Res Function(_$SetBlurhashMessageImpl) then) =
      __$$SetBlurhashMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String blurhash});
}

/// @nodoc
class __$$SetBlurhashMessageImplCopyWithImpl<$Res>
    extends _$BlurhashMessageCopyWithImpl<$Res, _$SetBlurhashMessageImpl>
    implements _$$SetBlurhashMessageImplCopyWith<$Res> {
  __$$SetBlurhashMessageImplCopyWithImpl(_$SetBlurhashMessageImpl _value,
      $Res Function(_$SetBlurhashMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlurhashMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blurhash = null,
  }) {
    return _then(_$SetBlurhashMessageImpl(
      null == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetBlurhashMessageImpl implements SetBlurhashMessage {
  const _$SetBlurhashMessageImpl(this.blurhash);

  @override
  final String blurhash;

  @override
  String toString() {
    return 'BlurhashMessage.setBlurhash(blurhash: $blurhash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBlurhashMessageImpl &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blurhash);

  /// Create a copy of BlurhashMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBlurhashMessageImplCopyWith<_$SetBlurhashMessageImpl> get copyWith =>
      __$$SetBlurhashMessageImplCopyWithImpl<_$SetBlurhashMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectFile,
    required TResult Function(ImageProvider<Object> origin) setOrigin,
    required TResult Function(String blurhash) setBlurhash,
  }) {
    return setBlurhash(blurhash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectFile,
    TResult? Function(ImageProvider<Object> origin)? setOrigin,
    TResult? Function(String blurhash)? setBlurhash,
  }) {
    return setBlurhash?.call(blurhash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectFile,
    TResult Function(ImageProvider<Object> origin)? setOrigin,
    TResult Function(String blurhash)? setBlurhash,
    required TResult orElse(),
  }) {
    if (setBlurhash != null) {
      return setBlurhash(blurhash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectFileMessage value) selectFile,
    required TResult Function(SetOriginMessage value) setOrigin,
    required TResult Function(SetBlurhashMessage value) setBlurhash,
  }) {
    return setBlurhash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectFileMessage value)? selectFile,
    TResult? Function(SetOriginMessage value)? setOrigin,
    TResult? Function(SetBlurhashMessage value)? setBlurhash,
  }) {
    return setBlurhash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectFileMessage value)? selectFile,
    TResult Function(SetOriginMessage value)? setOrigin,
    TResult Function(SetBlurhashMessage value)? setBlurhash,
    required TResult orElse(),
  }) {
    if (setBlurhash != null) {
      return setBlurhash(this);
    }
    return orElse();
  }
}

abstract class SetBlurhashMessage implements BlurhashMessage {
  const factory SetBlurhashMessage(final String blurhash) =
      _$SetBlurhashMessageImpl;

  String get blurhash;

  /// Create a copy of BlurhashMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetBlurhashMessageImplCopyWith<_$SetBlurhashMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
