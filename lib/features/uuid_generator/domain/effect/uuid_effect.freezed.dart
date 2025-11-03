// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uuid_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UuidEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UuidEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UuidEffect()';
}


}

/// @nodoc
class $UuidEffectCopyWith<$Res>  {
$UuidEffectCopyWith(UuidEffect _, $Res Function(UuidEffect) __);
}


/// Adds pattern-matching-related methods to [UuidEffect].
extension UuidEffectPatterns on UuidEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitEffect value)?  init,TResult Function( GenerateEffect value)?  generate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitEffect() when init != null:
return init(_that);case GenerateEffect() when generate != null:
return generate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitEffect value)  init,required TResult Function( GenerateEffect value)  generate,}){
final _that = this;
switch (_that) {
case InitEffect():
return init(_that);case GenerateEffect():
return generate(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitEffect value)?  init,TResult? Function( GenerateEffect value)?  generate,}){
final _that = this;
switch (_that) {
case InitEffect() when init != null:
return init(_that);case GenerateEffect() when generate != null:
return generate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( UuidVersion version,  int count,  String namespace,  String name)?  generate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitEffect() when init != null:
return init();case GenerateEffect() when generate != null:
return generate(_that.version,_that.count,_that.namespace,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( UuidVersion version,  int count,  String namespace,  String name)  generate,}) {final _that = this;
switch (_that) {
case InitEffect():
return init();case GenerateEffect():
return generate(_that.version,_that.count,_that.namespace,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( UuidVersion version,  int count,  String namespace,  String name)?  generate,}) {final _that = this;
switch (_that) {
case InitEffect() when init != null:
return init();case GenerateEffect() when generate != null:
return generate(_that.version,_that.count,_that.namespace,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class InitEffect implements UuidEffect {
  const InitEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UuidEffect.init()';
}


}




/// @nodoc


class GenerateEffect implements UuidEffect {
  const GenerateEffect({required this.version, required this.count, required this.namespace, required this.name});
  

 final  UuidVersion version;
 final  int count;
 final  String namespace;
 final  String name;

/// Create a copy of UuidEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateEffectCopyWith<GenerateEffect> get copyWith => _$GenerateEffectCopyWithImpl<GenerateEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateEffect&&(identical(other.version, version) || other.version == version)&&(identical(other.count, count) || other.count == count)&&(identical(other.namespace, namespace) || other.namespace == namespace)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,version,count,namespace,name);

@override
String toString() {
  return 'UuidEffect.generate(version: $version, count: $count, namespace: $namespace, name: $name)';
}


}

/// @nodoc
abstract mixin class $GenerateEffectCopyWith<$Res> implements $UuidEffectCopyWith<$Res> {
  factory $GenerateEffectCopyWith(GenerateEffect value, $Res Function(GenerateEffect) _then) = _$GenerateEffectCopyWithImpl;
@useResult
$Res call({
 UuidVersion version, int count, String namespace, String name
});




}
/// @nodoc
class _$GenerateEffectCopyWithImpl<$Res>
    implements $GenerateEffectCopyWith<$Res> {
  _$GenerateEffectCopyWithImpl(this._self, this._then);

  final GenerateEffect _self;
  final $Res Function(GenerateEffect) _then;

/// Create a copy of UuidEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? version = null,Object? count = null,Object? namespace = null,Object? name = null,}) {
  return _then(GenerateEffect(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as UuidVersion,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,namespace: null == namespace ? _self.namespace : namespace // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
