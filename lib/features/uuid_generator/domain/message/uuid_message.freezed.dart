// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uuid_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UuidMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UuidMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UuidMessage()';
}


}

/// @nodoc
class $UuidMessageCopyWith<$Res>  {
$UuidMessageCopyWith(UuidMessage _, $Res Function(UuidMessage) __);
}


/// Adds pattern-matching-related methods to [UuidMessage].
extension UuidMessagePatterns on UuidMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateVersionMessage value)?  updateVersion,TResult Function( UpdateCountMessage value)?  updateCount,TResult Function( GenerateMessage value)?  generate,TResult Function( SetIdsMessage value)?  setIds,TResult Function( UpdateNamespaceMessage value)?  updateNamespace,TResult Function( UpdateNameMessage value)?  updateName,TResult Function( UpdateLowerCase value)?  updateLowerCase,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateVersionMessage() when updateVersion != null:
return updateVersion(_that);case UpdateCountMessage() when updateCount != null:
return updateCount(_that);case GenerateMessage() when generate != null:
return generate(_that);case SetIdsMessage() when setIds != null:
return setIds(_that);case UpdateNamespaceMessage() when updateNamespace != null:
return updateNamespace(_that);case UpdateNameMessage() when updateName != null:
return updateName(_that);case UpdateLowerCase() when updateLowerCase != null:
return updateLowerCase(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateVersionMessage value)  updateVersion,required TResult Function( UpdateCountMessage value)  updateCount,required TResult Function( GenerateMessage value)  generate,required TResult Function( SetIdsMessage value)  setIds,required TResult Function( UpdateNamespaceMessage value)  updateNamespace,required TResult Function( UpdateNameMessage value)  updateName,required TResult Function( UpdateLowerCase value)  updateLowerCase,}){
final _that = this;
switch (_that) {
case UpdateVersionMessage():
return updateVersion(_that);case UpdateCountMessage():
return updateCount(_that);case GenerateMessage():
return generate(_that);case SetIdsMessage():
return setIds(_that);case UpdateNamespaceMessage():
return updateNamespace(_that);case UpdateNameMessage():
return updateName(_that);case UpdateLowerCase():
return updateLowerCase(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateVersionMessage value)?  updateVersion,TResult? Function( UpdateCountMessage value)?  updateCount,TResult? Function( GenerateMessage value)?  generate,TResult? Function( SetIdsMessage value)?  setIds,TResult? Function( UpdateNamespaceMessage value)?  updateNamespace,TResult? Function( UpdateNameMessage value)?  updateName,TResult? Function( UpdateLowerCase value)?  updateLowerCase,}){
final _that = this;
switch (_that) {
case UpdateVersionMessage() when updateVersion != null:
return updateVersion(_that);case UpdateCountMessage() when updateCount != null:
return updateCount(_that);case GenerateMessage() when generate != null:
return generate(_that);case SetIdsMessage() when setIds != null:
return setIds(_that);case UpdateNamespaceMessage() when updateNamespace != null:
return updateNamespace(_that);case UpdateNameMessage() when updateName != null:
return updateName(_that);case UpdateLowerCase() when updateLowerCase != null:
return updateLowerCase(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UuidVersion version)?  updateVersion,TResult Function( int count)?  updateCount,TResult Function()?  generate,TResult Function( List<String> ids)?  setIds,TResult Function( String namespace)?  updateNamespace,TResult Function( String name)?  updateName,TResult Function( bool isLowerCase)?  updateLowerCase,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateVersionMessage() when updateVersion != null:
return updateVersion(_that.version);case UpdateCountMessage() when updateCount != null:
return updateCount(_that.count);case GenerateMessage() when generate != null:
return generate();case SetIdsMessage() when setIds != null:
return setIds(_that.ids);case UpdateNamespaceMessage() when updateNamespace != null:
return updateNamespace(_that.namespace);case UpdateNameMessage() when updateName != null:
return updateName(_that.name);case UpdateLowerCase() when updateLowerCase != null:
return updateLowerCase(_that.isLowerCase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UuidVersion version)  updateVersion,required TResult Function( int count)  updateCount,required TResult Function()  generate,required TResult Function( List<String> ids)  setIds,required TResult Function( String namespace)  updateNamespace,required TResult Function( String name)  updateName,required TResult Function( bool isLowerCase)  updateLowerCase,}) {final _that = this;
switch (_that) {
case UpdateVersionMessage():
return updateVersion(_that.version);case UpdateCountMessage():
return updateCount(_that.count);case GenerateMessage():
return generate();case SetIdsMessage():
return setIds(_that.ids);case UpdateNamespaceMessage():
return updateNamespace(_that.namespace);case UpdateNameMessage():
return updateName(_that.name);case UpdateLowerCase():
return updateLowerCase(_that.isLowerCase);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UuidVersion version)?  updateVersion,TResult? Function( int count)?  updateCount,TResult? Function()?  generate,TResult? Function( List<String> ids)?  setIds,TResult? Function( String namespace)?  updateNamespace,TResult? Function( String name)?  updateName,TResult? Function( bool isLowerCase)?  updateLowerCase,}) {final _that = this;
switch (_that) {
case UpdateVersionMessage() when updateVersion != null:
return updateVersion(_that.version);case UpdateCountMessage() when updateCount != null:
return updateCount(_that.count);case GenerateMessage() when generate != null:
return generate();case SetIdsMessage() when setIds != null:
return setIds(_that.ids);case UpdateNamespaceMessage() when updateNamespace != null:
return updateNamespace(_that.namespace);case UpdateNameMessage() when updateName != null:
return updateName(_that.name);case UpdateLowerCase() when updateLowerCase != null:
return updateLowerCase(_that.isLowerCase);case _:
  return null;

}
}

}

/// @nodoc


class UpdateVersionMessage implements UuidMessage {
  const UpdateVersionMessage(this.version);
  

 final  UuidVersion version;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateVersionMessageCopyWith<UpdateVersionMessage> get copyWith => _$UpdateVersionMessageCopyWithImpl<UpdateVersionMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateVersionMessage&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'UuidMessage.updateVersion(version: $version)';
}


}

/// @nodoc
abstract mixin class $UpdateVersionMessageCopyWith<$Res> implements $UuidMessageCopyWith<$Res> {
  factory $UpdateVersionMessageCopyWith(UpdateVersionMessage value, $Res Function(UpdateVersionMessage) _then) = _$UpdateVersionMessageCopyWithImpl;
@useResult
$Res call({
 UuidVersion version
});




}
/// @nodoc
class _$UpdateVersionMessageCopyWithImpl<$Res>
    implements $UpdateVersionMessageCopyWith<$Res> {
  _$UpdateVersionMessageCopyWithImpl(this._self, this._then);

  final UpdateVersionMessage _self;
  final $Res Function(UpdateVersionMessage) _then;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? version = null,}) {
  return _then(UpdateVersionMessage(
null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as UuidVersion,
  ));
}


}

/// @nodoc


class UpdateCountMessage implements UuidMessage {
  const UpdateCountMessage(this.count);
  

 final  int count;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCountMessageCopyWith<UpdateCountMessage> get copyWith => _$UpdateCountMessageCopyWithImpl<UpdateCountMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCountMessage&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'UuidMessage.updateCount(count: $count)';
}


}

/// @nodoc
abstract mixin class $UpdateCountMessageCopyWith<$Res> implements $UuidMessageCopyWith<$Res> {
  factory $UpdateCountMessageCopyWith(UpdateCountMessage value, $Res Function(UpdateCountMessage) _then) = _$UpdateCountMessageCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class _$UpdateCountMessageCopyWithImpl<$Res>
    implements $UpdateCountMessageCopyWith<$Res> {
  _$UpdateCountMessageCopyWithImpl(this._self, this._then);

  final UpdateCountMessage _self;
  final $Res Function(UpdateCountMessage) _then;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(UpdateCountMessage(
null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GenerateMessage implements UuidMessage {
  const GenerateMessage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UuidMessage.generate()';
}


}




/// @nodoc


class SetIdsMessage implements UuidMessage {
  const SetIdsMessage(final  List<String> ids): _ids = ids;
  

 final  List<String> _ids;
 List<String> get ids {
  if (_ids is EqualUnmodifiableListView) return _ids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ids);
}


/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetIdsMessageCopyWith<SetIdsMessage> get copyWith => _$SetIdsMessageCopyWithImpl<SetIdsMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetIdsMessage&&const DeepCollectionEquality().equals(other._ids, _ids));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ids));

@override
String toString() {
  return 'UuidMessage.setIds(ids: $ids)';
}


}

/// @nodoc
abstract mixin class $SetIdsMessageCopyWith<$Res> implements $UuidMessageCopyWith<$Res> {
  factory $SetIdsMessageCopyWith(SetIdsMessage value, $Res Function(SetIdsMessage) _then) = _$SetIdsMessageCopyWithImpl;
@useResult
$Res call({
 List<String> ids
});




}
/// @nodoc
class _$SetIdsMessageCopyWithImpl<$Res>
    implements $SetIdsMessageCopyWith<$Res> {
  _$SetIdsMessageCopyWithImpl(this._self, this._then);

  final SetIdsMessage _self;
  final $Res Function(SetIdsMessage) _then;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ids = null,}) {
  return _then(SetIdsMessage(
null == ids ? _self._ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class UpdateNamespaceMessage implements UuidMessage {
  const UpdateNamespaceMessage(this.namespace);
  

 final  String namespace;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNamespaceMessageCopyWith<UpdateNamespaceMessage> get copyWith => _$UpdateNamespaceMessageCopyWithImpl<UpdateNamespaceMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateNamespaceMessage&&(identical(other.namespace, namespace) || other.namespace == namespace));
}


@override
int get hashCode => Object.hash(runtimeType,namespace);

@override
String toString() {
  return 'UuidMessage.updateNamespace(namespace: $namespace)';
}


}

/// @nodoc
abstract mixin class $UpdateNamespaceMessageCopyWith<$Res> implements $UuidMessageCopyWith<$Res> {
  factory $UpdateNamespaceMessageCopyWith(UpdateNamespaceMessage value, $Res Function(UpdateNamespaceMessage) _then) = _$UpdateNamespaceMessageCopyWithImpl;
@useResult
$Res call({
 String namespace
});




}
/// @nodoc
class _$UpdateNamespaceMessageCopyWithImpl<$Res>
    implements $UpdateNamespaceMessageCopyWith<$Res> {
  _$UpdateNamespaceMessageCopyWithImpl(this._self, this._then);

  final UpdateNamespaceMessage _self;
  final $Res Function(UpdateNamespaceMessage) _then;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? namespace = null,}) {
  return _then(UpdateNamespaceMessage(
null == namespace ? _self.namespace : namespace // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateNameMessage implements UuidMessage {
  const UpdateNameMessage(this.name);
  

 final  String name;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNameMessageCopyWith<UpdateNameMessage> get copyWith => _$UpdateNameMessageCopyWithImpl<UpdateNameMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateNameMessage&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'UuidMessage.updateName(name: $name)';
}


}

/// @nodoc
abstract mixin class $UpdateNameMessageCopyWith<$Res> implements $UuidMessageCopyWith<$Res> {
  factory $UpdateNameMessageCopyWith(UpdateNameMessage value, $Res Function(UpdateNameMessage) _then) = _$UpdateNameMessageCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$UpdateNameMessageCopyWithImpl<$Res>
    implements $UpdateNameMessageCopyWith<$Res> {
  _$UpdateNameMessageCopyWithImpl(this._self, this._then);

  final UpdateNameMessage _self;
  final $Res Function(UpdateNameMessage) _then;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(UpdateNameMessage(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateLowerCase implements UuidMessage {
  const UpdateLowerCase(this.isLowerCase);
  

 final  bool isLowerCase;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateLowerCaseCopyWith<UpdateLowerCase> get copyWith => _$UpdateLowerCaseCopyWithImpl<UpdateLowerCase>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateLowerCase&&(identical(other.isLowerCase, isLowerCase) || other.isLowerCase == isLowerCase));
}


@override
int get hashCode => Object.hash(runtimeType,isLowerCase);

@override
String toString() {
  return 'UuidMessage.updateLowerCase(isLowerCase: $isLowerCase)';
}


}

/// @nodoc
abstract mixin class $UpdateLowerCaseCopyWith<$Res> implements $UuidMessageCopyWith<$Res> {
  factory $UpdateLowerCaseCopyWith(UpdateLowerCase value, $Res Function(UpdateLowerCase) _then) = _$UpdateLowerCaseCopyWithImpl;
@useResult
$Res call({
 bool isLowerCase
});




}
/// @nodoc
class _$UpdateLowerCaseCopyWithImpl<$Res>
    implements $UpdateLowerCaseCopyWith<$Res> {
  _$UpdateLowerCaseCopyWithImpl(this._self, this._then);

  final UpdateLowerCase _self;
  final $Res Function(UpdateLowerCase) _then;

/// Create a copy of UuidMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLowerCase = null,}) {
  return _then(UpdateLowerCase(
null == isLowerCase ? _self.isLowerCase : isLowerCase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
