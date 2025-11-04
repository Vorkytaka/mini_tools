// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_base_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NumberBaseEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberBaseEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NumberBaseEffect()';
}


}

/// @nodoc
class $NumberBaseEffectCopyWith<$Res>  {
$NumberBaseEffectCopyWith(NumberBaseEffect _, $Res Function(NumberBaseEffect) __);
}


/// Adds pattern-matching-related methods to [NumberBaseEffect].
extension NumberBaseEffectPatterns on NumberBaseEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SaveStateEffect value)?  saveState,TResult Function( LoadStateEffect value)?  loadState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SaveStateEffect() when saveState != null:
return saveState(_that);case LoadStateEffect() when loadState != null:
return loadState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SaveStateEffect value)  saveState,required TResult Function( LoadStateEffect value)  loadState,}){
final _that = this;
switch (_that) {
case SaveStateEffect():
return saveState(_that);case LoadStateEffect():
return loadState(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SaveStateEffect value)?  saveState,TResult? Function( LoadStateEffect value)?  loadState,}){
final _that = this;
switch (_that) {
case SaveStateEffect() when saveState != null:
return saveState(_that);case LoadStateEffect() when loadState != null:
return loadState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NumberBaseState state)?  saveState,TResult Function()?  loadState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SaveStateEffect() when saveState != null:
return saveState(_that.state);case LoadStateEffect() when loadState != null:
return loadState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NumberBaseState state)  saveState,required TResult Function()  loadState,}) {final _that = this;
switch (_that) {
case SaveStateEffect():
return saveState(_that.state);case LoadStateEffect():
return loadState();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NumberBaseState state)?  saveState,TResult? Function()?  loadState,}) {final _that = this;
switch (_that) {
case SaveStateEffect() when saveState != null:
return saveState(_that.state);case LoadStateEffect() when loadState != null:
return loadState();case _:
  return null;

}
}

}

/// @nodoc


class SaveStateEffect implements NumberBaseEffect {
  const SaveStateEffect(this.state);
  

 final  NumberBaseState state;

/// Create a copy of NumberBaseEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveStateEffectCopyWith<SaveStateEffect> get copyWith => _$SaveStateEffectCopyWithImpl<SaveStateEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveStateEffect&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'NumberBaseEffect.saveState(state: $state)';
}


}

/// @nodoc
abstract mixin class $SaveStateEffectCopyWith<$Res> implements $NumberBaseEffectCopyWith<$Res> {
  factory $SaveStateEffectCopyWith(SaveStateEffect value, $Res Function(SaveStateEffect) _then) = _$SaveStateEffectCopyWithImpl;
@useResult
$Res call({
 NumberBaseState state
});


$NumberBaseStateCopyWith<$Res> get state;

}
/// @nodoc
class _$SaveStateEffectCopyWithImpl<$Res>
    implements $SaveStateEffectCopyWith<$Res> {
  _$SaveStateEffectCopyWithImpl(this._self, this._then);

  final SaveStateEffect _self;
  final $Res Function(SaveStateEffect) _then;

/// Create a copy of NumberBaseEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(SaveStateEffect(
null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as NumberBaseState,
  ));
}

/// Create a copy of NumberBaseEffect
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NumberBaseStateCopyWith<$Res> get state {
  
  return $NumberBaseStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

/// @nodoc


class LoadStateEffect implements NumberBaseEffect {
  const LoadStateEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadStateEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NumberBaseEffect.loadState()';
}


}




// dart format on
