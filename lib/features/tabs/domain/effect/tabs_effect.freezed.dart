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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TabsEffect()';
}


}

/// @nodoc
class $TabsEffectCopyWith<$Res>  {
$TabsEffectCopyWith(TabsEffect _, $Res Function(TabsEffect) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateTabEffect value)?  createTab,TResult Function( DisposeToolEffect value)?  disposeTool,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateTabEffect() when createTab != null:
return createTab(_that);case DisposeToolEffect() when disposeTool != null:
return disposeTool(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateTabEffect value)  createTab,required TResult Function( DisposeToolEffect value)  disposeTool,}){
final _that = this;
switch (_that) {
case CreateTabEffect():
return createTab(_that);case DisposeToolEffect():
return disposeTool(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateTabEffect value)?  createTab,TResult? Function( DisposeToolEffect value)?  disposeTool,}){
final _that = this;
switch (_that) {
case CreateTabEffect() when createTab != null:
return createTab(_that);case DisposeToolEffect() when disposeTool != null:
return disposeTool(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String toolId)?  createTab,TResult Function( ToolInstance tool)?  disposeTool,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateTabEffect() when createTab != null:
return createTab(_that.toolId);case DisposeToolEffect() when disposeTool != null:
return disposeTool(_that.tool);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String toolId)  createTab,required TResult Function( ToolInstance tool)  disposeTool,}) {final _that = this;
switch (_that) {
case CreateTabEffect():
return createTab(_that.toolId);case DisposeToolEffect():
return disposeTool(_that.tool);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String toolId)?  createTab,TResult? Function( ToolInstance tool)?  disposeTool,}) {final _that = this;
switch (_that) {
case CreateTabEffect() when createTab != null:
return createTab(_that.toolId);case DisposeToolEffect() when disposeTool != null:
return disposeTool(_that.tool);case _:
  return null;

}
}

}

/// @nodoc


class CreateTabEffect implements TabsEffect {
  const CreateTabEffect({required this.toolId});
  

 final  String toolId;

/// Create a copy of TabsEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
@useResult
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
@pragma('vm:prefer-inline') $Res call({Object? toolId = null,}) {
  return _then(CreateTabEffect(
toolId: null == toolId ? _self.toolId : toolId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DisposeToolEffect implements TabsEffect {
  const DisposeToolEffect({required this.tool});
  

 final  ToolInstance tool;

/// Create a copy of TabsEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisposeToolEffectCopyWith<DisposeToolEffect> get copyWith => _$DisposeToolEffectCopyWithImpl<DisposeToolEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisposeToolEffect&&(identical(other.tool, tool) || other.tool == tool));
}


@override
int get hashCode => Object.hash(runtimeType,tool);

@override
String toString() {
  return 'TabsEffect.disposeTool(tool: $tool)';
}


}

/// @nodoc
abstract mixin class $DisposeToolEffectCopyWith<$Res> implements $TabsEffectCopyWith<$Res> {
  factory $DisposeToolEffectCopyWith(DisposeToolEffect value, $Res Function(DisposeToolEffect) _then) = _$DisposeToolEffectCopyWithImpl;
@useResult
$Res call({
 ToolInstance tool
});




}
/// @nodoc
class _$DisposeToolEffectCopyWithImpl<$Res>
    implements $DisposeToolEffectCopyWith<$Res> {
  _$DisposeToolEffectCopyWithImpl(this._self, this._then);

  final DisposeToolEffect _self;
  final $Res Function(DisposeToolEffect) _then;

/// Create a copy of TabsEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tool = null,}) {
  return _then(DisposeToolEffect(
tool: null == tool ? _self.tool : tool // ignore: cast_nullable_to_non_nullable
as ToolInstance,
  ));
}


}

// dart format on
