// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ToolsState {

 String get selectedToolId; List<String> get toolIds; String get searchQuery; List<String> get searchResult;
/// Create a copy of ToolsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToolsStateCopyWith<ToolsState> get copyWith => _$ToolsStateCopyWithImpl<ToolsState>(this as ToolsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToolsState&&(identical(other.selectedToolId, selectedToolId) || other.selectedToolId == selectedToolId)&&const DeepCollectionEquality().equals(other.toolIds, toolIds)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.searchResult, searchResult));
}


@override
int get hashCode => Object.hash(runtimeType,selectedToolId,const DeepCollectionEquality().hash(toolIds),searchQuery,const DeepCollectionEquality().hash(searchResult));

@override
String toString() {
  return 'ToolsState(selectedToolId: $selectedToolId, toolIds: $toolIds, searchQuery: $searchQuery, searchResult: $searchResult)';
}


}

/// @nodoc
abstract mixin class $ToolsStateCopyWith<$Res>  {
  factory $ToolsStateCopyWith(ToolsState value, $Res Function(ToolsState) _then) = _$ToolsStateCopyWithImpl;
@useResult
$Res call({
 String selectedToolId, List<String> toolIds, String searchQuery, List<String> searchResult
});




}
/// @nodoc
class _$ToolsStateCopyWithImpl<$Res>
    implements $ToolsStateCopyWith<$Res> {
  _$ToolsStateCopyWithImpl(this._self, this._then);

  final ToolsState _self;
  final $Res Function(ToolsState) _then;

/// Create a copy of ToolsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedToolId = null,Object? toolIds = null,Object? searchQuery = null,Object? searchResult = null,}) {
  return _then(_self.copyWith(
selectedToolId: null == selectedToolId ? _self.selectedToolId : selectedToolId // ignore: cast_nullable_to_non_nullable
as String,toolIds: null == toolIds ? _self.toolIds : toolIds // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ToolsState].
extension ToolsStatePatterns on ToolsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToolsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToolsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToolsState value)  $default,){
final _that = this;
switch (_that) {
case _ToolsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToolsState value)?  $default,){
final _that = this;
switch (_that) {
case _ToolsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selectedToolId,  List<String> toolIds,  String searchQuery,  List<String> searchResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToolsState() when $default != null:
return $default(_that.selectedToolId,_that.toolIds,_that.searchQuery,_that.searchResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selectedToolId,  List<String> toolIds,  String searchQuery,  List<String> searchResult)  $default,) {final _that = this;
switch (_that) {
case _ToolsState():
return $default(_that.selectedToolId,_that.toolIds,_that.searchQuery,_that.searchResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selectedToolId,  List<String> toolIds,  String searchQuery,  List<String> searchResult)?  $default,) {final _that = this;
switch (_that) {
case _ToolsState() when $default != null:
return $default(_that.selectedToolId,_that.toolIds,_that.searchQuery,_that.searchResult);case _:
  return null;

}
}

}

/// @nodoc


class _ToolsState implements ToolsState {
  const _ToolsState({required this.selectedToolId, required final  List<String> toolIds, required this.searchQuery, required final  List<String> searchResult}): _toolIds = toolIds,_searchResult = searchResult;
  

@override final  String selectedToolId;
 final  List<String> _toolIds;
@override List<String> get toolIds {
  if (_toolIds is EqualUnmodifiableListView) return _toolIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_toolIds);
}

@override final  String searchQuery;
 final  List<String> _searchResult;
@override List<String> get searchResult {
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResult);
}


/// Create a copy of ToolsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToolsStateCopyWith<_ToolsState> get copyWith => __$ToolsStateCopyWithImpl<_ToolsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToolsState&&(identical(other.selectedToolId, selectedToolId) || other.selectedToolId == selectedToolId)&&const DeepCollectionEquality().equals(other._toolIds, _toolIds)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult));
}


@override
int get hashCode => Object.hash(runtimeType,selectedToolId,const DeepCollectionEquality().hash(_toolIds),searchQuery,const DeepCollectionEquality().hash(_searchResult));

@override
String toString() {
  return 'ToolsState(selectedToolId: $selectedToolId, toolIds: $toolIds, searchQuery: $searchQuery, searchResult: $searchResult)';
}


}

/// @nodoc
abstract mixin class _$ToolsStateCopyWith<$Res> implements $ToolsStateCopyWith<$Res> {
  factory _$ToolsStateCopyWith(_ToolsState value, $Res Function(_ToolsState) _then) = __$ToolsStateCopyWithImpl;
@override @useResult
$Res call({
 String selectedToolId, List<String> toolIds, String searchQuery, List<String> searchResult
});




}
/// @nodoc
class __$ToolsStateCopyWithImpl<$Res>
    implements _$ToolsStateCopyWith<$Res> {
  __$ToolsStateCopyWithImpl(this._self, this._then);

  final _ToolsState _self;
  final $Res Function(_ToolsState) _then;

/// Create a copy of ToolsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedToolId = null,Object? toolIds = null,Object? searchQuery = null,Object? searchResult = null,}) {
  return _then(_ToolsState(
selectedToolId: null == selectedToolId ? _self.selectedToolId : selectedToolId // ignore: cast_nullable_to_non_nullable
as String,toolIds: null == toolIds ? _self._toolIds : toolIds // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,searchResult: null == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
