// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uuid_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UuidState {

 UuidVersion get version; String get namespace; String get name; int get count; List<String> get ids; bool get isLowerCase;
/// Create a copy of UuidState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UuidStateCopyWith<UuidState> get copyWith => _$UuidStateCopyWithImpl<UuidState>(this as UuidState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UuidState&&(identical(other.version, version) || other.version == version)&&(identical(other.namespace, namespace) || other.namespace == namespace)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.ids, ids)&&(identical(other.isLowerCase, isLowerCase) || other.isLowerCase == isLowerCase));
}


@override
int get hashCode => Object.hash(runtimeType,version,namespace,name,count,const DeepCollectionEquality().hash(ids),isLowerCase);

@override
String toString() {
  return 'UuidState(version: $version, namespace: $namespace, name: $name, count: $count, ids: $ids, isLowerCase: $isLowerCase)';
}


}

/// @nodoc
abstract mixin class $UuidStateCopyWith<$Res>  {
  factory $UuidStateCopyWith(UuidState value, $Res Function(UuidState) _then) = _$UuidStateCopyWithImpl;
@useResult
$Res call({
 UuidVersion version, String namespace, String name, int count, List<String> ids, bool isLowerCase
});




}
/// @nodoc
class _$UuidStateCopyWithImpl<$Res>
    implements $UuidStateCopyWith<$Res> {
  _$UuidStateCopyWithImpl(this._self, this._then);

  final UuidState _self;
  final $Res Function(UuidState) _then;

/// Create a copy of UuidState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? namespace = null,Object? name = null,Object? count = null,Object? ids = null,Object? isLowerCase = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as UuidVersion,namespace: null == namespace ? _self.namespace : namespace // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,ids: null == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>,isLowerCase: null == isLowerCase ? _self.isLowerCase : isLowerCase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UuidState].
extension UuidStatePatterns on UuidState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UuidState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UuidState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UuidState value)  $default,){
final _that = this;
switch (_that) {
case _UuidState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UuidState value)?  $default,){
final _that = this;
switch (_that) {
case _UuidState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UuidVersion version,  String namespace,  String name,  int count,  List<String> ids,  bool isLowerCase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UuidState() when $default != null:
return $default(_that.version,_that.namespace,_that.name,_that.count,_that.ids,_that.isLowerCase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UuidVersion version,  String namespace,  String name,  int count,  List<String> ids,  bool isLowerCase)  $default,) {final _that = this;
switch (_that) {
case _UuidState():
return $default(_that.version,_that.namespace,_that.name,_that.count,_that.ids,_that.isLowerCase);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UuidVersion version,  String namespace,  String name,  int count,  List<String> ids,  bool isLowerCase)?  $default,) {final _that = this;
switch (_that) {
case _UuidState() when $default != null:
return $default(_that.version,_that.namespace,_that.name,_that.count,_that.ids,_that.isLowerCase);case _:
  return null;

}
}

}

/// @nodoc


class _UuidState implements UuidState {
  const _UuidState({required this.version, required this.namespace, required this.name, required this.count, required final  List<String> ids, required this.isLowerCase}): assert(count > 0),_ids = ids;
  

@override final  UuidVersion version;
@override final  String namespace;
@override final  String name;
@override final  int count;
 final  List<String> _ids;
@override List<String> get ids {
  if (_ids is EqualUnmodifiableListView) return _ids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ids);
}

@override final  bool isLowerCase;

/// Create a copy of UuidState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UuidStateCopyWith<_UuidState> get copyWith => __$UuidStateCopyWithImpl<_UuidState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UuidState&&(identical(other.version, version) || other.version == version)&&(identical(other.namespace, namespace) || other.namespace == namespace)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._ids, _ids)&&(identical(other.isLowerCase, isLowerCase) || other.isLowerCase == isLowerCase));
}


@override
int get hashCode => Object.hash(runtimeType,version,namespace,name,count,const DeepCollectionEquality().hash(_ids),isLowerCase);

@override
String toString() {
  return 'UuidState(version: $version, namespace: $namespace, name: $name, count: $count, ids: $ids, isLowerCase: $isLowerCase)';
}


}

/// @nodoc
abstract mixin class _$UuidStateCopyWith<$Res> implements $UuidStateCopyWith<$Res> {
  factory _$UuidStateCopyWith(_UuidState value, $Res Function(_UuidState) _then) = __$UuidStateCopyWithImpl;
@override @useResult
$Res call({
 UuidVersion version, String namespace, String name, int count, List<String> ids, bool isLowerCase
});




}
/// @nodoc
class __$UuidStateCopyWithImpl<$Res>
    implements _$UuidStateCopyWith<$Res> {
  __$UuidStateCopyWithImpl(this._self, this._then);

  final _UuidState _self;
  final $Res Function(_UuidState) _then;

/// Create a copy of UuidState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? namespace = null,Object? name = null,Object? count = null,Object? ids = null,Object? isLowerCase = null,}) {
  return _then(_UuidState(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as UuidVersion,namespace: null == namespace ? _self.namespace : namespace // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,ids: null == ids ? _self._ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>,isLowerCase: null == isLowerCase ? _self.isLowerCase : isLowerCase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
