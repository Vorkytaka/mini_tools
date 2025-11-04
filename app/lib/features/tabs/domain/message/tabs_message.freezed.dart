// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabs_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TabsMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TabsMessage()';
}


}

/// @nodoc
class $TabsMessageCopyWith<$Res>  {
$TabsMessageCopyWith(TabsMessage _, $Res Function(TabsMessage) __);
}


/// Adds pattern-matching-related methods to [TabsMessage].
extension TabsMessagePatterns on TabsMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateTabMessage value)?  createTab,TResult Function( CreatedTabMessage value)?  createdTab,TResult Function( DeleteTabMessage value)?  deleteTab,TResult Function( SelectTabMessage value)?  selectTab,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateTabMessage() when createTab != null:
return createTab(_that);case CreatedTabMessage() when createdTab != null:
return createdTab(_that);case DeleteTabMessage() when deleteTab != null:
return deleteTab(_that);case SelectTabMessage() when selectTab != null:
return selectTab(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateTabMessage value)  createTab,required TResult Function( CreatedTabMessage value)  createdTab,required TResult Function( DeleteTabMessage value)  deleteTab,required TResult Function( SelectTabMessage value)  selectTab,}){
final _that = this;
switch (_that) {
case CreateTabMessage():
return createTab(_that);case CreatedTabMessage():
return createdTab(_that);case DeleteTabMessage():
return deleteTab(_that);case SelectTabMessage():
return selectTab(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateTabMessage value)?  createTab,TResult? Function( CreatedTabMessage value)?  createdTab,TResult? Function( DeleteTabMessage value)?  deleteTab,TResult? Function( SelectTabMessage value)?  selectTab,}){
final _that = this;
switch (_that) {
case CreateTabMessage() when createTab != null:
return createTab(_that);case CreatedTabMessage() when createdTab != null:
return createdTab(_that);case DeleteTabMessage() when deleteTab != null:
return deleteTab(_that);case SelectTabMessage() when selectTab != null:
return selectTab(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String toolId)?  createTab,TResult Function( TabItem tab)?  createdTab,TResult Function( String tabId)?  deleteTab,TResult Function( String tabId)?  selectTab,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateTabMessage() when createTab != null:
return createTab(_that.toolId);case CreatedTabMessage() when createdTab != null:
return createdTab(_that.tab);case DeleteTabMessage() when deleteTab != null:
return deleteTab(_that.tabId);case SelectTabMessage() when selectTab != null:
return selectTab(_that.tabId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String toolId)  createTab,required TResult Function( TabItem tab)  createdTab,required TResult Function( String tabId)  deleteTab,required TResult Function( String tabId)  selectTab,}) {final _that = this;
switch (_that) {
case CreateTabMessage():
return createTab(_that.toolId);case CreatedTabMessage():
return createdTab(_that.tab);case DeleteTabMessage():
return deleteTab(_that.tabId);case SelectTabMessage():
return selectTab(_that.tabId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String toolId)?  createTab,TResult? Function( TabItem tab)?  createdTab,TResult? Function( String tabId)?  deleteTab,TResult? Function( String tabId)?  selectTab,}) {final _that = this;
switch (_that) {
case CreateTabMessage() when createTab != null:
return createTab(_that.toolId);case CreatedTabMessage() when createdTab != null:
return createdTab(_that.tab);case DeleteTabMessage() when deleteTab != null:
return deleteTab(_that.tabId);case SelectTabMessage() when selectTab != null:
return selectTab(_that.tabId);case _:
  return null;

}
}

}

/// @nodoc


class CreateTabMessage implements TabsMessage {
  const CreateTabMessage({required this.toolId});
  

 final  String toolId;

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTabMessageCopyWith<CreateTabMessage> get copyWith => _$CreateTabMessageCopyWithImpl<CreateTabMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTabMessage&&(identical(other.toolId, toolId) || other.toolId == toolId));
}


@override
int get hashCode => Object.hash(runtimeType,toolId);

@override
String toString() {
  return 'TabsMessage.createTab(toolId: $toolId)';
}


}

/// @nodoc
abstract mixin class $CreateTabMessageCopyWith<$Res> implements $TabsMessageCopyWith<$Res> {
  factory $CreateTabMessageCopyWith(CreateTabMessage value, $Res Function(CreateTabMessage) _then) = _$CreateTabMessageCopyWithImpl;
@useResult
$Res call({
 String toolId
});




}
/// @nodoc
class _$CreateTabMessageCopyWithImpl<$Res>
    implements $CreateTabMessageCopyWith<$Res> {
  _$CreateTabMessageCopyWithImpl(this._self, this._then);

  final CreateTabMessage _self;
  final $Res Function(CreateTabMessage) _then;

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? toolId = null,}) {
  return _then(CreateTabMessage(
toolId: null == toolId ? _self.toolId : toolId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreatedTabMessage implements TabsMessage {
  const CreatedTabMessage({required this.tab});
  

 final  TabItem tab;

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedTabMessageCopyWith<CreatedTabMessage> get copyWith => _$CreatedTabMessageCopyWithImpl<CreatedTabMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedTabMessage&&(identical(other.tab, tab) || other.tab == tab));
}


@override
int get hashCode => Object.hash(runtimeType,tab);

@override
String toString() {
  return 'TabsMessage.createdTab(tab: $tab)';
}


}

/// @nodoc
abstract mixin class $CreatedTabMessageCopyWith<$Res> implements $TabsMessageCopyWith<$Res> {
  factory $CreatedTabMessageCopyWith(CreatedTabMessage value, $Res Function(CreatedTabMessage) _then) = _$CreatedTabMessageCopyWithImpl;
@useResult
$Res call({
 TabItem tab
});


$TabItemCopyWith<$Res> get tab;

}
/// @nodoc
class _$CreatedTabMessageCopyWithImpl<$Res>
    implements $CreatedTabMessageCopyWith<$Res> {
  _$CreatedTabMessageCopyWithImpl(this._self, this._then);

  final CreatedTabMessage _self;
  final $Res Function(CreatedTabMessage) _then;

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tab = null,}) {
  return _then(CreatedTabMessage(
tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as TabItem,
  ));
}

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TabItemCopyWith<$Res> get tab {
  
  return $TabItemCopyWith<$Res>(_self.tab, (value) {
    return _then(_self.copyWith(tab: value));
  });
}
}

/// @nodoc


class DeleteTabMessage implements TabsMessage {
  const DeleteTabMessage({required this.tabId});
  

 final  String tabId;

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTabMessageCopyWith<DeleteTabMessage> get copyWith => _$DeleteTabMessageCopyWithImpl<DeleteTabMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTabMessage&&(identical(other.tabId, tabId) || other.tabId == tabId));
}


@override
int get hashCode => Object.hash(runtimeType,tabId);

@override
String toString() {
  return 'TabsMessage.deleteTab(tabId: $tabId)';
}


}

/// @nodoc
abstract mixin class $DeleteTabMessageCopyWith<$Res> implements $TabsMessageCopyWith<$Res> {
  factory $DeleteTabMessageCopyWith(DeleteTabMessage value, $Res Function(DeleteTabMessage) _then) = _$DeleteTabMessageCopyWithImpl;
@useResult
$Res call({
 String tabId
});




}
/// @nodoc
class _$DeleteTabMessageCopyWithImpl<$Res>
    implements $DeleteTabMessageCopyWith<$Res> {
  _$DeleteTabMessageCopyWithImpl(this._self, this._then);

  final DeleteTabMessage _self;
  final $Res Function(DeleteTabMessage) _then;

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tabId = null,}) {
  return _then(DeleteTabMessage(
tabId: null == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SelectTabMessage implements TabsMessage {
  const SelectTabMessage({required this.tabId});
  

 final  String tabId;

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectTabMessageCopyWith<SelectTabMessage> get copyWith => _$SelectTabMessageCopyWithImpl<SelectTabMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectTabMessage&&(identical(other.tabId, tabId) || other.tabId == tabId));
}


@override
int get hashCode => Object.hash(runtimeType,tabId);

@override
String toString() {
  return 'TabsMessage.selectTab(tabId: $tabId)';
}


}

/// @nodoc
abstract mixin class $SelectTabMessageCopyWith<$Res> implements $TabsMessageCopyWith<$Res> {
  factory $SelectTabMessageCopyWith(SelectTabMessage value, $Res Function(SelectTabMessage) _then) = _$SelectTabMessageCopyWithImpl;
@useResult
$Res call({
 String tabId
});




}
/// @nodoc
class _$SelectTabMessageCopyWithImpl<$Res>
    implements $SelectTabMessageCopyWith<$Res> {
  _$SelectTabMessageCopyWithImpl(this._self, this._then);

  final SelectTabMessage _self;
  final $Res Function(SelectTabMessage) _then;

/// Create a copy of TabsMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tabId = null,}) {
  return _then(SelectTabMessage(
tabId: null == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
