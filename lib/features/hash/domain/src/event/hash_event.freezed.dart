// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hash_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HashEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HashEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HashEvent()';
}


}

/// @nodoc
class $HashEventCopyWith<$Res>  {
$HashEventCopyWith(HashEvent _, $Res Function(HashEvent) __);
}


/// Adds pattern-matching-related methods to [HashEvent].
extension HashEventPatterns on HashEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateTextEvent value)?  updateText,TResult Function( SetFileEvent value)?  setFile,TResult Function( DropFileEvent value)?  dropFile,TResult Function( UpdateFormatEvent value)?  updateFormat,TResult Function( UpdateHashEvent value)?  updateHash,TResult Function( UpdateAlgorithmEvent value)?  updateAlgorithm,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateTextEvent() when updateText != null:
return updateText(_that);case SetFileEvent() when setFile != null:
return setFile(_that);case DropFileEvent() when dropFile != null:
return dropFile(_that);case UpdateFormatEvent() when updateFormat != null:
return updateFormat(_that);case UpdateHashEvent() when updateHash != null:
return updateHash(_that);case UpdateAlgorithmEvent() when updateAlgorithm != null:
return updateAlgorithm(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateTextEvent value)  updateText,required TResult Function( SetFileEvent value)  setFile,required TResult Function( DropFileEvent value)  dropFile,required TResult Function( UpdateFormatEvent value)  updateFormat,required TResult Function( UpdateHashEvent value)  updateHash,required TResult Function( UpdateAlgorithmEvent value)  updateAlgorithm,}){
final _that = this;
switch (_that) {
case UpdateTextEvent():
return updateText(_that);case SetFileEvent():
return setFile(_that);case DropFileEvent():
return dropFile(_that);case UpdateFormatEvent():
return updateFormat(_that);case UpdateHashEvent():
return updateHash(_that);case UpdateAlgorithmEvent():
return updateAlgorithm(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateTextEvent value)?  updateText,TResult? Function( SetFileEvent value)?  setFile,TResult? Function( DropFileEvent value)?  dropFile,TResult? Function( UpdateFormatEvent value)?  updateFormat,TResult? Function( UpdateHashEvent value)?  updateHash,TResult? Function( UpdateAlgorithmEvent value)?  updateAlgorithm,}){
final _that = this;
switch (_that) {
case UpdateTextEvent() when updateText != null:
return updateText(_that);case SetFileEvent() when setFile != null:
return setFile(_that);case DropFileEvent() when dropFile != null:
return dropFile(_that);case UpdateFormatEvent() when updateFormat != null:
return updateFormat(_that);case UpdateHashEvent() when updateHash != null:
return updateHash(_that);case UpdateAlgorithmEvent() when updateAlgorithm != null:
return updateAlgorithm(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  updateText,TResult Function( String path)?  setFile,TResult Function()?  dropFile,TResult Function( HashFormat format)?  updateFormat,TResult Function( Uint8List? hash,  int? bytesInFile)?  updateHash,TResult Function( HashAlgorithm algorithm)?  updateAlgorithm,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateTextEvent() when updateText != null:
return updateText(_that.text);case SetFileEvent() when setFile != null:
return setFile(_that.path);case DropFileEvent() when dropFile != null:
return dropFile();case UpdateFormatEvent() when updateFormat != null:
return updateFormat(_that.format);case UpdateHashEvent() when updateHash != null:
return updateHash(_that.hash,_that.bytesInFile);case UpdateAlgorithmEvent() when updateAlgorithm != null:
return updateAlgorithm(_that.algorithm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  updateText,required TResult Function( String path)  setFile,required TResult Function()  dropFile,required TResult Function( HashFormat format)  updateFormat,required TResult Function( Uint8List? hash,  int? bytesInFile)  updateHash,required TResult Function( HashAlgorithm algorithm)  updateAlgorithm,}) {final _that = this;
switch (_that) {
case UpdateTextEvent():
return updateText(_that.text);case SetFileEvent():
return setFile(_that.path);case DropFileEvent():
return dropFile();case UpdateFormatEvent():
return updateFormat(_that.format);case UpdateHashEvent():
return updateHash(_that.hash,_that.bytesInFile);case UpdateAlgorithmEvent():
return updateAlgorithm(_that.algorithm);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  updateText,TResult? Function( String path)?  setFile,TResult? Function()?  dropFile,TResult? Function( HashFormat format)?  updateFormat,TResult? Function( Uint8List? hash,  int? bytesInFile)?  updateHash,TResult? Function( HashAlgorithm algorithm)?  updateAlgorithm,}) {final _that = this;
switch (_that) {
case UpdateTextEvent() when updateText != null:
return updateText(_that.text);case SetFileEvent() when setFile != null:
return setFile(_that.path);case DropFileEvent() when dropFile != null:
return dropFile();case UpdateFormatEvent() when updateFormat != null:
return updateFormat(_that.format);case UpdateHashEvent() when updateHash != null:
return updateHash(_that.hash,_that.bytesInFile);case UpdateAlgorithmEvent() when updateAlgorithm != null:
return updateAlgorithm(_that.algorithm);case _:
  return null;

}
}

}

/// @nodoc


class UpdateTextEvent implements HashEvent {
  const UpdateTextEvent(this.text);
  

 final  String text;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTextEventCopyWith<UpdateTextEvent> get copyWith => _$UpdateTextEventCopyWithImpl<UpdateTextEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTextEvent&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'HashEvent.updateText(text: $text)';
}


}

/// @nodoc
abstract mixin class $UpdateTextEventCopyWith<$Res> implements $HashEventCopyWith<$Res> {
  factory $UpdateTextEventCopyWith(UpdateTextEvent value, $Res Function(UpdateTextEvent) _then) = _$UpdateTextEventCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$UpdateTextEventCopyWithImpl<$Res>
    implements $UpdateTextEventCopyWith<$Res> {
  _$UpdateTextEventCopyWithImpl(this._self, this._then);

  final UpdateTextEvent _self;
  final $Res Function(UpdateTextEvent) _then;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(UpdateTextEvent(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetFileEvent implements HashEvent {
  const SetFileEvent(this.path);
  

 final  String path;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetFileEventCopyWith<SetFileEvent> get copyWith => _$SetFileEventCopyWithImpl<SetFileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetFileEvent&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'HashEvent.setFile(path: $path)';
}


}

/// @nodoc
abstract mixin class $SetFileEventCopyWith<$Res> implements $HashEventCopyWith<$Res> {
  factory $SetFileEventCopyWith(SetFileEvent value, $Res Function(SetFileEvent) _then) = _$SetFileEventCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$SetFileEventCopyWithImpl<$Res>
    implements $SetFileEventCopyWith<$Res> {
  _$SetFileEventCopyWithImpl(this._self, this._then);

  final SetFileEvent _self;
  final $Res Function(SetFileEvent) _then;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(SetFileEvent(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DropFileEvent implements HashEvent {
  const DropFileEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DropFileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HashEvent.dropFile()';
}


}




/// @nodoc


class UpdateFormatEvent implements HashEvent {
  const UpdateFormatEvent(this.format);
  

 final  HashFormat format;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFormatEventCopyWith<UpdateFormatEvent> get copyWith => _$UpdateFormatEventCopyWithImpl<UpdateFormatEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFormatEvent&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,format);

@override
String toString() {
  return 'HashEvent.updateFormat(format: $format)';
}


}

/// @nodoc
abstract mixin class $UpdateFormatEventCopyWith<$Res> implements $HashEventCopyWith<$Res> {
  factory $UpdateFormatEventCopyWith(UpdateFormatEvent value, $Res Function(UpdateFormatEvent) _then) = _$UpdateFormatEventCopyWithImpl;
@useResult
$Res call({
 HashFormat format
});




}
/// @nodoc
class _$UpdateFormatEventCopyWithImpl<$Res>
    implements $UpdateFormatEventCopyWith<$Res> {
  _$UpdateFormatEventCopyWithImpl(this._self, this._then);

  final UpdateFormatEvent _self;
  final $Res Function(UpdateFormatEvent) _then;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? format = null,}) {
  return _then(UpdateFormatEvent(
null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as HashFormat,
  ));
}


}

/// @nodoc


class UpdateHashEvent implements HashEvent {
  const UpdateHashEvent(this.hash, {this.bytesInFile});
  

 final  Uint8List? hash;
 final  int? bytesInFile;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateHashEventCopyWith<UpdateHashEvent> get copyWith => _$UpdateHashEventCopyWithImpl<UpdateHashEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateHashEvent&&const DeepCollectionEquality().equals(other.hash, hash)&&(identical(other.bytesInFile, bytesInFile) || other.bytesInFile == bytesInFile));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(hash),bytesInFile);

@override
String toString() {
  return 'HashEvent.updateHash(hash: $hash, bytesInFile: $bytesInFile)';
}


}

/// @nodoc
abstract mixin class $UpdateHashEventCopyWith<$Res> implements $HashEventCopyWith<$Res> {
  factory $UpdateHashEventCopyWith(UpdateHashEvent value, $Res Function(UpdateHashEvent) _then) = _$UpdateHashEventCopyWithImpl;
@useResult
$Res call({
 Uint8List? hash, int? bytesInFile
});




}
/// @nodoc
class _$UpdateHashEventCopyWithImpl<$Res>
    implements $UpdateHashEventCopyWith<$Res> {
  _$UpdateHashEventCopyWithImpl(this._self, this._then);

  final UpdateHashEvent _self;
  final $Res Function(UpdateHashEvent) _then;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hash = freezed,Object? bytesInFile = freezed,}) {
  return _then(UpdateHashEvent(
freezed == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as Uint8List?,bytesInFile: freezed == bytesInFile ? _self.bytesInFile : bytesInFile // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class UpdateAlgorithmEvent implements HashEvent {
  const UpdateAlgorithmEvent(this.algorithm);
  

 final  HashAlgorithm algorithm;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAlgorithmEventCopyWith<UpdateAlgorithmEvent> get copyWith => _$UpdateAlgorithmEventCopyWithImpl<UpdateAlgorithmEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAlgorithmEvent&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm));
}


@override
int get hashCode => Object.hash(runtimeType,algorithm);

@override
String toString() {
  return 'HashEvent.updateAlgorithm(algorithm: $algorithm)';
}


}

/// @nodoc
abstract mixin class $UpdateAlgorithmEventCopyWith<$Res> implements $HashEventCopyWith<$Res> {
  factory $UpdateAlgorithmEventCopyWith(UpdateAlgorithmEvent value, $Res Function(UpdateAlgorithmEvent) _then) = _$UpdateAlgorithmEventCopyWithImpl;
@useResult
$Res call({
 HashAlgorithm algorithm
});




}
/// @nodoc
class _$UpdateAlgorithmEventCopyWithImpl<$Res>
    implements $UpdateAlgorithmEventCopyWith<$Res> {
  _$UpdateAlgorithmEventCopyWithImpl(this._self, this._then);

  final UpdateAlgorithmEvent _self;
  final $Res Function(UpdateAlgorithmEvent) _then;

/// Create a copy of HashEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? algorithm = null,}) {
  return _then(UpdateAlgorithmEvent(
null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as HashAlgorithm,
  ));
}


}

// dart format on
