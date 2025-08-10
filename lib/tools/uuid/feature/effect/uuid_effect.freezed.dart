// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uuid_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UuidEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )
    generate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )?
    generate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )?
    generate,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEffect value) init,
    required TResult Function(GenerateEffect value) generate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEffect value)? init,
    TResult? Function(GenerateEffect value)? generate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEffect value)? init,
    TResult Function(GenerateEffect value)? generate,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UuidEffectCopyWith<$Res> {
  factory $UuidEffectCopyWith(
    UuidEffect value,
    $Res Function(UuidEffect) then,
  ) = _$UuidEffectCopyWithImpl<$Res, UuidEffect>;
}

/// @nodoc
class _$UuidEffectCopyWithImpl<$Res, $Val extends UuidEffect>
    implements $UuidEffectCopyWith<$Res> {
  _$UuidEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UuidEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitEffectImplCopyWith<$Res> {
  factory _$$InitEffectImplCopyWith(
    _$InitEffectImpl value,
    $Res Function(_$InitEffectImpl) then,
  ) = __$$InitEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitEffectImplCopyWithImpl<$Res>
    extends _$UuidEffectCopyWithImpl<$Res, _$InitEffectImpl>
    implements _$$InitEffectImplCopyWith<$Res> {
  __$$InitEffectImplCopyWithImpl(
    _$InitEffectImpl _value,
    $Res Function(_$InitEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UuidEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitEffectImpl implements InitEffect {
  const _$InitEffectImpl();

  @override
  String toString() {
    return 'UuidEffect.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )
    generate,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )?
    generate,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )?
    generate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEffect value) init,
    required TResult Function(GenerateEffect value) generate,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEffect value)? init,
    TResult? Function(GenerateEffect value)? generate,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEffect value)? init,
    TResult Function(GenerateEffect value)? generate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEffect implements UuidEffect {
  const factory InitEffect() = _$InitEffectImpl;
}

/// @nodoc
abstract class _$$GenerateEffectImplCopyWith<$Res> {
  factory _$$GenerateEffectImplCopyWith(
    _$GenerateEffectImpl value,
    $Res Function(_$GenerateEffectImpl) then,
  ) = __$$GenerateEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UuidVersion version, int count, String namespace, String name});
}

/// @nodoc
class __$$GenerateEffectImplCopyWithImpl<$Res>
    extends _$UuidEffectCopyWithImpl<$Res, _$GenerateEffectImpl>
    implements _$$GenerateEffectImplCopyWith<$Res> {
  __$$GenerateEffectImplCopyWithImpl(
    _$GenerateEffectImpl _value,
    $Res Function(_$GenerateEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UuidEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? count = null,
    Object? namespace = null,
    Object? name = null,
  }) {
    return _then(
      _$GenerateEffectImpl(
        version:
            null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                    as UuidVersion,
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        namespace:
            null == namespace
                ? _value.namespace
                : namespace // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$GenerateEffectImpl implements GenerateEffect {
  const _$GenerateEffectImpl({
    required this.version,
    required this.count,
    required this.namespace,
    required this.name,
  });

  @override
  final UuidVersion version;
  @override
  final int count;
  @override
  final String namespace;
  @override
  final String name;

  @override
  String toString() {
    return 'UuidEffect.generate(version: $version, count: $count, namespace: $namespace, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateEffectImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, count, namespace, name);

  /// Create a copy of UuidEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateEffectImplCopyWith<_$GenerateEffectImpl> get copyWith =>
      __$$GenerateEffectImplCopyWithImpl<_$GenerateEffectImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )
    generate,
  }) {
    return generate(version, count, namespace, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )?
    generate,
  }) {
    return generate?.call(version, count, namespace, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
      UuidVersion version,
      int count,
      String namespace,
      String name,
    )?
    generate,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(version, count, namespace, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEffect value) init,
    required TResult Function(GenerateEffect value) generate,
  }) {
    return generate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEffect value)? init,
    TResult? Function(GenerateEffect value)? generate,
  }) {
    return generate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEffect value)? init,
    TResult Function(GenerateEffect value)? generate,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(this);
    }
    return orElse();
  }
}

abstract class GenerateEffect implements UuidEffect {
  const factory GenerateEffect({
    required final UuidVersion version,
    required final int count,
    required final String namespace,
    required final String name,
  }) = _$GenerateEffectImpl;

  UuidVersion get version;
  int get count;
  String get namespace;
  String get name;

  /// Create a copy of UuidEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateEffectImplCopyWith<_$GenerateEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
