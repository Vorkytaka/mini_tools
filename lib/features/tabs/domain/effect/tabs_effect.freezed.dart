// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabs_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TabsEffect {

 String get toolId;
/// Create a copy of TabsEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabsEffectCopyWith<TabsEffect> get copyWith => _$TabsEffectCopyWithImpl<TabsEffect>(this as TabsEffect, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsEffect&&(identical(other.toolId, toolId) || other.toolId == toolId));
}


@override
int get hashCode => Object.hash(runtimeType,toolId);

@override
String toString() {
  return 'TabsEffect(toolId: $toolId)';
}


}

/// @nodoc
abstract mixin class $TabsEffectCopyWith<$Res>  {
  factory $TabsEffectCopyWith(TabsEffect value, $Res Function(TabsEffect) _then) = _$TabsEffectCopyWithImpl;
@useResult
$Res call({
 String toolId
});




}
/// @nodoc
class _$TabsEffectCopyWithImpl<$Res>
    implements $TabsEffectCopyWith<$Res> {
  _$TabsEffectCopyWithImpl(this._self, this._then);

  final TabsEffect _self;
  final $Res Function(TabsEffect) _then;

/// Create a copy of TabsEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? toolId = null,}) {
  return _then(_self.copyWith(
toolId: null == toolId ? _self.toolId : toolId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TabsEffect].
extension TabsEffectPatterns on TabsEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateTabEffect value)?  createTab,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateTabEffect() when createTab != null:
return createTab(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateTabEffect value)  createTab,}){
final _that = this;
switch (_that) {
case CreateTabEffect():
return createTab(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateTabEffect value)?  createTab,}){
final _that = this;
switch (_that) {
case CreateTabEffect() when createTab != null:
return createTab(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String toolId)?  createTab,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateTabEffect() when createTab != null:
return createTab(_that.toolId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String toolId)  createTab,}) {final _that = this;
switch (_that) {
case CreateTabEffect():
return createTab(_that.toolId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String toolId)?  createTab,}) {final _that = this;
switch (_that) {
case CreateTabEffect() when createTab != null:
return createTab(_that.toolId);case _:
  return null;

}
}

}

/// @nodoc


class CreateTabEffect implements TabsEffect {
  const CreateTabEffect({required this.toolId});
  

@override final  String toolId;

/// Create a copy of TabsEffect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTabEffectCopyWith<CreateTabEffect> get copyWith => _$CreateTabEffectCopyWithImpl<CreateTabEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTabEffect&&(identical(other.toolId, toolId) || other.toolId == toolId));
}


@override
int get hashCode => Object.hash(runtimeType,toolId);

@override
String toString() {
  return 'TabsEffect.createTab(toolId: $toolId)';
}


}

/// @nodoc
abstract mixin class $CreateTabEffectCopyWith<$Res> implements $TabsEffectCopyWith<$Res> {
  factory $CreateTabEffectCopyWith(CreateTabEffect value, $Res Function(CreateTabEffect) _then) = _$CreateTabEffectCopyWithImpl;
@override @useResult
$Res call({
 String toolId
});




}
/// @nodoc
class _$CreateTabEffectCopyWithImpl<$Res>
    implements $CreateTabEffectCopyWith<$Res> {
  _$CreateTabEffectCopyWithImpl(this._self, this._then);

  final CreateTabEffect _self;
  final $Res Function(CreateTabEffect) _then;

/// Create a copy of TabsEffect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? toolId = null,}) {
  return _then(CreateTabEffect(
toolId: null == toolId ? _self.toolId : toolId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
