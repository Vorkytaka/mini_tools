// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cron_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CronEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CronEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CronEffect()';
}


}

/// @nodoc
class $CronEffectCopyWith<$Res>  {
$CronEffectCopyWith(CronEffect _, $Res Function(CronEffect) __);
}


/// Adds pattern-matching-related methods to [CronEffect].
extension CronEffectPatterns on CronEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SaveEffect value)?  save,TResult Function( LoadEffect value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SaveEffect() when save != null:
return save(_that);case LoadEffect() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SaveEffect value)  save,required TResult Function( LoadEffect value)  load,}){
final _that = this;
switch (_that) {
case SaveEffect():
return save(_that);case LoadEffect():
return load(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SaveEffect value)?  save,TResult? Function( LoadEffect value)?  load,}){
final _that = this;
switch (_that) {
case SaveEffect() when save != null:
return save(_that);case LoadEffect() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input)?  save,TResult Function()?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SaveEffect() when save != null:
return save(_that.input);case LoadEffect() when load != null:
return load();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input)  save,required TResult Function()  load,}) {final _that = this;
switch (_that) {
case SaveEffect():
return save(_that.input);case LoadEffect():
return load();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input)?  save,TResult? Function()?  load,}) {final _that = this;
switch (_that) {
case SaveEffect() when save != null:
return save(_that.input);case LoadEffect() when load != null:
return load();case _:
  return null;

}
}

}

/// @nodoc


class SaveEffect implements CronEffect {
  const SaveEffect(this.input);
  

 final  String input;

/// Create a copy of CronEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveEffectCopyWith<SaveEffect> get copyWith => _$SaveEffectCopyWithImpl<SaveEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveEffect&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'CronEffect.save(input: $input)';
}


}

/// @nodoc
abstract mixin class $SaveEffectCopyWith<$Res> implements $CronEffectCopyWith<$Res> {
  factory $SaveEffectCopyWith(SaveEffect value, $Res Function(SaveEffect) _then) = _$SaveEffectCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$SaveEffectCopyWithImpl<$Res>
    implements $SaveEffectCopyWith<$Res> {
  _$SaveEffectCopyWithImpl(this._self, this._then);

  final SaveEffect _self;
  final $Res Function(SaveEffect) _then;

/// Create a copy of CronEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(SaveEffect(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadEffect implements CronEffect {
  const LoadEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CronEffect.load()';
}


}




// dart format on
