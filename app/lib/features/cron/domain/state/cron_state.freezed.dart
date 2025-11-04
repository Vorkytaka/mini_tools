// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cron_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CronState {

 String get input; CronResult get result;
/// Create a copy of CronState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CronStateCopyWith<CronState> get copyWith => _$CronStateCopyWithImpl<CronState>(this as CronState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CronState&&(identical(other.input, input) || other.input == input)&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,input,result);

@override
String toString() {
  return 'CronState(input: $input, result: $result)';
}


}

/// @nodoc
abstract mixin class $CronStateCopyWith<$Res>  {
  factory $CronStateCopyWith(CronState value, $Res Function(CronState) _then) = _$CronStateCopyWithImpl;
@useResult
$Res call({
 String input, CronResult result
});


$CronResultCopyWith<$Res> get result;

}
/// @nodoc
class _$CronStateCopyWithImpl<$Res>
    implements $CronStateCopyWith<$Res> {
  _$CronStateCopyWithImpl(this._self, this._then);

  final CronState _self;
  final $Res Function(CronState) _then;

/// Create a copy of CronState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? result = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as CronResult,
  ));
}
/// Create a copy of CronState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronResultCopyWith<$Res> get result {
  
  return $CronResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [CronState].
extension CronStatePatterns on CronState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CronState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CronState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CronState value)  $default,){
final _that = this;
switch (_that) {
case _CronState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CronState value)?  $default,){
final _that = this;
switch (_that) {
case _CronState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String input,  CronResult result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CronState() when $default != null:
return $default(_that.input,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String input,  CronResult result)  $default,) {final _that = this;
switch (_that) {
case _CronState():
return $default(_that.input,_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String input,  CronResult result)?  $default,) {final _that = this;
switch (_that) {
case _CronState() when $default != null:
return $default(_that.input,_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _CronState implements CronState {
  const _CronState({required this.input, required this.result});
  

@override final  String input;
@override final  CronResult result;

/// Create a copy of CronState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CronStateCopyWith<_CronState> get copyWith => __$CronStateCopyWithImpl<_CronState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CronState&&(identical(other.input, input) || other.input == input)&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,input,result);

@override
String toString() {
  return 'CronState(input: $input, result: $result)';
}


}

/// @nodoc
abstract mixin class _$CronStateCopyWith<$Res> implements $CronStateCopyWith<$Res> {
  factory _$CronStateCopyWith(_CronState value, $Res Function(_CronState) _then) = __$CronStateCopyWithImpl;
@override @useResult
$Res call({
 String input, CronResult result
});


@override $CronResultCopyWith<$Res> get result;

}
/// @nodoc
class __$CronStateCopyWithImpl<$Res>
    implements _$CronStateCopyWith<$Res> {
  __$CronStateCopyWithImpl(this._self, this._then);

  final _CronState _self;
  final $Res Function(_CronState) _then;

/// Create a copy of CronState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? result = null,}) {
  return _then(_CronState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as CronResult,
  ));
}

/// Create a copy of CronState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronResultCopyWith<$Res> get result {
  
  return $CronResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

/// @nodoc
mixin _$CronResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CronResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CronResult()';
}


}

/// @nodoc
class $CronResultCopyWith<$Res>  {
$CronResultCopyWith(CronResult _, $Res Function(CronResult) __);
}


/// Adds pattern-matching-related methods to [CronResult].
extension CronResultPatterns on CronResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Idle value)?  idle,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Idle value)  idle,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Idle():
return idle(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Idle value)?  idle,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function( Cron cron)?  success,TResult Function( CronException exception)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle();case _Success() when success != null:
return success(_that.cron);case _Failure() when failure != null:
return failure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function( Cron cron)  success,required TResult Function( CronException exception)  failure,}) {final _that = this;
switch (_that) {
case _Idle():
return idle();case _Success():
return success(_that.cron);case _Failure():
return failure(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function( Cron cron)?  success,TResult? Function( CronException exception)?  failure,}) {final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle();case _Success() when success != null:
return success(_that.cron);case _Failure() when failure != null:
return failure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _Idle implements CronResult {
  const _Idle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Idle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CronResult.idle()';
}


}




/// @nodoc


class _Success implements CronResult {
  const _Success(this.cron);
  

 final  Cron cron;

/// Create a copy of CronResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.cron, cron) || other.cron == cron));
}


@override
int get hashCode => Object.hash(runtimeType,cron);

@override
String toString() {
  return 'CronResult.success(cron: $cron)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $CronResultCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 Cron cron
});


$CronCopyWith<$Res> get cron;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of CronResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cron = null,}) {
  return _then(_Success(
null == cron ? _self.cron : cron // ignore: cast_nullable_to_non_nullable
as Cron,
  ));
}

/// Create a copy of CronResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronCopyWith<$Res> get cron {
  
  return $CronCopyWith<$Res>(_self.cron, (value) {
    return _then(_self.copyWith(cron: value));
  });
}
}

/// @nodoc


class _Failure implements CronResult {
  const _Failure(this.exception);
  

 final  CronException exception;

/// Create a copy of CronResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'CronResult.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CronResultCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 CronException exception
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of CronResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(_Failure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as CronException,
  ));
}


}

// dart format on
