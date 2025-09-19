// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hash_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function(String path) setFile,
    required TResult Function() dropFile,
    required TResult Function(HashFormat format) updateFormat,
    required TResult Function(Uint8List? hash, int? bytesInFile) updateHash,
    required TResult Function(HashAlgorithm algorithm) updateAlgorithm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateText,
    TResult? Function(String path)? setFile,
    TResult? Function()? dropFile,
    TResult? Function(HashFormat format)? updateFormat,
    TResult? Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult? Function(HashAlgorithm algorithm)? updateAlgorithm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function(String path)? setFile,
    TResult Function()? dropFile,
    TResult Function(HashFormat format)? updateFormat,
    TResult Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult Function(HashAlgorithm algorithm)? updateAlgorithm,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTextEvent value) updateText,
    required TResult Function(SetFileEvent value) setFile,
    required TResult Function(DropFileEvent value) dropFile,
    required TResult Function(UpdateFormatEvent value) updateFormat,
    required TResult Function(UpdateHashEvent value) updateHash,
    required TResult Function(UpdateAlgorithmEvent value) updateAlgorithm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTextEvent value)? updateText,
    TResult? Function(SetFileEvent value)? setFile,
    TResult? Function(DropFileEvent value)? dropFile,
    TResult? Function(UpdateFormatEvent value)? updateFormat,
    TResult? Function(UpdateHashEvent value)? updateHash,
    TResult? Function(UpdateAlgorithmEvent value)? updateAlgorithm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTextEvent value)? updateText,
    TResult Function(SetFileEvent value)? setFile,
    TResult Function(DropFileEvent value)? dropFile,
    TResult Function(UpdateFormatEvent value)? updateFormat,
    TResult Function(UpdateHashEvent value)? updateHash,
    TResult Function(UpdateAlgorithmEvent value)? updateAlgorithm,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HashEventCopyWith<$Res> {
  factory $HashEventCopyWith(HashEvent value, $Res Function(HashEvent) then) =
      _$HashEventCopyWithImpl<$Res, HashEvent>;
}

/// @nodoc
class _$HashEventCopyWithImpl<$Res, $Val extends HashEvent>
    implements $HashEventCopyWith<$Res> {
  _$HashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateTextEventImplCopyWith<$Res> {
  factory _$$UpdateTextEventImplCopyWith(
    _$UpdateTextEventImpl value,
    $Res Function(_$UpdateTextEventImpl) then,
  ) = __$$UpdateTextEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$UpdateTextEventImplCopyWithImpl<$Res>
    extends _$HashEventCopyWithImpl<$Res, _$UpdateTextEventImpl>
    implements _$$UpdateTextEventImplCopyWith<$Res> {
  __$$UpdateTextEventImplCopyWithImpl(
    _$UpdateTextEventImpl _value,
    $Res Function(_$UpdateTextEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _$UpdateTextEventImpl(
        null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateTextEventImpl implements UpdateTextEvent {
  const _$UpdateTextEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'HashEvent.updateText(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTextEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTextEventImplCopyWith<_$UpdateTextEventImpl> get copyWith =>
      __$$UpdateTextEventImplCopyWithImpl<_$UpdateTextEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function(String path) setFile,
    required TResult Function() dropFile,
    required TResult Function(HashFormat format) updateFormat,
    required TResult Function(Uint8List? hash, int? bytesInFile) updateHash,
    required TResult Function(HashAlgorithm algorithm) updateAlgorithm,
  }) {
    return updateText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateText,
    TResult? Function(String path)? setFile,
    TResult? Function()? dropFile,
    TResult? Function(HashFormat format)? updateFormat,
    TResult? Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult? Function(HashAlgorithm algorithm)? updateAlgorithm,
  }) {
    return updateText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function(String path)? setFile,
    TResult Function()? dropFile,
    TResult Function(HashFormat format)? updateFormat,
    TResult Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult Function(HashAlgorithm algorithm)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (updateText != null) {
      return updateText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTextEvent value) updateText,
    required TResult Function(SetFileEvent value) setFile,
    required TResult Function(DropFileEvent value) dropFile,
    required TResult Function(UpdateFormatEvent value) updateFormat,
    required TResult Function(UpdateHashEvent value) updateHash,
    required TResult Function(UpdateAlgorithmEvent value) updateAlgorithm,
  }) {
    return updateText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTextEvent value)? updateText,
    TResult? Function(SetFileEvent value)? setFile,
    TResult? Function(DropFileEvent value)? dropFile,
    TResult? Function(UpdateFormatEvent value)? updateFormat,
    TResult? Function(UpdateHashEvent value)? updateHash,
    TResult? Function(UpdateAlgorithmEvent value)? updateAlgorithm,
  }) {
    return updateText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTextEvent value)? updateText,
    TResult Function(SetFileEvent value)? setFile,
    TResult Function(DropFileEvent value)? dropFile,
    TResult Function(UpdateFormatEvent value)? updateFormat,
    TResult Function(UpdateHashEvent value)? updateHash,
    TResult Function(UpdateAlgorithmEvent value)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (updateText != null) {
      return updateText(this);
    }
    return orElse();
  }
}

abstract class UpdateTextEvent implements HashEvent {
  const factory UpdateTextEvent(final String text) = _$UpdateTextEventImpl;

  String get text;

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTextEventImplCopyWith<_$UpdateTextEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetFileEventImplCopyWith<$Res> {
  factory _$$SetFileEventImplCopyWith(
    _$SetFileEventImpl value,
    $Res Function(_$SetFileEventImpl) then,
  ) = __$$SetFileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$SetFileEventImplCopyWithImpl<$Res>
    extends _$HashEventCopyWithImpl<$Res, _$SetFileEventImpl>
    implements _$$SetFileEventImplCopyWith<$Res> {
  __$$SetFileEventImplCopyWithImpl(
    _$SetFileEventImpl _value,
    $Res Function(_$SetFileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? path = null}) {
    return _then(
      _$SetFileEventImpl(
        null == path
            ? _value.path
            : path // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SetFileEventImpl implements SetFileEvent {
  const _$SetFileEventImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'HashEvent.setFile(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFileEventImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFileEventImplCopyWith<_$SetFileEventImpl> get copyWith =>
      __$$SetFileEventImplCopyWithImpl<_$SetFileEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function(String path) setFile,
    required TResult Function() dropFile,
    required TResult Function(HashFormat format) updateFormat,
    required TResult Function(Uint8List? hash, int? bytesInFile) updateHash,
    required TResult Function(HashAlgorithm algorithm) updateAlgorithm,
  }) {
    return setFile(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateText,
    TResult? Function(String path)? setFile,
    TResult? Function()? dropFile,
    TResult? Function(HashFormat format)? updateFormat,
    TResult? Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult? Function(HashAlgorithm algorithm)? updateAlgorithm,
  }) {
    return setFile?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function(String path)? setFile,
    TResult Function()? dropFile,
    TResult Function(HashFormat format)? updateFormat,
    TResult Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult Function(HashAlgorithm algorithm)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (setFile != null) {
      return setFile(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTextEvent value) updateText,
    required TResult Function(SetFileEvent value) setFile,
    required TResult Function(DropFileEvent value) dropFile,
    required TResult Function(UpdateFormatEvent value) updateFormat,
    required TResult Function(UpdateHashEvent value) updateHash,
    required TResult Function(UpdateAlgorithmEvent value) updateAlgorithm,
  }) {
    return setFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTextEvent value)? updateText,
    TResult? Function(SetFileEvent value)? setFile,
    TResult? Function(DropFileEvent value)? dropFile,
    TResult? Function(UpdateFormatEvent value)? updateFormat,
    TResult? Function(UpdateHashEvent value)? updateHash,
    TResult? Function(UpdateAlgorithmEvent value)? updateAlgorithm,
  }) {
    return setFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTextEvent value)? updateText,
    TResult Function(SetFileEvent value)? setFile,
    TResult Function(DropFileEvent value)? dropFile,
    TResult Function(UpdateFormatEvent value)? updateFormat,
    TResult Function(UpdateHashEvent value)? updateHash,
    TResult Function(UpdateAlgorithmEvent value)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (setFile != null) {
      return setFile(this);
    }
    return orElse();
  }
}

abstract class SetFileEvent implements HashEvent {
  const factory SetFileEvent(final String path) = _$SetFileEventImpl;

  String get path;

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetFileEventImplCopyWith<_$SetFileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DropFileEventImplCopyWith<$Res> {
  factory _$$DropFileEventImplCopyWith(
    _$DropFileEventImpl value,
    $Res Function(_$DropFileEventImpl) then,
  ) = __$$DropFileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DropFileEventImplCopyWithImpl<$Res>
    extends _$HashEventCopyWithImpl<$Res, _$DropFileEventImpl>
    implements _$$DropFileEventImplCopyWith<$Res> {
  __$$DropFileEventImplCopyWithImpl(
    _$DropFileEventImpl _value,
    $Res Function(_$DropFileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DropFileEventImpl implements DropFileEvent {
  const _$DropFileEventImpl();

  @override
  String toString() {
    return 'HashEvent.dropFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DropFileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function(String path) setFile,
    required TResult Function() dropFile,
    required TResult Function(HashFormat format) updateFormat,
    required TResult Function(Uint8List? hash, int? bytesInFile) updateHash,
    required TResult Function(HashAlgorithm algorithm) updateAlgorithm,
  }) {
    return dropFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateText,
    TResult? Function(String path)? setFile,
    TResult? Function()? dropFile,
    TResult? Function(HashFormat format)? updateFormat,
    TResult? Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult? Function(HashAlgorithm algorithm)? updateAlgorithm,
  }) {
    return dropFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function(String path)? setFile,
    TResult Function()? dropFile,
    TResult Function(HashFormat format)? updateFormat,
    TResult Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult Function(HashAlgorithm algorithm)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (dropFile != null) {
      return dropFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTextEvent value) updateText,
    required TResult Function(SetFileEvent value) setFile,
    required TResult Function(DropFileEvent value) dropFile,
    required TResult Function(UpdateFormatEvent value) updateFormat,
    required TResult Function(UpdateHashEvent value) updateHash,
    required TResult Function(UpdateAlgorithmEvent value) updateAlgorithm,
  }) {
    return dropFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTextEvent value)? updateText,
    TResult? Function(SetFileEvent value)? setFile,
    TResult? Function(DropFileEvent value)? dropFile,
    TResult? Function(UpdateFormatEvent value)? updateFormat,
    TResult? Function(UpdateHashEvent value)? updateHash,
    TResult? Function(UpdateAlgorithmEvent value)? updateAlgorithm,
  }) {
    return dropFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTextEvent value)? updateText,
    TResult Function(SetFileEvent value)? setFile,
    TResult Function(DropFileEvent value)? dropFile,
    TResult Function(UpdateFormatEvent value)? updateFormat,
    TResult Function(UpdateHashEvent value)? updateHash,
    TResult Function(UpdateAlgorithmEvent value)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (dropFile != null) {
      return dropFile(this);
    }
    return orElse();
  }
}

abstract class DropFileEvent implements HashEvent {
  const factory DropFileEvent() = _$DropFileEventImpl;
}

/// @nodoc
abstract class _$$UpdateFormatEventImplCopyWith<$Res> {
  factory _$$UpdateFormatEventImplCopyWith(
    _$UpdateFormatEventImpl value,
    $Res Function(_$UpdateFormatEventImpl) then,
  ) = __$$UpdateFormatEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HashFormat format});
}

/// @nodoc
class __$$UpdateFormatEventImplCopyWithImpl<$Res>
    extends _$HashEventCopyWithImpl<$Res, _$UpdateFormatEventImpl>
    implements _$$UpdateFormatEventImplCopyWith<$Res> {
  __$$UpdateFormatEventImplCopyWithImpl(
    _$UpdateFormatEventImpl _value,
    $Res Function(_$UpdateFormatEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? format = null}) {
    return _then(
      _$UpdateFormatEventImpl(
        null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                as HashFormat,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFormatEventImpl implements UpdateFormatEvent {
  const _$UpdateFormatEventImpl(this.format);

  @override
  final HashFormat format;

  @override
  String toString() {
    return 'HashEvent.updateFormat(format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFormatEventImpl &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode => Object.hash(runtimeType, format);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFormatEventImplCopyWith<_$UpdateFormatEventImpl> get copyWith =>
      __$$UpdateFormatEventImplCopyWithImpl<_$UpdateFormatEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function(String path) setFile,
    required TResult Function() dropFile,
    required TResult Function(HashFormat format) updateFormat,
    required TResult Function(Uint8List? hash, int? bytesInFile) updateHash,
    required TResult Function(HashAlgorithm algorithm) updateAlgorithm,
  }) {
    return updateFormat(format);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateText,
    TResult? Function(String path)? setFile,
    TResult? Function()? dropFile,
    TResult? Function(HashFormat format)? updateFormat,
    TResult? Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult? Function(HashAlgorithm algorithm)? updateAlgorithm,
  }) {
    return updateFormat?.call(format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function(String path)? setFile,
    TResult Function()? dropFile,
    TResult Function(HashFormat format)? updateFormat,
    TResult Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult Function(HashAlgorithm algorithm)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (updateFormat != null) {
      return updateFormat(format);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTextEvent value) updateText,
    required TResult Function(SetFileEvent value) setFile,
    required TResult Function(DropFileEvent value) dropFile,
    required TResult Function(UpdateFormatEvent value) updateFormat,
    required TResult Function(UpdateHashEvent value) updateHash,
    required TResult Function(UpdateAlgorithmEvent value) updateAlgorithm,
  }) {
    return updateFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTextEvent value)? updateText,
    TResult? Function(SetFileEvent value)? setFile,
    TResult? Function(DropFileEvent value)? dropFile,
    TResult? Function(UpdateFormatEvent value)? updateFormat,
    TResult? Function(UpdateHashEvent value)? updateHash,
    TResult? Function(UpdateAlgorithmEvent value)? updateAlgorithm,
  }) {
    return updateFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTextEvent value)? updateText,
    TResult Function(SetFileEvent value)? setFile,
    TResult Function(DropFileEvent value)? dropFile,
    TResult Function(UpdateFormatEvent value)? updateFormat,
    TResult Function(UpdateHashEvent value)? updateHash,
    TResult Function(UpdateAlgorithmEvent value)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (updateFormat != null) {
      return updateFormat(this);
    }
    return orElse();
  }
}

abstract class UpdateFormatEvent implements HashEvent {
  const factory UpdateFormatEvent(final HashFormat format) =
      _$UpdateFormatEventImpl;

  HashFormat get format;

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFormatEventImplCopyWith<_$UpdateFormatEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateHashEventImplCopyWith<$Res> {
  factory _$$UpdateHashEventImplCopyWith(
    _$UpdateHashEventImpl value,
    $Res Function(_$UpdateHashEventImpl) then,
  ) = __$$UpdateHashEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List? hash, int? bytesInFile});
}

/// @nodoc
class __$$UpdateHashEventImplCopyWithImpl<$Res>
    extends _$HashEventCopyWithImpl<$Res, _$UpdateHashEventImpl>
    implements _$$UpdateHashEventImplCopyWith<$Res> {
  __$$UpdateHashEventImplCopyWithImpl(
    _$UpdateHashEventImpl _value,
    $Res Function(_$UpdateHashEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hash = freezed, Object? bytesInFile = freezed}) {
    return _then(
      _$UpdateHashEventImpl(
        freezed == hash
            ? _value.hash
            : hash // ignore: cast_nullable_to_non_nullable
                as Uint8List?,
        bytesInFile:
            freezed == bytesInFile
                ? _value.bytesInFile
                : bytesInFile // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateHashEventImpl implements UpdateHashEvent {
  const _$UpdateHashEventImpl(this.hash, {this.bytesInFile});

  @override
  final Uint8List? hash;
  @override
  final int? bytesInFile;

  @override
  String toString() {
    return 'HashEvent.updateHash(hash: $hash, bytesInFile: $bytesInFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateHashEventImpl &&
            const DeepCollectionEquality().equals(other.hash, hash) &&
            (identical(other.bytesInFile, bytesInFile) ||
                other.bytesInFile == bytesInFile));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(hash),
    bytesInFile,
  );

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateHashEventImplCopyWith<_$UpdateHashEventImpl> get copyWith =>
      __$$UpdateHashEventImplCopyWithImpl<_$UpdateHashEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function(String path) setFile,
    required TResult Function() dropFile,
    required TResult Function(HashFormat format) updateFormat,
    required TResult Function(Uint8List? hash, int? bytesInFile) updateHash,
    required TResult Function(HashAlgorithm algorithm) updateAlgorithm,
  }) {
    return updateHash(hash, bytesInFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateText,
    TResult? Function(String path)? setFile,
    TResult? Function()? dropFile,
    TResult? Function(HashFormat format)? updateFormat,
    TResult? Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult? Function(HashAlgorithm algorithm)? updateAlgorithm,
  }) {
    return updateHash?.call(hash, bytesInFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function(String path)? setFile,
    TResult Function()? dropFile,
    TResult Function(HashFormat format)? updateFormat,
    TResult Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult Function(HashAlgorithm algorithm)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (updateHash != null) {
      return updateHash(hash, bytesInFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTextEvent value) updateText,
    required TResult Function(SetFileEvent value) setFile,
    required TResult Function(DropFileEvent value) dropFile,
    required TResult Function(UpdateFormatEvent value) updateFormat,
    required TResult Function(UpdateHashEvent value) updateHash,
    required TResult Function(UpdateAlgorithmEvent value) updateAlgorithm,
  }) {
    return updateHash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTextEvent value)? updateText,
    TResult? Function(SetFileEvent value)? setFile,
    TResult? Function(DropFileEvent value)? dropFile,
    TResult? Function(UpdateFormatEvent value)? updateFormat,
    TResult? Function(UpdateHashEvent value)? updateHash,
    TResult? Function(UpdateAlgorithmEvent value)? updateAlgorithm,
  }) {
    return updateHash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTextEvent value)? updateText,
    TResult Function(SetFileEvent value)? setFile,
    TResult Function(DropFileEvent value)? dropFile,
    TResult Function(UpdateFormatEvent value)? updateFormat,
    TResult Function(UpdateHashEvent value)? updateHash,
    TResult Function(UpdateAlgorithmEvent value)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (updateHash != null) {
      return updateHash(this);
    }
    return orElse();
  }
}

abstract class UpdateHashEvent implements HashEvent {
  const factory UpdateHashEvent(
    final Uint8List? hash, {
    final int? bytesInFile,
  }) = _$UpdateHashEventImpl;

  Uint8List? get hash;
  int? get bytesInFile;

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateHashEventImplCopyWith<_$UpdateHashEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAlgorithmEventImplCopyWith<$Res> {
  factory _$$UpdateAlgorithmEventImplCopyWith(
    _$UpdateAlgorithmEventImpl value,
    $Res Function(_$UpdateAlgorithmEventImpl) then,
  ) = __$$UpdateAlgorithmEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HashAlgorithm algorithm});
}

/// @nodoc
class __$$UpdateAlgorithmEventImplCopyWithImpl<$Res>
    extends _$HashEventCopyWithImpl<$Res, _$UpdateAlgorithmEventImpl>
    implements _$$UpdateAlgorithmEventImplCopyWith<$Res> {
  __$$UpdateAlgorithmEventImplCopyWithImpl(
    _$UpdateAlgorithmEventImpl _value,
    $Res Function(_$UpdateAlgorithmEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? algorithm = null}) {
    return _then(
      _$UpdateAlgorithmEventImpl(
        null == algorithm
            ? _value.algorithm
            : algorithm // ignore: cast_nullable_to_non_nullable
                as HashAlgorithm,
      ),
    );
  }
}

/// @nodoc

class _$UpdateAlgorithmEventImpl implements UpdateAlgorithmEvent {
  const _$UpdateAlgorithmEventImpl(this.algorithm);

  @override
  final HashAlgorithm algorithm;

  @override
  String toString() {
    return 'HashEvent.updateAlgorithm(algorithm: $algorithm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAlgorithmEventImpl &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, algorithm);

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAlgorithmEventImplCopyWith<_$UpdateAlgorithmEventImpl>
  get copyWith =>
      __$$UpdateAlgorithmEventImplCopyWithImpl<_$UpdateAlgorithmEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function(String path) setFile,
    required TResult Function() dropFile,
    required TResult Function(HashFormat format) updateFormat,
    required TResult Function(Uint8List? hash, int? bytesInFile) updateHash,
    required TResult Function(HashAlgorithm algorithm) updateAlgorithm,
  }) {
    return updateAlgorithm(algorithm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateText,
    TResult? Function(String path)? setFile,
    TResult? Function()? dropFile,
    TResult? Function(HashFormat format)? updateFormat,
    TResult? Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult? Function(HashAlgorithm algorithm)? updateAlgorithm,
  }) {
    return updateAlgorithm?.call(algorithm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function(String path)? setFile,
    TResult Function()? dropFile,
    TResult Function(HashFormat format)? updateFormat,
    TResult Function(Uint8List? hash, int? bytesInFile)? updateHash,
    TResult Function(HashAlgorithm algorithm)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (updateAlgorithm != null) {
      return updateAlgorithm(algorithm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTextEvent value) updateText,
    required TResult Function(SetFileEvent value) setFile,
    required TResult Function(DropFileEvent value) dropFile,
    required TResult Function(UpdateFormatEvent value) updateFormat,
    required TResult Function(UpdateHashEvent value) updateHash,
    required TResult Function(UpdateAlgorithmEvent value) updateAlgorithm,
  }) {
    return updateAlgorithm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTextEvent value)? updateText,
    TResult? Function(SetFileEvent value)? setFile,
    TResult? Function(DropFileEvent value)? dropFile,
    TResult? Function(UpdateFormatEvent value)? updateFormat,
    TResult? Function(UpdateHashEvent value)? updateHash,
    TResult? Function(UpdateAlgorithmEvent value)? updateAlgorithm,
  }) {
    return updateAlgorithm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTextEvent value)? updateText,
    TResult Function(SetFileEvent value)? setFile,
    TResult Function(DropFileEvent value)? dropFile,
    TResult Function(UpdateFormatEvent value)? updateFormat,
    TResult Function(UpdateHashEvent value)? updateHash,
    TResult Function(UpdateAlgorithmEvent value)? updateAlgorithm,
    required TResult orElse(),
  }) {
    if (updateAlgorithm != null) {
      return updateAlgorithm(this);
    }
    return orElse();
  }
}

abstract class UpdateAlgorithmEvent implements HashEvent {
  const factory UpdateAlgorithmEvent(final HashAlgorithm algorithm) =
      _$UpdateAlgorithmEventImpl;

  HashAlgorithm get algorithm;

  /// Create a copy of HashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAlgorithmEventImplCopyWith<_$UpdateAlgorithmEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}
