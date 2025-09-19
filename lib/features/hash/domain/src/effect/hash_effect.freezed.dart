// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hash_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SyncHashEffect {
  String get text => throw _privateConstructorUsedError;
  HashAlgorithm get algorithm => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, HashAlgorithm algorithm) textHash,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, HashAlgorithm algorithm)? textHash,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, HashAlgorithm algorithm)? textHash,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountTextHashEffect value) textHash,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountTextHashEffect value)? textHash,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountTextHashEffect value)? textHash,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of SyncHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SyncHashEffectCopyWith<SyncHashEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncHashEffectCopyWith<$Res> {
  factory $SyncHashEffectCopyWith(
    SyncHashEffect value,
    $Res Function(SyncHashEffect) then,
  ) = _$SyncHashEffectCopyWithImpl<$Res, SyncHashEffect>;
  @useResult
  $Res call({String text, HashAlgorithm algorithm});
}

/// @nodoc
class _$SyncHashEffectCopyWithImpl<$Res, $Val extends SyncHashEffect>
    implements $SyncHashEffectCopyWith<$Res> {
  _$SyncHashEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SyncHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? algorithm = null}) {
    return _then(
      _value.copyWith(
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
            algorithm:
                null == algorithm
                    ? _value.algorithm
                    : algorithm // ignore: cast_nullable_to_non_nullable
                        as HashAlgorithm,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountTextHashEffectImplCopyWith<$Res>
    implements $SyncHashEffectCopyWith<$Res> {
  factory _$$CountTextHashEffectImplCopyWith(
    _$CountTextHashEffectImpl value,
    $Res Function(_$CountTextHashEffectImpl) then,
  ) = __$$CountTextHashEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, HashAlgorithm algorithm});
}

/// @nodoc
class __$$CountTextHashEffectImplCopyWithImpl<$Res>
    extends _$SyncHashEffectCopyWithImpl<$Res, _$CountTextHashEffectImpl>
    implements _$$CountTextHashEffectImplCopyWith<$Res> {
  __$$CountTextHashEffectImplCopyWithImpl(
    _$CountTextHashEffectImpl _value,
    $Res Function(_$CountTextHashEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SyncHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? algorithm = null}) {
    return _then(
      _$CountTextHashEffectImpl(
        null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                as String,
        null == algorithm
            ? _value.algorithm
            : algorithm // ignore: cast_nullable_to_non_nullable
                as HashAlgorithm,
      ),
    );
  }
}

/// @nodoc

class _$CountTextHashEffectImpl implements CountTextHashEffect {
  const _$CountTextHashEffectImpl(this.text, this.algorithm);

  @override
  final String text;
  @override
  final HashAlgorithm algorithm;

  @override
  String toString() {
    return 'SyncHashEffect.textHash(text: $text, algorithm: $algorithm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountTextHashEffectImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, algorithm);

  /// Create a copy of SyncHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountTextHashEffectImplCopyWith<_$CountTextHashEffectImpl> get copyWith =>
      __$$CountTextHashEffectImplCopyWithImpl<_$CountTextHashEffectImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, HashAlgorithm algorithm) textHash,
  }) {
    return textHash(text, algorithm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, HashAlgorithm algorithm)? textHash,
  }) {
    return textHash?.call(text, algorithm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, HashAlgorithm algorithm)? textHash,
    required TResult orElse(),
  }) {
    if (textHash != null) {
      return textHash(text, algorithm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountTextHashEffect value) textHash,
  }) {
    return textHash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountTextHashEffect value)? textHash,
  }) {
    return textHash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountTextHashEffect value)? textHash,
    required TResult orElse(),
  }) {
    if (textHash != null) {
      return textHash(this);
    }
    return orElse();
  }
}

abstract class CountTextHashEffect implements SyncHashEffect {
  const factory CountTextHashEffect(
    final String text,
    final HashAlgorithm algorithm,
  ) = _$CountTextHashEffectImpl;

  @override
  String get text;
  @override
  HashAlgorithm get algorithm;

  /// Create a copy of SyncHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountTextHashEffectImplCopyWith<_$CountTextHashEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IsolateHashEffect {
  String get path => throw _privateConstructorUsedError;
  HashAlgorithm get algorithm => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path, HashAlgorithm algorithm) fileHash,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path, HashAlgorithm algorithm)? fileHash,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, HashAlgorithm algorithm)? fileHash,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountFileHashEffect value) fileHash,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountFileHashEffect value)? fileHash,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountFileHashEffect value)? fileHash,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of IsolateHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IsolateHashEffectCopyWith<IsolateHashEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsolateHashEffectCopyWith<$Res> {
  factory $IsolateHashEffectCopyWith(
    IsolateHashEffect value,
    $Res Function(IsolateHashEffect) then,
  ) = _$IsolateHashEffectCopyWithImpl<$Res, IsolateHashEffect>;
  @useResult
  $Res call({String path, HashAlgorithm algorithm});
}

/// @nodoc
class _$IsolateHashEffectCopyWithImpl<$Res, $Val extends IsolateHashEffect>
    implements $IsolateHashEffectCopyWith<$Res> {
  _$IsolateHashEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IsolateHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? path = null, Object? algorithm = null}) {
    return _then(
      _value.copyWith(
            path:
                null == path
                    ? _value.path
                    : path // ignore: cast_nullable_to_non_nullable
                        as String,
            algorithm:
                null == algorithm
                    ? _value.algorithm
                    : algorithm // ignore: cast_nullable_to_non_nullable
                        as HashAlgorithm,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountFileHashEffectImplCopyWith<$Res>
    implements $IsolateHashEffectCopyWith<$Res> {
  factory _$$CountFileHashEffectImplCopyWith(
    _$CountFileHashEffectImpl value,
    $Res Function(_$CountFileHashEffectImpl) then,
  ) = __$$CountFileHashEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, HashAlgorithm algorithm});
}

/// @nodoc
class __$$CountFileHashEffectImplCopyWithImpl<$Res>
    extends _$IsolateHashEffectCopyWithImpl<$Res, _$CountFileHashEffectImpl>
    implements _$$CountFileHashEffectImplCopyWith<$Res> {
  __$$CountFileHashEffectImplCopyWithImpl(
    _$CountFileHashEffectImpl _value,
    $Res Function(_$CountFileHashEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IsolateHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? path = null, Object? algorithm = null}) {
    return _then(
      _$CountFileHashEffectImpl(
        null == path
            ? _value.path
            : path // ignore: cast_nullable_to_non_nullable
                as String,
        null == algorithm
            ? _value.algorithm
            : algorithm // ignore: cast_nullable_to_non_nullable
                as HashAlgorithm,
      ),
    );
  }
}

/// @nodoc

class _$CountFileHashEffectImpl implements CountFileHashEffect {
  const _$CountFileHashEffectImpl(this.path, this.algorithm);

  @override
  final String path;
  @override
  final HashAlgorithm algorithm;

  @override
  String toString() {
    return 'IsolateHashEffect.fileHash(path: $path, algorithm: $algorithm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountFileHashEffectImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, algorithm);

  /// Create a copy of IsolateHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountFileHashEffectImplCopyWith<_$CountFileHashEffectImpl> get copyWith =>
      __$$CountFileHashEffectImplCopyWithImpl<_$CountFileHashEffectImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path, HashAlgorithm algorithm) fileHash,
  }) {
    return fileHash(path, algorithm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path, HashAlgorithm algorithm)? fileHash,
  }) {
    return fileHash?.call(path, algorithm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, HashAlgorithm algorithm)? fileHash,
    required TResult orElse(),
  }) {
    if (fileHash != null) {
      return fileHash(path, algorithm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountFileHashEffect value) fileHash,
  }) {
    return fileHash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountFileHashEffect value)? fileHash,
  }) {
    return fileHash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountFileHashEffect value)? fileHash,
    required TResult orElse(),
  }) {
    if (fileHash != null) {
      return fileHash(this);
    }
    return orElse();
  }
}

abstract class CountFileHashEffect implements IsolateHashEffect {
  const factory CountFileHashEffect(
    final String path,
    final HashAlgorithm algorithm,
  ) = _$CountFileHashEffectImpl;

  @override
  String get path;
  @override
  HashAlgorithm get algorithm;

  /// Create a copy of IsolateHashEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountFileHashEffectImplCopyWith<_$CountFileHashEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
