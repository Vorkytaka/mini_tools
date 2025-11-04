// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hash_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SyncHashEffect {

 String get text; HashAlgorithm get algorithm;
/// Create a copy of SyncHashEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncHashEffectCopyWith<SyncHashEffect> get copyWith => _$SyncHashEffectCopyWithImpl<SyncHashEffect>(this as SyncHashEffect, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncHashEffect&&(identical(other.text, text) || other.text == text)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm));
}


@override
int get hashCode => Object.hash(runtimeType,text,algorithm);

@override
String toString() {
  return 'SyncHashEffect(text: $text, algorithm: $algorithm)';
}


}

/// @nodoc
abstract mixin class $SyncHashEffectCopyWith<$Res>  {
  factory $SyncHashEffectCopyWith(SyncHashEffect value, $Res Function(SyncHashEffect) _then) = _$SyncHashEffectCopyWithImpl;
@useResult
$Res call({
 String text, HashAlgorithm algorithm
});




}
/// @nodoc
class _$SyncHashEffectCopyWithImpl<$Res>
    implements $SyncHashEffectCopyWith<$Res> {
  _$SyncHashEffectCopyWithImpl(this._self, this._then);

  final SyncHashEffect _self;
  final $Res Function(SyncHashEffect) _then;

/// Create a copy of SyncHashEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? algorithm = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as HashAlgorithm,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncHashEffect].
extension SyncHashEffectPatterns on SyncHashEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CountTextHashEffect value)?  textHash,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CountTextHashEffect() when textHash != null:
return textHash(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CountTextHashEffect value)  textHash,}){
final _that = this;
switch (_that) {
case CountTextHashEffect():
return textHash(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CountTextHashEffect value)?  textHash,}){
final _that = this;
switch (_that) {
case CountTextHashEffect() when textHash != null:
return textHash(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text,  HashAlgorithm algorithm)?  textHash,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CountTextHashEffect() when textHash != null:
return textHash(_that.text,_that.algorithm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text,  HashAlgorithm algorithm)  textHash,}) {final _that = this;
switch (_that) {
case CountTextHashEffect():
return textHash(_that.text,_that.algorithm);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text,  HashAlgorithm algorithm)?  textHash,}) {final _that = this;
switch (_that) {
case CountTextHashEffect() when textHash != null:
return textHash(_that.text,_that.algorithm);case _:
  return null;

}
}

}

/// @nodoc


class CountTextHashEffect implements SyncHashEffect {
  const CountTextHashEffect(this.text, this.algorithm);
  

@override final  String text;
@override final  HashAlgorithm algorithm;

/// Create a copy of SyncHashEffect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountTextHashEffectCopyWith<CountTextHashEffect> get copyWith => _$CountTextHashEffectCopyWithImpl<CountTextHashEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountTextHashEffect&&(identical(other.text, text) || other.text == text)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm));
}


@override
int get hashCode => Object.hash(runtimeType,text,algorithm);

@override
String toString() {
  return 'SyncHashEffect.textHash(text: $text, algorithm: $algorithm)';
}


}

/// @nodoc
abstract mixin class $CountTextHashEffectCopyWith<$Res> implements $SyncHashEffectCopyWith<$Res> {
  factory $CountTextHashEffectCopyWith(CountTextHashEffect value, $Res Function(CountTextHashEffect) _then) = _$CountTextHashEffectCopyWithImpl;
@override @useResult
$Res call({
 String text, HashAlgorithm algorithm
});




}
/// @nodoc
class _$CountTextHashEffectCopyWithImpl<$Res>
    implements $CountTextHashEffectCopyWith<$Res> {
  _$CountTextHashEffectCopyWithImpl(this._self, this._then);

  final CountTextHashEffect _self;
  final $Res Function(CountTextHashEffect) _then;

/// Create a copy of SyncHashEffect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? algorithm = null,}) {
  return _then(CountTextHashEffect(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as HashAlgorithm,
  ));
}


}

/// @nodoc
mixin _$IsolateHashEffect {

 String get path; HashAlgorithm get algorithm;
/// Create a copy of IsolateHashEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IsolateHashEffectCopyWith<IsolateHashEffect> get copyWith => _$IsolateHashEffectCopyWithImpl<IsolateHashEffect>(this as IsolateHashEffect, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsolateHashEffect&&(identical(other.path, path) || other.path == path)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm));
}


@override
int get hashCode => Object.hash(runtimeType,path,algorithm);

@override
String toString() {
  return 'IsolateHashEffect(path: $path, algorithm: $algorithm)';
}


}

/// @nodoc
abstract mixin class $IsolateHashEffectCopyWith<$Res>  {
  factory $IsolateHashEffectCopyWith(IsolateHashEffect value, $Res Function(IsolateHashEffect) _then) = _$IsolateHashEffectCopyWithImpl;
@useResult
$Res call({
 String path, HashAlgorithm algorithm
});




}
/// @nodoc
class _$IsolateHashEffectCopyWithImpl<$Res>
    implements $IsolateHashEffectCopyWith<$Res> {
  _$IsolateHashEffectCopyWithImpl(this._self, this._then);

  final IsolateHashEffect _self;
  final $Res Function(IsolateHashEffect) _then;

/// Create a copy of IsolateHashEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? algorithm = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as HashAlgorithm,
  ));
}

}


/// Adds pattern-matching-related methods to [IsolateHashEffect].
extension IsolateHashEffectPatterns on IsolateHashEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CountFileHashEffect value)?  fileHash,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CountFileHashEffect() when fileHash != null:
return fileHash(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CountFileHashEffect value)  fileHash,}){
final _that = this;
switch (_that) {
case CountFileHashEffect():
return fileHash(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CountFileHashEffect value)?  fileHash,}){
final _that = this;
switch (_that) {
case CountFileHashEffect() when fileHash != null:
return fileHash(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String path,  HashAlgorithm algorithm)?  fileHash,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CountFileHashEffect() when fileHash != null:
return fileHash(_that.path,_that.algorithm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String path,  HashAlgorithm algorithm)  fileHash,}) {final _that = this;
switch (_that) {
case CountFileHashEffect():
return fileHash(_that.path,_that.algorithm);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String path,  HashAlgorithm algorithm)?  fileHash,}) {final _that = this;
switch (_that) {
case CountFileHashEffect() when fileHash != null:
return fileHash(_that.path,_that.algorithm);case _:
  return null;

}
}

}

/// @nodoc


class CountFileHashEffect implements IsolateHashEffect {
  const CountFileHashEffect(this.path, this.algorithm);
  

@override final  String path;
@override final  HashAlgorithm algorithm;

/// Create a copy of IsolateHashEffect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountFileHashEffectCopyWith<CountFileHashEffect> get copyWith => _$CountFileHashEffectCopyWithImpl<CountFileHashEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountFileHashEffect&&(identical(other.path, path) || other.path == path)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm));
}


@override
int get hashCode => Object.hash(runtimeType,path,algorithm);

@override
String toString() {
  return 'IsolateHashEffect.fileHash(path: $path, algorithm: $algorithm)';
}


}

/// @nodoc
abstract mixin class $CountFileHashEffectCopyWith<$Res> implements $IsolateHashEffectCopyWith<$Res> {
  factory $CountFileHashEffectCopyWith(CountFileHashEffect value, $Res Function(CountFileHashEffect) _then) = _$CountFileHashEffectCopyWithImpl;
@override @useResult
$Res call({
 String path, HashAlgorithm algorithm
});




}
/// @nodoc
class _$CountFileHashEffectCopyWithImpl<$Res>
    implements $CountFileHashEffectCopyWith<$Res> {
  _$CountFileHashEffectCopyWithImpl(this._self, this._then);

  final CountFileHashEffect _self;
  final $Res Function(CountFileHashEffect) _then;

/// Create a copy of IsolateHashEffect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? algorithm = null,}) {
  return _then(CountFileHashEffect(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as HashAlgorithm,
  ));
}


}

// dart format on
