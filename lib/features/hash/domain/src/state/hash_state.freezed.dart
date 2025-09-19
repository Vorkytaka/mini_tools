// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HashState {
  HashInput get input => throw _privateConstructorUsedError;
  HashFormat get format => throw _privateConstructorUsedError;
  HashAlgorithm get algorithm => throw _privateConstructorUsedError;
  Uint8List? get hash => throw _privateConstructorUsedError;
  int get inputBytes => throw _privateConstructorUsedError;

  /// Create a copy of HashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HashStateCopyWith<HashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HashStateCopyWith<$Res> {
  factory $HashStateCopyWith(HashState value, $Res Function(HashState) then) =
      _$HashStateCopyWithImpl<$Res, HashState>;
  @useResult
  $Res call({
    HashInput input,
    HashFormat format,
    HashAlgorithm algorithm,
    Uint8List? hash,
    int inputBytes,
  });

  $HashInputCopyWith<$Res> get input;
}

/// @nodoc
class _$HashStateCopyWithImpl<$Res, $Val extends HashState>
    implements $HashStateCopyWith<$Res> {
  _$HashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? format = null,
    Object? algorithm = null,
    Object? hash = freezed,
    Object? inputBytes = null,
  }) {
    return _then(
      _value.copyWith(
            input:
                null == input
                    ? _value.input
                    : input // ignore: cast_nullable_to_non_nullable
                        as HashInput,
            format:
                null == format
                    ? _value.format
                    : format // ignore: cast_nullable_to_non_nullable
                        as HashFormat,
            algorithm:
                null == algorithm
                    ? _value.algorithm
                    : algorithm // ignore: cast_nullable_to_non_nullable
                        as HashAlgorithm,
            hash:
                freezed == hash
                    ? _value.hash
                    : hash // ignore: cast_nullable_to_non_nullable
                        as Uint8List?,
            inputBytes:
                null == inputBytes
                    ? _value.inputBytes
                    : inputBytes // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of HashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HashInputCopyWith<$Res> get input {
    return $HashInputCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HashStateImplCopyWith<$Res>
    implements $HashStateCopyWith<$Res> {
  factory _$$HashStateImplCopyWith(
    _$HashStateImpl value,
    $Res Function(_$HashStateImpl) then,
  ) = __$$HashStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    HashInput input,
    HashFormat format,
    HashAlgorithm algorithm,
    Uint8List? hash,
    int inputBytes,
  });

  @override
  $HashInputCopyWith<$Res> get input;
}

/// @nodoc
class __$$HashStateImplCopyWithImpl<$Res>
    extends _$HashStateCopyWithImpl<$Res, _$HashStateImpl>
    implements _$$HashStateImplCopyWith<$Res> {
  __$$HashStateImplCopyWithImpl(
    _$HashStateImpl _value,
    $Res Function(_$HashStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? format = null,
    Object? algorithm = null,
    Object? hash = freezed,
    Object? inputBytes = null,
  }) {
    return _then(
      _$HashStateImpl(
        input:
            null == input
                ? _value.input
                : input // ignore: cast_nullable_to_non_nullable
                    as HashInput,
        format:
            null == format
                ? _value.format
                : format // ignore: cast_nullable_to_non_nullable
                    as HashFormat,
        algorithm:
            null == algorithm
                ? _value.algorithm
                : algorithm // ignore: cast_nullable_to_non_nullable
                    as HashAlgorithm,
        hash:
            freezed == hash
                ? _value.hash
                : hash // ignore: cast_nullable_to_non_nullable
                    as Uint8List?,
        inputBytes:
            null == inputBytes
                ? _value.inputBytes
                : inputBytes // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$HashStateImpl implements _HashState {
  const _$HashStateImpl({
    required this.input,
    required this.format,
    required this.algorithm,
    required this.hash,
    this.inputBytes = 0,
  });

  @override
  final HashInput input;
  @override
  final HashFormat format;
  @override
  final HashAlgorithm algorithm;
  @override
  final Uint8List? hash;
  @override
  @JsonKey()
  final int inputBytes;

  @override
  String toString() {
    return 'HashState(input: $input, format: $format, algorithm: $algorithm, hash: $hash, inputBytes: $inputBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HashStateImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            const DeepCollectionEquality().equals(other.hash, hash) &&
            (identical(other.inputBytes, inputBytes) ||
                other.inputBytes == inputBytes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    input,
    format,
    algorithm,
    const DeepCollectionEquality().hash(hash),
    inputBytes,
  );

  /// Create a copy of HashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HashStateImplCopyWith<_$HashStateImpl> get copyWith =>
      __$$HashStateImplCopyWithImpl<_$HashStateImpl>(this, _$identity);
}

abstract class _HashState implements HashState {
  const factory _HashState({
    required final HashInput input,
    required final HashFormat format,
    required final HashAlgorithm algorithm,
    required final Uint8List? hash,
    final int inputBytes,
  }) = _$HashStateImpl;

  @override
  HashInput get input;
  @override
  HashFormat get format;
  @override
  HashAlgorithm get algorithm;
  @override
  Uint8List? get hash;
  @override
  int get inputBytes;

  /// Create a copy of HashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HashStateImplCopyWith<_$HashStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HashInput {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String path) file,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String path)? file,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String path)? file,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInput value) text,
    required TResult Function(FileInput value) file,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInput value)? text,
    TResult? Function(FileInput value)? file,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInput value)? text,
    TResult Function(FileInput value)? file,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HashInputCopyWith<$Res> {
  factory $HashInputCopyWith(HashInput value, $Res Function(HashInput) then) =
      _$HashInputCopyWithImpl<$Res, HashInput>;
}

/// @nodoc
class _$HashInputCopyWithImpl<$Res, $Val extends HashInput>
    implements $HashInputCopyWith<$Res> {
  _$HashInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HashInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TextInputImplCopyWith<$Res> {
  factory _$$TextInputImplCopyWith(
    _$TextInputImpl value,
    $Res Function(_$TextInputImpl) then,
  ) = __$$TextInputImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TextInputImplCopyWithImpl<$Res>
    extends _$HashInputCopyWithImpl<$Res, _$TextInputImpl>
    implements _$$TextInputImplCopyWith<$Res> {
  __$$TextInputImplCopyWithImpl(
    _$TextInputImpl _value,
    $Res Function(_$TextInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _$TextInputImpl(
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$TextInputImpl implements TextInput {
  const _$TextInputImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'HashInput.text(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextInputImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of HashInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextInputImplCopyWith<_$TextInputImpl> get copyWith =>
      __$$TextInputImplCopyWithImpl<_$TextInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String path) file,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String path)? file,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String path)? file,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInput value) text,
    required TResult Function(FileInput value) file,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInput value)? text,
    TResult? Function(FileInput value)? file,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInput value)? text,
    TResult Function(FileInput value)? file,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextInput implements HashInput {
  const factory TextInput({required final String text}) = _$TextInputImpl;

  String get text;

  /// Create a copy of HashInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextInputImplCopyWith<_$TextInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileInputImplCopyWith<$Res> {
  factory _$$FileInputImplCopyWith(
    _$FileInputImpl value,
    $Res Function(_$FileInputImpl) then,
  ) = __$$FileInputImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$FileInputImplCopyWithImpl<$Res>
    extends _$HashInputCopyWithImpl<$Res, _$FileInputImpl>
    implements _$$FileInputImplCopyWith<$Res> {
  __$$FileInputImplCopyWithImpl(
    _$FileInputImpl _value,
    $Res Function(_$FileInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? path = null}) {
    return _then(
      _$FileInputImpl(
        path:
            null == path
                ? _value.path
                : path // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FileInputImpl implements FileInput {
  const _$FileInputImpl({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'HashInput.file(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileInputImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of HashInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileInputImplCopyWith<_$FileInputImpl> get copyWith =>
      __$$FileInputImplCopyWithImpl<_$FileInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String path) file,
  }) {
    return file(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String path)? file,
  }) {
    return file?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String path)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInput value) text,
    required TResult Function(FileInput value) file,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInput value)? text,
    TResult? Function(FileInput value)? file,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInput value)? text,
    TResult Function(FileInput value)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class FileInput implements HashInput {
  const factory FileInput({required final String path}) = _$FileInputImpl;

  String get path;

  /// Create a copy of HashInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileInputImplCopyWith<_$FileInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
