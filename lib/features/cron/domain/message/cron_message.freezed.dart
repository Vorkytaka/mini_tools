// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cron_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CronMessage {

 String get input; bool get saveToPersist;
/// Create a copy of CronMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CronMessageCopyWith<CronMessage> get copyWith => _$CronMessageCopyWithImpl<CronMessage>(this as CronMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CronMessage&&(identical(other.input, input) || other.input == input)&&(identical(other.saveToPersist, saveToPersist) || other.saveToPersist == saveToPersist));
}


@override
int get hashCode => Object.hash(runtimeType,input,saveToPersist);

@override
String toString() {
  return 'CronMessage(input: $input, saveToPersist: $saveToPersist)';
}


}

/// @nodoc
abstract mixin class $CronMessageCopyWith<$Res>  {
  factory $CronMessageCopyWith(CronMessage value, $Res Function(CronMessage) _then) = _$CronMessageCopyWithImpl;
@useResult
$Res call({
 String input, bool saveToPersist
});




}
/// @nodoc
class _$CronMessageCopyWithImpl<$Res>
    implements $CronMessageCopyWith<$Res> {
  _$CronMessageCopyWithImpl(this._self, this._then);

  final CronMessage _self;
  final $Res Function(CronMessage) _then;

/// Create a copy of CronMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? saveToPersist = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,saveToPersist: null == saveToPersist ? _self.saveToPersist : saveToPersist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CronMessage].
extension CronMessagePatterns on CronMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InputUpdateMessage value)?  inputUpdate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InputUpdateMessage() when inputUpdate != null:
return inputUpdate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InputUpdateMessage value)  inputUpdate,}){
final _that = this;
switch (_that) {
case InputUpdateMessage():
return inputUpdate(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InputUpdateMessage value)?  inputUpdate,}){
final _that = this;
switch (_that) {
case InputUpdateMessage() when inputUpdate != null:
return inputUpdate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input,  bool saveToPersist)?  inputUpdate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InputUpdateMessage() when inputUpdate != null:
return inputUpdate(_that.input,_that.saveToPersist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input,  bool saveToPersist)  inputUpdate,}) {final _that = this;
switch (_that) {
case InputUpdateMessage():
return inputUpdate(_that.input,_that.saveToPersist);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input,  bool saveToPersist)?  inputUpdate,}) {final _that = this;
switch (_that) {
case InputUpdateMessage() when inputUpdate != null:
return inputUpdate(_that.input,_that.saveToPersist);case _:
  return null;

}
}

}

/// @nodoc


class InputUpdateMessage implements CronMessage {
  const InputUpdateMessage({required this.input, this.saveToPersist = true});
  

@override final  String input;
@override@JsonKey() final  bool saveToPersist;

/// Create a copy of CronMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputUpdateMessageCopyWith<InputUpdateMessage> get copyWith => _$InputUpdateMessageCopyWithImpl<InputUpdateMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputUpdateMessage&&(identical(other.input, input) || other.input == input)&&(identical(other.saveToPersist, saveToPersist) || other.saveToPersist == saveToPersist));
}


@override
int get hashCode => Object.hash(runtimeType,input,saveToPersist);

@override
String toString() {
  return 'CronMessage.inputUpdate(input: $input, saveToPersist: $saveToPersist)';
}


}

/// @nodoc
abstract mixin class $InputUpdateMessageCopyWith<$Res> implements $CronMessageCopyWith<$Res> {
  factory $InputUpdateMessageCopyWith(InputUpdateMessage value, $Res Function(InputUpdateMessage) _then) = _$InputUpdateMessageCopyWithImpl;
@override @useResult
$Res call({
 String input, bool saveToPersist
});




}
/// @nodoc
class _$InputUpdateMessageCopyWithImpl<$Res>
    implements $InputUpdateMessageCopyWith<$Res> {
  _$InputUpdateMessageCopyWithImpl(this._self, this._then);

  final InputUpdateMessage _self;
  final $Res Function(InputUpdateMessage) _then;

/// Create a copy of CronMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? saveToPersist = null,}) {
  return _then(InputUpdateMessage(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,saveToPersist: null == saveToPersist ? _self.saveToPersist : saveToPersist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
