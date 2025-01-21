// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uuid_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UuidMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidVersion version) updateVersion,
    required TResult Function(int count) updateCount,
    required TResult Function() generate,
    required TResult Function(List<String> ids) setIds,
    required TResult Function(String namespace) updateNamespace,
    required TResult Function(String name) updateName,
    required TResult Function(bool isLowerCase) updateLowerCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidVersion version)? updateVersion,
    TResult? Function(int count)? updateCount,
    TResult? Function()? generate,
    TResult? Function(List<String> ids)? setIds,
    TResult? Function(String namespace)? updateNamespace,
    TResult? Function(String name)? updateName,
    TResult? Function(bool isLowerCase)? updateLowerCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidVersion version)? updateVersion,
    TResult Function(int count)? updateCount,
    TResult Function()? generate,
    TResult Function(List<String> ids)? setIds,
    TResult Function(String namespace)? updateNamespace,
    TResult Function(String name)? updateName,
    TResult Function(bool isLowerCase)? updateLowerCase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateVersionMessage value) updateVersion,
    required TResult Function(UpdateCountMessage value) updateCount,
    required TResult Function(GenerateMessage value) generate,
    required TResult Function(SetIdsMessage value) setIds,
    required TResult Function(UpdateNamespaceMessage value) updateNamespace,
    required TResult Function(UpdateNameMessage value) updateName,
    required TResult Function(UpdateLowerCase value) updateLowerCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateVersionMessage value)? updateVersion,
    TResult? Function(UpdateCountMessage value)? updateCount,
    TResult? Function(GenerateMessage value)? generate,
    TResult? Function(SetIdsMessage value)? setIds,
    TResult? Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult? Function(UpdateNameMessage value)? updateName,
    TResult? Function(UpdateLowerCase value)? updateLowerCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateVersionMessage value)? updateVersion,
    TResult Function(UpdateCountMessage value)? updateCount,
    TResult Function(GenerateMessage value)? generate,
    TResult Function(SetIdsMessage value)? setIds,
    TResult Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult Function(UpdateNameMessage value)? updateName,
    TResult Function(UpdateLowerCase value)? updateLowerCase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UuidMessageCopyWith<$Res> {
  factory $UuidMessageCopyWith(
          UuidMessage value, $Res Function(UuidMessage) then) =
      _$UuidMessageCopyWithImpl<$Res, UuidMessage>;
}

/// @nodoc
class _$UuidMessageCopyWithImpl<$Res, $Val extends UuidMessage>
    implements $UuidMessageCopyWith<$Res> {
  _$UuidMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateVersionMessageImplCopyWith<$Res> {
  factory _$$UpdateVersionMessageImplCopyWith(_$UpdateVersionMessageImpl value,
          $Res Function(_$UpdateVersionMessageImpl) then) =
      __$$UpdateVersionMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UuidVersion version});
}

/// @nodoc
class __$$UpdateVersionMessageImplCopyWithImpl<$Res>
    extends _$UuidMessageCopyWithImpl<$Res, _$UpdateVersionMessageImpl>
    implements _$$UpdateVersionMessageImplCopyWith<$Res> {
  __$$UpdateVersionMessageImplCopyWithImpl(_$UpdateVersionMessageImpl _value,
      $Res Function(_$UpdateVersionMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$UpdateVersionMessageImpl(
      null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as UuidVersion,
    ));
  }
}

/// @nodoc

class _$UpdateVersionMessageImpl implements UpdateVersionMessage {
  const _$UpdateVersionMessageImpl(this.version);

  @override
  final UuidVersion version;

  @override
  String toString() {
    return 'UuidMessage.updateVersion(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateVersionMessageImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateVersionMessageImplCopyWith<_$UpdateVersionMessageImpl>
      get copyWith =>
          __$$UpdateVersionMessageImplCopyWithImpl<_$UpdateVersionMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidVersion version) updateVersion,
    required TResult Function(int count) updateCount,
    required TResult Function() generate,
    required TResult Function(List<String> ids) setIds,
    required TResult Function(String namespace) updateNamespace,
    required TResult Function(String name) updateName,
    required TResult Function(bool isLowerCase) updateLowerCase,
  }) {
    return updateVersion(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidVersion version)? updateVersion,
    TResult? Function(int count)? updateCount,
    TResult? Function()? generate,
    TResult? Function(List<String> ids)? setIds,
    TResult? Function(String namespace)? updateNamespace,
    TResult? Function(String name)? updateName,
    TResult? Function(bool isLowerCase)? updateLowerCase,
  }) {
    return updateVersion?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidVersion version)? updateVersion,
    TResult Function(int count)? updateCount,
    TResult Function()? generate,
    TResult Function(List<String> ids)? setIds,
    TResult Function(String namespace)? updateNamespace,
    TResult Function(String name)? updateName,
    TResult Function(bool isLowerCase)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateVersion != null) {
      return updateVersion(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateVersionMessage value) updateVersion,
    required TResult Function(UpdateCountMessage value) updateCount,
    required TResult Function(GenerateMessage value) generate,
    required TResult Function(SetIdsMessage value) setIds,
    required TResult Function(UpdateNamespaceMessage value) updateNamespace,
    required TResult Function(UpdateNameMessage value) updateName,
    required TResult Function(UpdateLowerCase value) updateLowerCase,
  }) {
    return updateVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateVersionMessage value)? updateVersion,
    TResult? Function(UpdateCountMessage value)? updateCount,
    TResult? Function(GenerateMessage value)? generate,
    TResult? Function(SetIdsMessage value)? setIds,
    TResult? Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult? Function(UpdateNameMessage value)? updateName,
    TResult? Function(UpdateLowerCase value)? updateLowerCase,
  }) {
    return updateVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateVersionMessage value)? updateVersion,
    TResult Function(UpdateCountMessage value)? updateCount,
    TResult Function(GenerateMessage value)? generate,
    TResult Function(SetIdsMessage value)? setIds,
    TResult Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult Function(UpdateNameMessage value)? updateName,
    TResult Function(UpdateLowerCase value)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateVersion != null) {
      return updateVersion(this);
    }
    return orElse();
  }
}

abstract class UpdateVersionMessage implements UuidMessage {
  const factory UpdateVersionMessage(final UuidVersion version) =
      _$UpdateVersionMessageImpl;

  UuidVersion get version;

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateVersionMessageImplCopyWith<_$UpdateVersionMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCountMessageImplCopyWith<$Res> {
  factory _$$UpdateCountMessageImplCopyWith(_$UpdateCountMessageImpl value,
          $Res Function(_$UpdateCountMessageImpl) then) =
      __$$UpdateCountMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$UpdateCountMessageImplCopyWithImpl<$Res>
    extends _$UuidMessageCopyWithImpl<$Res, _$UpdateCountMessageImpl>
    implements _$$UpdateCountMessageImplCopyWith<$Res> {
  __$$UpdateCountMessageImplCopyWithImpl(_$UpdateCountMessageImpl _value,
      $Res Function(_$UpdateCountMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$UpdateCountMessageImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCountMessageImpl implements UpdateCountMessage {
  const _$UpdateCountMessageImpl(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'UuidMessage.updateCount(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCountMessageImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCountMessageImplCopyWith<_$UpdateCountMessageImpl> get copyWith =>
      __$$UpdateCountMessageImplCopyWithImpl<_$UpdateCountMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidVersion version) updateVersion,
    required TResult Function(int count) updateCount,
    required TResult Function() generate,
    required TResult Function(List<String> ids) setIds,
    required TResult Function(String namespace) updateNamespace,
    required TResult Function(String name) updateName,
    required TResult Function(bool isLowerCase) updateLowerCase,
  }) {
    return updateCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidVersion version)? updateVersion,
    TResult? Function(int count)? updateCount,
    TResult? Function()? generate,
    TResult? Function(List<String> ids)? setIds,
    TResult? Function(String namespace)? updateNamespace,
    TResult? Function(String name)? updateName,
    TResult? Function(bool isLowerCase)? updateLowerCase,
  }) {
    return updateCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidVersion version)? updateVersion,
    TResult Function(int count)? updateCount,
    TResult Function()? generate,
    TResult Function(List<String> ids)? setIds,
    TResult Function(String namespace)? updateNamespace,
    TResult Function(String name)? updateName,
    TResult Function(bool isLowerCase)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateCount != null) {
      return updateCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateVersionMessage value) updateVersion,
    required TResult Function(UpdateCountMessage value) updateCount,
    required TResult Function(GenerateMessage value) generate,
    required TResult Function(SetIdsMessage value) setIds,
    required TResult Function(UpdateNamespaceMessage value) updateNamespace,
    required TResult Function(UpdateNameMessage value) updateName,
    required TResult Function(UpdateLowerCase value) updateLowerCase,
  }) {
    return updateCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateVersionMessage value)? updateVersion,
    TResult? Function(UpdateCountMessage value)? updateCount,
    TResult? Function(GenerateMessage value)? generate,
    TResult? Function(SetIdsMessage value)? setIds,
    TResult? Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult? Function(UpdateNameMessage value)? updateName,
    TResult? Function(UpdateLowerCase value)? updateLowerCase,
  }) {
    return updateCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateVersionMessage value)? updateVersion,
    TResult Function(UpdateCountMessage value)? updateCount,
    TResult Function(GenerateMessage value)? generate,
    TResult Function(SetIdsMessage value)? setIds,
    TResult Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult Function(UpdateNameMessage value)? updateName,
    TResult Function(UpdateLowerCase value)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateCount != null) {
      return updateCount(this);
    }
    return orElse();
  }
}

abstract class UpdateCountMessage implements UuidMessage {
  const factory UpdateCountMessage(final int count) = _$UpdateCountMessageImpl;

  int get count;

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCountMessageImplCopyWith<_$UpdateCountMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateMessageImplCopyWith<$Res> {
  factory _$$GenerateMessageImplCopyWith(_$GenerateMessageImpl value,
          $Res Function(_$GenerateMessageImpl) then) =
      __$$GenerateMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateMessageImplCopyWithImpl<$Res>
    extends _$UuidMessageCopyWithImpl<$Res, _$GenerateMessageImpl>
    implements _$$GenerateMessageImplCopyWith<$Res> {
  __$$GenerateMessageImplCopyWithImpl(
      _$GenerateMessageImpl _value, $Res Function(_$GenerateMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GenerateMessageImpl implements GenerateMessage {
  const _$GenerateMessageImpl();

  @override
  String toString() {
    return 'UuidMessage.generate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenerateMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidVersion version) updateVersion,
    required TResult Function(int count) updateCount,
    required TResult Function() generate,
    required TResult Function(List<String> ids) setIds,
    required TResult Function(String namespace) updateNamespace,
    required TResult Function(String name) updateName,
    required TResult Function(bool isLowerCase) updateLowerCase,
  }) {
    return generate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidVersion version)? updateVersion,
    TResult? Function(int count)? updateCount,
    TResult? Function()? generate,
    TResult? Function(List<String> ids)? setIds,
    TResult? Function(String namespace)? updateNamespace,
    TResult? Function(String name)? updateName,
    TResult? Function(bool isLowerCase)? updateLowerCase,
  }) {
    return generate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidVersion version)? updateVersion,
    TResult Function(int count)? updateCount,
    TResult Function()? generate,
    TResult Function(List<String> ids)? setIds,
    TResult Function(String namespace)? updateNamespace,
    TResult Function(String name)? updateName,
    TResult Function(bool isLowerCase)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateVersionMessage value) updateVersion,
    required TResult Function(UpdateCountMessage value) updateCount,
    required TResult Function(GenerateMessage value) generate,
    required TResult Function(SetIdsMessage value) setIds,
    required TResult Function(UpdateNamespaceMessage value) updateNamespace,
    required TResult Function(UpdateNameMessage value) updateName,
    required TResult Function(UpdateLowerCase value) updateLowerCase,
  }) {
    return generate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateVersionMessage value)? updateVersion,
    TResult? Function(UpdateCountMessage value)? updateCount,
    TResult? Function(GenerateMessage value)? generate,
    TResult? Function(SetIdsMessage value)? setIds,
    TResult? Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult? Function(UpdateNameMessage value)? updateName,
    TResult? Function(UpdateLowerCase value)? updateLowerCase,
  }) {
    return generate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateVersionMessage value)? updateVersion,
    TResult Function(UpdateCountMessage value)? updateCount,
    TResult Function(GenerateMessage value)? generate,
    TResult Function(SetIdsMessage value)? setIds,
    TResult Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult Function(UpdateNameMessage value)? updateName,
    TResult Function(UpdateLowerCase value)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(this);
    }
    return orElse();
  }
}

abstract class GenerateMessage implements UuidMessage {
  const factory GenerateMessage() = _$GenerateMessageImpl;
}

/// @nodoc
abstract class _$$SetIdsMessageImplCopyWith<$Res> {
  factory _$$SetIdsMessageImplCopyWith(
          _$SetIdsMessageImpl value, $Res Function(_$SetIdsMessageImpl) then) =
      __$$SetIdsMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class __$$SetIdsMessageImplCopyWithImpl<$Res>
    extends _$UuidMessageCopyWithImpl<$Res, _$SetIdsMessageImpl>
    implements _$$SetIdsMessageImplCopyWith<$Res> {
  __$$SetIdsMessageImplCopyWithImpl(
      _$SetIdsMessageImpl _value, $Res Function(_$SetIdsMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$SetIdsMessageImpl(
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SetIdsMessageImpl implements SetIdsMessage {
  const _$SetIdsMessageImpl(final List<String> ids) : _ids = ids;

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'UuidMessage.setIds(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIdsMessageImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIdsMessageImplCopyWith<_$SetIdsMessageImpl> get copyWith =>
      __$$SetIdsMessageImplCopyWithImpl<_$SetIdsMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidVersion version) updateVersion,
    required TResult Function(int count) updateCount,
    required TResult Function() generate,
    required TResult Function(List<String> ids) setIds,
    required TResult Function(String namespace) updateNamespace,
    required TResult Function(String name) updateName,
    required TResult Function(bool isLowerCase) updateLowerCase,
  }) {
    return setIds(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidVersion version)? updateVersion,
    TResult? Function(int count)? updateCount,
    TResult? Function()? generate,
    TResult? Function(List<String> ids)? setIds,
    TResult? Function(String namespace)? updateNamespace,
    TResult? Function(String name)? updateName,
    TResult? Function(bool isLowerCase)? updateLowerCase,
  }) {
    return setIds?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidVersion version)? updateVersion,
    TResult Function(int count)? updateCount,
    TResult Function()? generate,
    TResult Function(List<String> ids)? setIds,
    TResult Function(String namespace)? updateNamespace,
    TResult Function(String name)? updateName,
    TResult Function(bool isLowerCase)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (setIds != null) {
      return setIds(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateVersionMessage value) updateVersion,
    required TResult Function(UpdateCountMessage value) updateCount,
    required TResult Function(GenerateMessage value) generate,
    required TResult Function(SetIdsMessage value) setIds,
    required TResult Function(UpdateNamespaceMessage value) updateNamespace,
    required TResult Function(UpdateNameMessage value) updateName,
    required TResult Function(UpdateLowerCase value) updateLowerCase,
  }) {
    return setIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateVersionMessage value)? updateVersion,
    TResult? Function(UpdateCountMessage value)? updateCount,
    TResult? Function(GenerateMessage value)? generate,
    TResult? Function(SetIdsMessage value)? setIds,
    TResult? Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult? Function(UpdateNameMessage value)? updateName,
    TResult? Function(UpdateLowerCase value)? updateLowerCase,
  }) {
    return setIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateVersionMessage value)? updateVersion,
    TResult Function(UpdateCountMessage value)? updateCount,
    TResult Function(GenerateMessage value)? generate,
    TResult Function(SetIdsMessage value)? setIds,
    TResult Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult Function(UpdateNameMessage value)? updateName,
    TResult Function(UpdateLowerCase value)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (setIds != null) {
      return setIds(this);
    }
    return orElse();
  }
}

abstract class SetIdsMessage implements UuidMessage {
  const factory SetIdsMessage(final List<String> ids) = _$SetIdsMessageImpl;

  List<String> get ids;

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetIdsMessageImplCopyWith<_$SetIdsMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNamespaceMessageImplCopyWith<$Res> {
  factory _$$UpdateNamespaceMessageImplCopyWith(
          _$UpdateNamespaceMessageImpl value,
          $Res Function(_$UpdateNamespaceMessageImpl) then) =
      __$$UpdateNamespaceMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String namespace});
}

/// @nodoc
class __$$UpdateNamespaceMessageImplCopyWithImpl<$Res>
    extends _$UuidMessageCopyWithImpl<$Res, _$UpdateNamespaceMessageImpl>
    implements _$$UpdateNamespaceMessageImplCopyWith<$Res> {
  __$$UpdateNamespaceMessageImplCopyWithImpl(
      _$UpdateNamespaceMessageImpl _value,
      $Res Function(_$UpdateNamespaceMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespace = null,
  }) {
    return _then(_$UpdateNamespaceMessageImpl(
      null == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNamespaceMessageImpl implements UpdateNamespaceMessage {
  const _$UpdateNamespaceMessageImpl(this.namespace);

  @override
  final String namespace;

  @override
  String toString() {
    return 'UuidMessage.updateNamespace(namespace: $namespace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNamespaceMessageImpl &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, namespace);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNamespaceMessageImplCopyWith<_$UpdateNamespaceMessageImpl>
      get copyWith => __$$UpdateNamespaceMessageImplCopyWithImpl<
          _$UpdateNamespaceMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidVersion version) updateVersion,
    required TResult Function(int count) updateCount,
    required TResult Function() generate,
    required TResult Function(List<String> ids) setIds,
    required TResult Function(String namespace) updateNamespace,
    required TResult Function(String name) updateName,
    required TResult Function(bool isLowerCase) updateLowerCase,
  }) {
    return updateNamespace(namespace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidVersion version)? updateVersion,
    TResult? Function(int count)? updateCount,
    TResult? Function()? generate,
    TResult? Function(List<String> ids)? setIds,
    TResult? Function(String namespace)? updateNamespace,
    TResult? Function(String name)? updateName,
    TResult? Function(bool isLowerCase)? updateLowerCase,
  }) {
    return updateNamespace?.call(namespace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidVersion version)? updateVersion,
    TResult Function(int count)? updateCount,
    TResult Function()? generate,
    TResult Function(List<String> ids)? setIds,
    TResult Function(String namespace)? updateNamespace,
    TResult Function(String name)? updateName,
    TResult Function(bool isLowerCase)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateNamespace != null) {
      return updateNamespace(namespace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateVersionMessage value) updateVersion,
    required TResult Function(UpdateCountMessage value) updateCount,
    required TResult Function(GenerateMessage value) generate,
    required TResult Function(SetIdsMessage value) setIds,
    required TResult Function(UpdateNamespaceMessage value) updateNamespace,
    required TResult Function(UpdateNameMessage value) updateName,
    required TResult Function(UpdateLowerCase value) updateLowerCase,
  }) {
    return updateNamespace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateVersionMessage value)? updateVersion,
    TResult? Function(UpdateCountMessage value)? updateCount,
    TResult? Function(GenerateMessage value)? generate,
    TResult? Function(SetIdsMessage value)? setIds,
    TResult? Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult? Function(UpdateNameMessage value)? updateName,
    TResult? Function(UpdateLowerCase value)? updateLowerCase,
  }) {
    return updateNamespace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateVersionMessage value)? updateVersion,
    TResult Function(UpdateCountMessage value)? updateCount,
    TResult Function(GenerateMessage value)? generate,
    TResult Function(SetIdsMessage value)? setIds,
    TResult Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult Function(UpdateNameMessage value)? updateName,
    TResult Function(UpdateLowerCase value)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateNamespace != null) {
      return updateNamespace(this);
    }
    return orElse();
  }
}

abstract class UpdateNamespaceMessage implements UuidMessage {
  const factory UpdateNamespaceMessage(final String namespace) =
      _$UpdateNamespaceMessageImpl;

  String get namespace;

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNamespaceMessageImplCopyWith<_$UpdateNamespaceMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNameMessageImplCopyWith<$Res> {
  factory _$$UpdateNameMessageImplCopyWith(_$UpdateNameMessageImpl value,
          $Res Function(_$UpdateNameMessageImpl) then) =
      __$$UpdateNameMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateNameMessageImplCopyWithImpl<$Res>
    extends _$UuidMessageCopyWithImpl<$Res, _$UpdateNameMessageImpl>
    implements _$$UpdateNameMessageImplCopyWith<$Res> {
  __$$UpdateNameMessageImplCopyWithImpl(_$UpdateNameMessageImpl _value,
      $Res Function(_$UpdateNameMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UpdateNameMessageImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNameMessageImpl implements UpdateNameMessage {
  const _$UpdateNameMessageImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UuidMessage.updateName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNameMessageImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNameMessageImplCopyWith<_$UpdateNameMessageImpl> get copyWith =>
      __$$UpdateNameMessageImplCopyWithImpl<_$UpdateNameMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidVersion version) updateVersion,
    required TResult Function(int count) updateCount,
    required TResult Function() generate,
    required TResult Function(List<String> ids) setIds,
    required TResult Function(String namespace) updateNamespace,
    required TResult Function(String name) updateName,
    required TResult Function(bool isLowerCase) updateLowerCase,
  }) {
    return updateName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidVersion version)? updateVersion,
    TResult? Function(int count)? updateCount,
    TResult? Function()? generate,
    TResult? Function(List<String> ids)? setIds,
    TResult? Function(String namespace)? updateNamespace,
    TResult? Function(String name)? updateName,
    TResult? Function(bool isLowerCase)? updateLowerCase,
  }) {
    return updateName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidVersion version)? updateVersion,
    TResult Function(int count)? updateCount,
    TResult Function()? generate,
    TResult Function(List<String> ids)? setIds,
    TResult Function(String namespace)? updateNamespace,
    TResult Function(String name)? updateName,
    TResult Function(bool isLowerCase)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateVersionMessage value) updateVersion,
    required TResult Function(UpdateCountMessage value) updateCount,
    required TResult Function(GenerateMessage value) generate,
    required TResult Function(SetIdsMessage value) setIds,
    required TResult Function(UpdateNamespaceMessage value) updateNamespace,
    required TResult Function(UpdateNameMessage value) updateName,
    required TResult Function(UpdateLowerCase value) updateLowerCase,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateVersionMessage value)? updateVersion,
    TResult? Function(UpdateCountMessage value)? updateCount,
    TResult? Function(GenerateMessage value)? generate,
    TResult? Function(SetIdsMessage value)? setIds,
    TResult? Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult? Function(UpdateNameMessage value)? updateName,
    TResult? Function(UpdateLowerCase value)? updateLowerCase,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateVersionMessage value)? updateVersion,
    TResult Function(UpdateCountMessage value)? updateCount,
    TResult Function(GenerateMessage value)? generate,
    TResult Function(SetIdsMessage value)? setIds,
    TResult Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult Function(UpdateNameMessage value)? updateName,
    TResult Function(UpdateLowerCase value)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class UpdateNameMessage implements UuidMessage {
  const factory UpdateNameMessage(final String name) = _$UpdateNameMessageImpl;

  String get name;

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNameMessageImplCopyWith<_$UpdateNameMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLowerCaseImplCopyWith<$Res> {
  factory _$$UpdateLowerCaseImplCopyWith(_$UpdateLowerCaseImpl value,
          $Res Function(_$UpdateLowerCaseImpl) then) =
      __$$UpdateLowerCaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLowerCase});
}

/// @nodoc
class __$$UpdateLowerCaseImplCopyWithImpl<$Res>
    extends _$UuidMessageCopyWithImpl<$Res, _$UpdateLowerCaseImpl>
    implements _$$UpdateLowerCaseImplCopyWith<$Res> {
  __$$UpdateLowerCaseImplCopyWithImpl(
      _$UpdateLowerCaseImpl _value, $Res Function(_$UpdateLowerCaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLowerCase = null,
  }) {
    return _then(_$UpdateLowerCaseImpl(
      null == isLowerCase
          ? _value.isLowerCase
          : isLowerCase // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateLowerCaseImpl implements UpdateLowerCase {
  const _$UpdateLowerCaseImpl(this.isLowerCase);

  @override
  final bool isLowerCase;

  @override
  String toString() {
    return 'UuidMessage.updateLowerCase(isLowerCase: $isLowerCase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLowerCaseImpl &&
            (identical(other.isLowerCase, isLowerCase) ||
                other.isLowerCase == isLowerCase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLowerCase);

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLowerCaseImplCopyWith<_$UpdateLowerCaseImpl> get copyWith =>
      __$$UpdateLowerCaseImplCopyWithImpl<_$UpdateLowerCaseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidVersion version) updateVersion,
    required TResult Function(int count) updateCount,
    required TResult Function() generate,
    required TResult Function(List<String> ids) setIds,
    required TResult Function(String namespace) updateNamespace,
    required TResult Function(String name) updateName,
    required TResult Function(bool isLowerCase) updateLowerCase,
  }) {
    return updateLowerCase(isLowerCase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidVersion version)? updateVersion,
    TResult? Function(int count)? updateCount,
    TResult? Function()? generate,
    TResult? Function(List<String> ids)? setIds,
    TResult? Function(String namespace)? updateNamespace,
    TResult? Function(String name)? updateName,
    TResult? Function(bool isLowerCase)? updateLowerCase,
  }) {
    return updateLowerCase?.call(isLowerCase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidVersion version)? updateVersion,
    TResult Function(int count)? updateCount,
    TResult Function()? generate,
    TResult Function(List<String> ids)? setIds,
    TResult Function(String namespace)? updateNamespace,
    TResult Function(String name)? updateName,
    TResult Function(bool isLowerCase)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateLowerCase != null) {
      return updateLowerCase(isLowerCase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateVersionMessage value) updateVersion,
    required TResult Function(UpdateCountMessage value) updateCount,
    required TResult Function(GenerateMessage value) generate,
    required TResult Function(SetIdsMessage value) setIds,
    required TResult Function(UpdateNamespaceMessage value) updateNamespace,
    required TResult Function(UpdateNameMessage value) updateName,
    required TResult Function(UpdateLowerCase value) updateLowerCase,
  }) {
    return updateLowerCase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateVersionMessage value)? updateVersion,
    TResult? Function(UpdateCountMessage value)? updateCount,
    TResult? Function(GenerateMessage value)? generate,
    TResult? Function(SetIdsMessage value)? setIds,
    TResult? Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult? Function(UpdateNameMessage value)? updateName,
    TResult? Function(UpdateLowerCase value)? updateLowerCase,
  }) {
    return updateLowerCase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateVersionMessage value)? updateVersion,
    TResult Function(UpdateCountMessage value)? updateCount,
    TResult Function(GenerateMessage value)? generate,
    TResult Function(SetIdsMessage value)? setIds,
    TResult Function(UpdateNamespaceMessage value)? updateNamespace,
    TResult Function(UpdateNameMessage value)? updateName,
    TResult Function(UpdateLowerCase value)? updateLowerCase,
    required TResult orElse(),
  }) {
    if (updateLowerCase != null) {
      return updateLowerCase(this);
    }
    return orElse();
  }
}

abstract class UpdateLowerCase implements UuidMessage {
  const factory UpdateLowerCase(final bool isLowerCase) = _$UpdateLowerCaseImpl;

  bool get isLowerCase;

  /// Create a copy of UuidMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLowerCaseImplCopyWith<_$UpdateLowerCaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
