// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HashState {

 HashInput get input; HashFormat get format; HashAlgorithm get algorithm; Uint8List? get hash; int get inputBytes;
/// Create a copy of HashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HashStateCopyWith<HashState> get copyWith => _$HashStateCopyWithImpl<HashState>(this as HashState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HashState&&(identical(other.input, input) || other.input == input)&&(identical(other.format, format) || other.format == format)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&const DeepCollectionEquality().equals(other.hash, hash)&&(identical(other.inputBytes, inputBytes) || other.inputBytes == inputBytes));
}


@override
int get hashCode => Object.hash(runtimeType,input,format,algorithm,const DeepCollectionEquality().hash(hash),inputBytes);

@override
String toString() {
  return 'HashState(input: $input, format: $format, algorithm: $algorithm, hash: $hash, inputBytes: $inputBytes)';
}


}

/// @nodoc
abstract mixin class $HashStateCopyWith<$Res>  {
  factory $HashStateCopyWith(HashState value, $Res Function(HashState) _then) = _$HashStateCopyWithImpl;
@useResult
$Res call({
 HashInput input, HashFormat format, HashAlgorithm algorithm, Uint8List? hash, int inputBytes
});


$HashInputCopyWith<$Res> get input;

}
/// @nodoc
class _$HashStateCopyWithImpl<$Res>
    implements $HashStateCopyWith<$Res> {
  _$HashStateCopyWithImpl(this._self, this._then);

  final HashState _self;
  final $Res Function(HashState) _then;

/// Create a copy of HashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? format = null,Object? algorithm = null,Object? hash = freezed,Object? inputBytes = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as HashInput,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as HashFormat,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as HashAlgorithm,hash: freezed == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as Uint8List?,inputBytes: null == inputBytes ? _self.inputBytes : inputBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of HashState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HashInputCopyWith<$Res> get input {
  
  return $HashInputCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}


/// Adds pattern-matching-related methods to [HashState].
extension HashStatePatterns on HashState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HashState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HashState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HashState value)  $default,){
final _that = this;
switch (_that) {
case _HashState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HashState value)?  $default,){
final _that = this;
switch (_that) {
case _HashState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HashInput input,  HashFormat format,  HashAlgorithm algorithm,  Uint8List? hash,  int inputBytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HashState() when $default != null:
return $default(_that.input,_that.format,_that.algorithm,_that.hash,_that.inputBytes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HashInput input,  HashFormat format,  HashAlgorithm algorithm,  Uint8List? hash,  int inputBytes)  $default,) {final _that = this;
switch (_that) {
case _HashState():
return $default(_that.input,_that.format,_that.algorithm,_that.hash,_that.inputBytes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HashInput input,  HashFormat format,  HashAlgorithm algorithm,  Uint8List? hash,  int inputBytes)?  $default,) {final _that = this;
switch (_that) {
case _HashState() when $default != null:
return $default(_that.input,_that.format,_that.algorithm,_that.hash,_that.inputBytes);case _:
  return null;

}
}

}

/// @nodoc


class _HashState implements HashState {
  const _HashState({required this.input, required this.format, required this.algorithm, required this.hash, this.inputBytes = 0});
  

@override final  HashInput input;
@override final  HashFormat format;
@override final  HashAlgorithm algorithm;
@override final  Uint8List? hash;
@override@JsonKey() final  int inputBytes;

/// Create a copy of HashState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HashStateCopyWith<_HashState> get copyWith => __$HashStateCopyWithImpl<_HashState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HashState&&(identical(other.input, input) || other.input == input)&&(identical(other.format, format) || other.format == format)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&const DeepCollectionEquality().equals(other.hash, hash)&&(identical(other.inputBytes, inputBytes) || other.inputBytes == inputBytes));
}


@override
int get hashCode => Object.hash(runtimeType,input,format,algorithm,const DeepCollectionEquality().hash(hash),inputBytes);

@override
String toString() {
  return 'HashState(input: $input, format: $format, algorithm: $algorithm, hash: $hash, inputBytes: $inputBytes)';
}


}

/// @nodoc
abstract mixin class _$HashStateCopyWith<$Res> implements $HashStateCopyWith<$Res> {
  factory _$HashStateCopyWith(_HashState value, $Res Function(_HashState) _then) = __$HashStateCopyWithImpl;
@override @useResult
$Res call({
 HashInput input, HashFormat format, HashAlgorithm algorithm, Uint8List? hash, int inputBytes
});


@override $HashInputCopyWith<$Res> get input;

}
/// @nodoc
class __$HashStateCopyWithImpl<$Res>
    implements _$HashStateCopyWith<$Res> {
  __$HashStateCopyWithImpl(this._self, this._then);

  final _HashState _self;
  final $Res Function(_HashState) _then;

/// Create a copy of HashState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? format = null,Object? algorithm = null,Object? hash = freezed,Object? inputBytes = null,}) {
  return _then(_HashState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as HashInput,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as HashFormat,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as HashAlgorithm,hash: freezed == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as Uint8List?,inputBytes: null == inputBytes ? _self.inputBytes : inputBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of HashState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HashInputCopyWith<$Res> get input {
  
  return $HashInputCopyWith<$Res>(_self.input, (value) {
    return _then(_self.copyWith(input: value));
  });
}
}

/// @nodoc
mixin _$HashInput {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HashInput);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HashInput()';
}


}

/// @nodoc
class $HashInputCopyWith<$Res>  {
$HashInputCopyWith(HashInput _, $Res Function(HashInput) __);
}


/// Adds pattern-matching-related methods to [HashInput].
extension HashInputPatterns on HashInput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TextInput value)?  text,TResult Function( FileInput value)?  file,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TextInput() when text != null:
return text(_that);case FileInput() when file != null:
return file(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TextInput value)  text,required TResult Function( FileInput value)  file,}){
final _that = this;
switch (_that) {
case TextInput():
return text(_that);case FileInput():
return file(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TextInput value)?  text,TResult? Function( FileInput value)?  file,}){
final _that = this;
switch (_that) {
case TextInput() when text != null:
return text(_that);case FileInput() when file != null:
return file(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  text,TResult Function( String path)?  file,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TextInput() when text != null:
return text(_that.text);case FileInput() when file != null:
return file(_that.path);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  text,required TResult Function( String path)  file,}) {final _that = this;
switch (_that) {
case TextInput():
return text(_that.text);case FileInput():
return file(_that.path);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  text,TResult? Function( String path)?  file,}) {final _that = this;
switch (_that) {
case TextInput() when text != null:
return text(_that.text);case FileInput() when file != null:
return file(_that.path);case _:
  return null;

}
}

}

/// @nodoc


class TextInput implements HashInput {
  const TextInput({required this.text});
  

 final  String text;

/// Create a copy of HashInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextInputCopyWith<TextInput> get copyWith => _$TextInputCopyWithImpl<TextInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextInput&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'HashInput.text(text: $text)';
}


}

/// @nodoc
abstract mixin class $TextInputCopyWith<$Res> implements $HashInputCopyWith<$Res> {
  factory $TextInputCopyWith(TextInput value, $Res Function(TextInput) _then) = _$TextInputCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$TextInputCopyWithImpl<$Res>
    implements $TextInputCopyWith<$Res> {
  _$TextInputCopyWithImpl(this._self, this._then);

  final TextInput _self;
  final $Res Function(TextInput) _then;

/// Create a copy of HashInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(TextInput(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FileInput implements HashInput {
  const FileInput({required this.path});
  

 final  String path;

/// Create a copy of HashInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileInputCopyWith<FileInput> get copyWith => _$FileInputCopyWithImpl<FileInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileInput&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'HashInput.file(path: $path)';
}


}

/// @nodoc
abstract mixin class $FileInputCopyWith<$Res> implements $HashInputCopyWith<$Res> {
  factory $FileInputCopyWith(FileInput value, $Res Function(FileInput) _then) = _$FileInputCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$FileInputCopyWithImpl<$Res>
    implements $FileInputCopyWith<$Res> {
  _$FileInputCopyWithImpl(this._self, this._then);

  final FileInput _self;
  final $Res Function(FileInput) _then;

/// Create a copy of HashInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(FileInput(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
