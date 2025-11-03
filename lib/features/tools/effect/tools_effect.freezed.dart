// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ToolsEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToolsEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ToolsEffect()';
}


}

/// @nodoc
class $ToolsEffectCopyWith<$Res>  {
$ToolsEffectCopyWith(ToolsEffect _, $Res Function(ToolsEffect) __);
}


/// Adds pattern-matching-related methods to [ToolsEffect].
extension ToolsEffectPatterns on ToolsEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchToolsEffect value)?  searchTools,TResult Function( SaveSelectedToolEffect value)?  saveSelectedTool,TResult Function( LoadSelectedToolEffect value)?  loadSelectedTool,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchToolsEffect() when searchTools != null:
return searchTools(_that);case SaveSelectedToolEffect() when saveSelectedTool != null:
return saveSelectedTool(_that);case LoadSelectedToolEffect() when loadSelectedTool != null:
return loadSelectedTool(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchToolsEffect value)  searchTools,required TResult Function( SaveSelectedToolEffect value)  saveSelectedTool,required TResult Function( LoadSelectedToolEffect value)  loadSelectedTool,}){
final _that = this;
switch (_that) {
case SearchToolsEffect():
return searchTools(_that);case SaveSelectedToolEffect():
return saveSelectedTool(_that);case LoadSelectedToolEffect():
return loadSelectedTool(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchToolsEffect value)?  searchTools,TResult? Function( SaveSelectedToolEffect value)?  saveSelectedTool,TResult? Function( LoadSelectedToolEffect value)?  loadSelectedTool,}){
final _that = this;
switch (_that) {
case SearchToolsEffect() when searchTools != null:
return searchTools(_that);case SaveSelectedToolEffect() when saveSelectedTool != null:
return saveSelectedTool(_that);case LoadSelectedToolEffect() when loadSelectedTool != null:
return loadSelectedTool(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query,  List<String> tools)?  searchTools,TResult Function( String toolId)?  saveSelectedTool,TResult Function()?  loadSelectedTool,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchToolsEffect() when searchTools != null:
return searchTools(_that.query,_that.tools);case SaveSelectedToolEffect() when saveSelectedTool != null:
return saveSelectedTool(_that.toolId);case LoadSelectedToolEffect() when loadSelectedTool != null:
return loadSelectedTool();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query,  List<String> tools)  searchTools,required TResult Function( String toolId)  saveSelectedTool,required TResult Function()  loadSelectedTool,}) {final _that = this;
switch (_that) {
case SearchToolsEffect():
return searchTools(_that.query,_that.tools);case SaveSelectedToolEffect():
return saveSelectedTool(_that.toolId);case LoadSelectedToolEffect():
return loadSelectedTool();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query,  List<String> tools)?  searchTools,TResult? Function( String toolId)?  saveSelectedTool,TResult? Function()?  loadSelectedTool,}) {final _that = this;
switch (_that) {
case SearchToolsEffect() when searchTools != null:
return searchTools(_that.query,_that.tools);case SaveSelectedToolEffect() when saveSelectedTool != null:
return saveSelectedTool(_that.toolId);case LoadSelectedToolEffect() when loadSelectedTool != null:
return loadSelectedTool();case _:
  return null;

}
}

}

/// @nodoc


class SearchToolsEffect implements ToolsEffect {
  const SearchToolsEffect({required this.query, required final  List<String> tools}): _tools = tools;
  

 final  String query;
 final  List<String> _tools;
 List<String> get tools {
  if (_tools is EqualUnmodifiableListView) return _tools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tools);
}


/// Create a copy of ToolsEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchToolsEffectCopyWith<SearchToolsEffect> get copyWith => _$SearchToolsEffectCopyWithImpl<SearchToolsEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchToolsEffect&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._tools, _tools));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_tools));

@override
String toString() {
  return 'ToolsEffect.searchTools(query: $query, tools: $tools)';
}


}

/// @nodoc
abstract mixin class $SearchToolsEffectCopyWith<$Res> implements $ToolsEffectCopyWith<$Res> {
  factory $SearchToolsEffectCopyWith(SearchToolsEffect value, $Res Function(SearchToolsEffect) _then) = _$SearchToolsEffectCopyWithImpl;
@useResult
$Res call({
 String query, List<String> tools
});




}
/// @nodoc
class _$SearchToolsEffectCopyWithImpl<$Res>
    implements $SearchToolsEffectCopyWith<$Res> {
  _$SearchToolsEffectCopyWithImpl(this._self, this._then);

  final SearchToolsEffect _self;
  final $Res Function(SearchToolsEffect) _then;

/// Create a copy of ToolsEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? tools = null,}) {
  return _then(SearchToolsEffect(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,tools: null == tools ? _self._tools : tools // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class SaveSelectedToolEffect implements ToolsEffect {
  const SaveSelectedToolEffect(this.toolId);
  

 final  String toolId;

/// Create a copy of ToolsEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveSelectedToolEffectCopyWith<SaveSelectedToolEffect> get copyWith => _$SaveSelectedToolEffectCopyWithImpl<SaveSelectedToolEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveSelectedToolEffect&&(identical(other.toolId, toolId) || other.toolId == toolId));
}


@override
int get hashCode => Object.hash(runtimeType,toolId);

@override
String toString() {
  return 'ToolsEffect.saveSelectedTool(toolId: $toolId)';
}


}

/// @nodoc
abstract mixin class $SaveSelectedToolEffectCopyWith<$Res> implements $ToolsEffectCopyWith<$Res> {
  factory $SaveSelectedToolEffectCopyWith(SaveSelectedToolEffect value, $Res Function(SaveSelectedToolEffect) _then) = _$SaveSelectedToolEffectCopyWithImpl;
@useResult
$Res call({
 String toolId
});




}
/// @nodoc
class _$SaveSelectedToolEffectCopyWithImpl<$Res>
    implements $SaveSelectedToolEffectCopyWith<$Res> {
  _$SaveSelectedToolEffectCopyWithImpl(this._self, this._then);

  final SaveSelectedToolEffect _self;
  final $Res Function(SaveSelectedToolEffect) _then;

/// Create a copy of ToolsEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? toolId = null,}) {
  return _then(SaveSelectedToolEffect(
null == toolId ? _self.toolId : toolId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadSelectedToolEffect implements ToolsEffect {
  const LoadSelectedToolEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSelectedToolEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ToolsEffect.loadSelectedTool()';
}


}




// dart format on
