// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_diff_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TextDiffMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextDiffMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TextDiffMessage()';
}


}

/// @nodoc
class $TextDiffMessageCopyWith<$Res>  {
$TextDiffMessageCopyWith(TextDiffMessage _, $Res Function(TextDiffMessage) __);
}


/// Adds pattern-matching-related methods to [TextDiffMessage].
extension TextDiffMessagePatterns on TextDiffMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateNewTextMessage value)?  updateNewText,TResult Function( UpdateOldTextMessage value)?  updateOldText,TResult Function( UpdateDiffsMessage value)?  updateDiffs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateNewTextMessage() when updateNewText != null:
return updateNewText(_that);case UpdateOldTextMessage() when updateOldText != null:
return updateOldText(_that);case UpdateDiffsMessage() when updateDiffs != null:
return updateDiffs(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateNewTextMessage value)  updateNewText,required TResult Function( UpdateOldTextMessage value)  updateOldText,required TResult Function( UpdateDiffsMessage value)  updateDiffs,}){
final _that = this;
switch (_that) {
case UpdateNewTextMessage():
return updateNewText(_that);case UpdateOldTextMessage():
return updateOldText(_that);case UpdateDiffsMessage():
return updateDiffs(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateNewTextMessage value)?  updateNewText,TResult? Function( UpdateOldTextMessage value)?  updateOldText,TResult? Function( UpdateDiffsMessage value)?  updateDiffs,}){
final _that = this;
switch (_that) {
case UpdateNewTextMessage() when updateNewText != null:
return updateNewText(_that);case UpdateOldTextMessage() when updateOldText != null:
return updateOldText(_that);case UpdateDiffsMessage() when updateDiffs != null:
return updateDiffs(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  updateNewText,TResult Function( String text)?  updateOldText,TResult Function( List<Diff> diffs)?  updateDiffs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateNewTextMessage() when updateNewText != null:
return updateNewText(_that.text);case UpdateOldTextMessage() when updateOldText != null:
return updateOldText(_that.text);case UpdateDiffsMessage() when updateDiffs != null:
return updateDiffs(_that.diffs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  updateNewText,required TResult Function( String text)  updateOldText,required TResult Function( List<Diff> diffs)  updateDiffs,}) {final _that = this;
switch (_that) {
case UpdateNewTextMessage():
return updateNewText(_that.text);case UpdateOldTextMessage():
return updateOldText(_that.text);case UpdateDiffsMessage():
return updateDiffs(_that.diffs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  updateNewText,TResult? Function( String text)?  updateOldText,TResult? Function( List<Diff> diffs)?  updateDiffs,}) {final _that = this;
switch (_that) {
case UpdateNewTextMessage() when updateNewText != null:
return updateNewText(_that.text);case UpdateOldTextMessage() when updateOldText != null:
return updateOldText(_that.text);case UpdateDiffsMessage() when updateDiffs != null:
return updateDiffs(_that.diffs);case _:
  return null;

}
}

}

/// @nodoc


class UpdateNewTextMessage implements TextDiffMessage {
  const UpdateNewTextMessage(this.text);
  

 final  String text;

/// Create a copy of TextDiffMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNewTextMessageCopyWith<UpdateNewTextMessage> get copyWith => _$UpdateNewTextMessageCopyWithImpl<UpdateNewTextMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateNewTextMessage&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'TextDiffMessage.updateNewText(text: $text)';
}


}

/// @nodoc
abstract mixin class $UpdateNewTextMessageCopyWith<$Res> implements $TextDiffMessageCopyWith<$Res> {
  factory $UpdateNewTextMessageCopyWith(UpdateNewTextMessage value, $Res Function(UpdateNewTextMessage) _then) = _$UpdateNewTextMessageCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$UpdateNewTextMessageCopyWithImpl<$Res>
    implements $UpdateNewTextMessageCopyWith<$Res> {
  _$UpdateNewTextMessageCopyWithImpl(this._self, this._then);

  final UpdateNewTextMessage _self;
  final $Res Function(UpdateNewTextMessage) _then;

/// Create a copy of TextDiffMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(UpdateNewTextMessage(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateOldTextMessage implements TextDiffMessage {
  const UpdateOldTextMessage(this.text);
  

 final  String text;

/// Create a copy of TextDiffMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateOldTextMessageCopyWith<UpdateOldTextMessage> get copyWith => _$UpdateOldTextMessageCopyWithImpl<UpdateOldTextMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOldTextMessage&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'TextDiffMessage.updateOldText(text: $text)';
}


}

/// @nodoc
abstract mixin class $UpdateOldTextMessageCopyWith<$Res> implements $TextDiffMessageCopyWith<$Res> {
  factory $UpdateOldTextMessageCopyWith(UpdateOldTextMessage value, $Res Function(UpdateOldTextMessage) _then) = _$UpdateOldTextMessageCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$UpdateOldTextMessageCopyWithImpl<$Res>
    implements $UpdateOldTextMessageCopyWith<$Res> {
  _$UpdateOldTextMessageCopyWithImpl(this._self, this._then);

  final UpdateOldTextMessage _self;
  final $Res Function(UpdateOldTextMessage) _then;

/// Create a copy of TextDiffMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(UpdateOldTextMessage(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateDiffsMessage implements TextDiffMessage {
  const UpdateDiffsMessage(final  List<Diff> diffs): _diffs = diffs;
  

 final  List<Diff> _diffs;
 List<Diff> get diffs {
  if (_diffs is EqualUnmodifiableListView) return _diffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diffs);
}


/// Create a copy of TextDiffMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDiffsMessageCopyWith<UpdateDiffsMessage> get copyWith => _$UpdateDiffsMessageCopyWithImpl<UpdateDiffsMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDiffsMessage&&const DeepCollectionEquality().equals(other._diffs, _diffs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_diffs));

@override
String toString() {
  return 'TextDiffMessage.updateDiffs(diffs: $diffs)';
}


}

/// @nodoc
abstract mixin class $UpdateDiffsMessageCopyWith<$Res> implements $TextDiffMessageCopyWith<$Res> {
  factory $UpdateDiffsMessageCopyWith(UpdateDiffsMessage value, $Res Function(UpdateDiffsMessage) _then) = _$UpdateDiffsMessageCopyWithImpl;
@useResult
$Res call({
 List<Diff> diffs
});




}
/// @nodoc
class _$UpdateDiffsMessageCopyWithImpl<$Res>
    implements $UpdateDiffsMessageCopyWith<$Res> {
  _$UpdateDiffsMessageCopyWithImpl(this._self, this._then);

  final UpdateDiffsMessage _self;
  final $Res Function(UpdateDiffsMessage) _then;

/// Create a copy of TextDiffMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? diffs = null,}) {
  return _then(UpdateDiffsMessage(
null == diffs ? _self._diffs : diffs // ignore: cast_nullable_to_non_nullable
as List<Diff>,
  ));
}


}

// dart format on
