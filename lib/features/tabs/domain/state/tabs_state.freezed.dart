// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TabsState {

 List<TabItem> get tabs; String? get activeTabId;
/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabsStateCopyWith<TabsState> get copyWith => _$TabsStateCopyWithImpl<TabsState>(this as TabsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsState&&const DeepCollectionEquality().equals(other.tabs, tabs)&&(identical(other.activeTabId, activeTabId) || other.activeTabId == activeTabId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tabs),activeTabId);

@override
String toString() {
  return 'TabsState(tabs: $tabs, activeTabId: $activeTabId)';
}


}

/// @nodoc
abstract mixin class $TabsStateCopyWith<$Res>  {
  factory $TabsStateCopyWith(TabsState value, $Res Function(TabsState) _then) = _$TabsStateCopyWithImpl;
@useResult
$Res call({
 List<TabItem> tabs, String? activeTabId
});




}
/// @nodoc
class _$TabsStateCopyWithImpl<$Res>
    implements $TabsStateCopyWith<$Res> {
  _$TabsStateCopyWithImpl(this._self, this._then);

  final TabsState _self;
  final $Res Function(TabsState) _then;

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tabs = null,Object? activeTabId = freezed,}) {
  return _then(_self.copyWith(
tabs: null == tabs ? _self.tabs : tabs // ignore: cast_nullable_to_non_nullable
as List<TabItem>,activeTabId: freezed == activeTabId ? _self.activeTabId : activeTabId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TabsState].
extension TabsStatePatterns on TabsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TabsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TabsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TabsState value)  $default,){
final _that = this;
switch (_that) {
case _TabsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TabsState value)?  $default,){
final _that = this;
switch (_that) {
case _TabsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TabItem> tabs,  String? activeTabId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TabsState() when $default != null:
return $default(_that.tabs,_that.activeTabId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TabItem> tabs,  String? activeTabId)  $default,) {final _that = this;
switch (_that) {
case _TabsState():
return $default(_that.tabs,_that.activeTabId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TabItem> tabs,  String? activeTabId)?  $default,) {final _that = this;
switch (_that) {
case _TabsState() when $default != null:
return $default(_that.tabs,_that.activeTabId);case _:
  return null;

}
}

}

/// @nodoc


class _TabsState implements TabsState {
  const _TabsState({required final  List<TabItem> tabs, this.activeTabId}): _tabs = tabs;
  

 final  List<TabItem> _tabs;
@override List<TabItem> get tabs {
  if (_tabs is EqualUnmodifiableListView) return _tabs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tabs);
}

@override final  String? activeTabId;

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabsStateCopyWith<_TabsState> get copyWith => __$TabsStateCopyWithImpl<_TabsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabsState&&const DeepCollectionEquality().equals(other._tabs, _tabs)&&(identical(other.activeTabId, activeTabId) || other.activeTabId == activeTabId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tabs),activeTabId);

@override
String toString() {
  return 'TabsState(tabs: $tabs, activeTabId: $activeTabId)';
}


}

/// @nodoc
abstract mixin class _$TabsStateCopyWith<$Res> implements $TabsStateCopyWith<$Res> {
  factory _$TabsStateCopyWith(_TabsState value, $Res Function(_TabsState) _then) = __$TabsStateCopyWithImpl;
@override @useResult
$Res call({
 List<TabItem> tabs, String? activeTabId
});




}
/// @nodoc
class __$TabsStateCopyWithImpl<$Res>
    implements _$TabsStateCopyWith<$Res> {
  __$TabsStateCopyWithImpl(this._self, this._then);

  final _TabsState _self;
  final $Res Function(_TabsState) _then;

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tabs = null,Object? activeTabId = freezed,}) {
  return _then(_TabsState(
tabs: null == tabs ? _self._tabs : tabs // ignore: cast_nullable_to_non_nullable
as List<TabItem>,activeTabId: freezed == activeTabId ? _self.activeTabId : activeTabId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$TabItem {

 String get id; ToolInstance get instance; ToolDescriptor get descriptor; String? get title;
/// Create a copy of TabItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabItemCopyWith<TabItem> get copyWith => _$TabItemCopyWithImpl<TabItem>(this as TabItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabItem&&(identical(other.id, id) || other.id == id)&&(identical(other.instance, instance) || other.instance == instance)&&(identical(other.descriptor, descriptor) || other.descriptor == descriptor)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,id,instance,descriptor,title);

@override
String toString() {
  return 'TabItem(id: $id, instance: $instance, descriptor: $descriptor, title: $title)';
}


}

/// @nodoc
abstract mixin class $TabItemCopyWith<$Res>  {
  factory $TabItemCopyWith(TabItem value, $Res Function(TabItem) _then) = _$TabItemCopyWithImpl;
@useResult
$Res call({
 String id, ToolInstance instance, ToolDescriptor descriptor, String? title
});




}
/// @nodoc
class _$TabItemCopyWithImpl<$Res>
    implements $TabItemCopyWith<$Res> {
  _$TabItemCopyWithImpl(this._self, this._then);

  final TabItem _self;
  final $Res Function(TabItem) _then;

/// Create a copy of TabItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? instance = null,Object? descriptor = null,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,instance: null == instance ? _self.instance : instance // ignore: cast_nullable_to_non_nullable
as ToolInstance,descriptor: null == descriptor ? _self.descriptor : descriptor // ignore: cast_nullable_to_non_nullable
as ToolDescriptor,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TabItem].
extension TabItemPatterns on TabItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TabItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TabItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TabItem value)  $default,){
final _that = this;
switch (_that) {
case _TabItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TabItem value)?  $default,){
final _that = this;
switch (_that) {
case _TabItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ToolInstance instance,  ToolDescriptor descriptor,  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TabItem() when $default != null:
return $default(_that.id,_that.instance,_that.descriptor,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ToolInstance instance,  ToolDescriptor descriptor,  String? title)  $default,) {final _that = this;
switch (_that) {
case _TabItem():
return $default(_that.id,_that.instance,_that.descriptor,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ToolInstance instance,  ToolDescriptor descriptor,  String? title)?  $default,) {final _that = this;
switch (_that) {
case _TabItem() when $default != null:
return $default(_that.id,_that.instance,_that.descriptor,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _TabItem implements TabItem {
  const _TabItem({required this.id, required this.instance, required this.descriptor, this.title});
  

@override final  String id;
@override final  ToolInstance instance;
@override final  ToolDescriptor descriptor;
@override final  String? title;

/// Create a copy of TabItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabItemCopyWith<_TabItem> get copyWith => __$TabItemCopyWithImpl<_TabItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabItem&&(identical(other.id, id) || other.id == id)&&(identical(other.instance, instance) || other.instance == instance)&&(identical(other.descriptor, descriptor) || other.descriptor == descriptor)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,id,instance,descriptor,title);

@override
String toString() {
  return 'TabItem(id: $id, instance: $instance, descriptor: $descriptor, title: $title)';
}


}

/// @nodoc
abstract mixin class _$TabItemCopyWith<$Res> implements $TabItemCopyWith<$Res> {
  factory _$TabItemCopyWith(_TabItem value, $Res Function(_TabItem) _then) = __$TabItemCopyWithImpl;
@override @useResult
$Res call({
 String id, ToolInstance instance, ToolDescriptor descriptor, String? title
});




}
/// @nodoc
class __$TabItemCopyWithImpl<$Res>
    implements _$TabItemCopyWith<$Res> {
  __$TabItemCopyWithImpl(this._self, this._then);

  final _TabItem _self;
  final $Res Function(_TabItem) _then;

/// Create a copy of TabItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? instance = null,Object? descriptor = null,Object? title = freezed,}) {
  return _then(_TabItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,instance: null == instance ? _self.instance : instance // ignore: cast_nullable_to_non_nullable
as ToolInstance,descriptor: null == descriptor ? _self.descriptor : descriptor // ignore: cast_nullable_to_non_nullable
as ToolDescriptor,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
