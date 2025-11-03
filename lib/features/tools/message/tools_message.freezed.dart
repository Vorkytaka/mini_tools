// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ToolsMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToolsMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ToolsMessage()';
}


}

/// @nodoc
class $ToolsMessageCopyWith<$Res>  {
$ToolsMessageCopyWith(ToolsMessage _, $Res Function(ToolsMessage) __);
}


/// Adds pattern-matching-related methods to [ToolsMessage].
extension ToolsMessagePatterns on ToolsMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SelectToolMessage value)?  selectTool,TResult Function( UpdateQueryMessage value)?  updateQuery,TResult Function( UpdateSearchResultMessage value)?  updateSearchResult,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SelectToolMessage() when selectTool != null:
return selectTool(_that);case UpdateQueryMessage() when updateQuery != null:
return updateQuery(_that);case UpdateSearchResultMessage() when updateSearchResult != null:
return updateSearchResult(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SelectToolMessage value)  selectTool,required TResult Function( UpdateQueryMessage value)  updateQuery,required TResult Function( UpdateSearchResultMessage value)  updateSearchResult,}){
final _that = this;
switch (_that) {
case SelectToolMessage():
return selectTool(_that);case UpdateQueryMessage():
return updateQuery(_that);case UpdateSearchResultMessage():
return updateSearchResult(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SelectToolMessage value)?  selectTool,TResult? Function( UpdateQueryMessage value)?  updateQuery,TResult? Function( UpdateSearchResultMessage value)?  updateSearchResult,}){
final _that = this;
switch (_that) {
case SelectToolMessage() when selectTool != null:
return selectTool(_that);case UpdateQueryMessage() when updateQuery != null:
return updateQuery(_that);case UpdateSearchResultMessage() when updateSearchResult != null:
return updateSearchResult(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String toolId)?  selectTool,TResult Function( String query)?  updateQuery,TResult Function( List<String> result)?  updateSearchResult,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SelectToolMessage() when selectTool != null:
return selectTool(_that.toolId);case UpdateQueryMessage() when updateQuery != null:
return updateQuery(_that.query);case UpdateSearchResultMessage() when updateSearchResult != null:
return updateSearchResult(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String toolId)  selectTool,required TResult Function( String query)  updateQuery,required TResult Function( List<String> result)  updateSearchResult,}) {final _that = this;
switch (_that) {
case SelectToolMessage():
return selectTool(_that.toolId);case UpdateQueryMessage():
return updateQuery(_that.query);case UpdateSearchResultMessage():
return updateSearchResult(_that.result);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String toolId)?  selectTool,TResult? Function( String query)?  updateQuery,TResult? Function( List<String> result)?  updateSearchResult,}) {final _that = this;
switch (_that) {
case SelectToolMessage() when selectTool != null:
return selectTool(_that.toolId);case UpdateQueryMessage() when updateQuery != null:
return updateQuery(_that.query);case UpdateSearchResultMessage() when updateSearchResult != null:
return updateSearchResult(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class SelectToolMessage implements ToolsMessage {
  const SelectToolMessage(this.toolId);
  

 final  String toolId;

/// Create a copy of ToolsMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectToolMessageCopyWith<SelectToolMessage> get copyWith => _$SelectToolMessageCopyWithImpl<SelectToolMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectToolMessage&&(identical(other.toolId, toolId) || other.toolId == toolId));
}


@override
int get hashCode => Object.hash(runtimeType,toolId);

@override
String toString() {
  return 'ToolsMessage.selectTool(toolId: $toolId)';
}


}

/// @nodoc
abstract mixin class $SelectToolMessageCopyWith<$Res> implements $ToolsMessageCopyWith<$Res> {
  factory $SelectToolMessageCopyWith(SelectToolMessage value, $Res Function(SelectToolMessage) _then) = _$SelectToolMessageCopyWithImpl;
@useResult
$Res call({
 String toolId
});




}
/// @nodoc
class _$SelectToolMessageCopyWithImpl<$Res>
    implements $SelectToolMessageCopyWith<$Res> {
  _$SelectToolMessageCopyWithImpl(this._self, this._then);

  final SelectToolMessage _self;
  final $Res Function(SelectToolMessage) _then;

/// Create a copy of ToolsMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? toolId = null,}) {
  return _then(SelectToolMessage(
null == toolId ? _self.toolId : toolId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateQueryMessage implements ToolsMessage {
  const UpdateQueryMessage(this.query);
  

 final  String query;

/// Create a copy of ToolsMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateQueryMessageCopyWith<UpdateQueryMessage> get copyWith => _$UpdateQueryMessageCopyWithImpl<UpdateQueryMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateQueryMessage&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ToolsMessage.updateQuery(query: $query)';
}


}

/// @nodoc
abstract mixin class $UpdateQueryMessageCopyWith<$Res> implements $ToolsMessageCopyWith<$Res> {
  factory $UpdateQueryMessageCopyWith(UpdateQueryMessage value, $Res Function(UpdateQueryMessage) _then) = _$UpdateQueryMessageCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$UpdateQueryMessageCopyWithImpl<$Res>
    implements $UpdateQueryMessageCopyWith<$Res> {
  _$UpdateQueryMessageCopyWithImpl(this._self, this._then);

  final UpdateQueryMessage _self;
  final $Res Function(UpdateQueryMessage) _then;

/// Create a copy of ToolsMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(UpdateQueryMessage(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateSearchResultMessage implements ToolsMessage {
  const UpdateSearchResultMessage(final  List<String> result): _result = result;
  

 final  List<String> _result;
 List<String> get result {
  if (_result is EqualUnmodifiableListView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_result);
}


/// Create a copy of ToolsMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSearchResultMessageCopyWith<UpdateSearchResultMessage> get copyWith => _$UpdateSearchResultMessageCopyWithImpl<UpdateSearchResultMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSearchResultMessage&&const DeepCollectionEquality().equals(other._result, _result));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_result));

@override
String toString() {
  return 'ToolsMessage.updateSearchResult(result: $result)';
}


}

/// @nodoc
abstract mixin class $UpdateSearchResultMessageCopyWith<$Res> implements $ToolsMessageCopyWith<$Res> {
  factory $UpdateSearchResultMessageCopyWith(UpdateSearchResultMessage value, $Res Function(UpdateSearchResultMessage) _then) = _$UpdateSearchResultMessageCopyWithImpl;
@useResult
$Res call({
 List<String> result
});




}
/// @nodoc
class _$UpdateSearchResultMessageCopyWithImpl<$Res>
    implements $UpdateSearchResultMessageCopyWith<$Res> {
  _$UpdateSearchResultMessageCopyWithImpl(this._self, this._then);

  final UpdateSearchResultMessage _self;
  final $Res Function(UpdateSearchResultMessage) _then;

/// Create a copy of ToolsMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(UpdateSearchResultMessage(
null == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
