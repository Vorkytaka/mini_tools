// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cron_parser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cron {

 CronExpression get minutes; CronExpression get hours; CronExpression get days; CronExpression get months; CronExpression get weekdays;
/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CronCopyWith<Cron> get copyWith => _$CronCopyWithImpl<Cron>(this as Cron, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cron&&(identical(other.minutes, minutes) || other.minutes == minutes)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.days, days) || other.days == days)&&(identical(other.months, months) || other.months == months)&&(identical(other.weekdays, weekdays) || other.weekdays == weekdays));
}


@override
int get hashCode => Object.hash(runtimeType,minutes,hours,days,months,weekdays);

@override
String toString() {
  return 'Cron(minutes: $minutes, hours: $hours, days: $days, months: $months, weekdays: $weekdays)';
}


}

/// @nodoc
abstract mixin class $CronCopyWith<$Res>  {
  factory $CronCopyWith(Cron value, $Res Function(Cron) _then) = _$CronCopyWithImpl;
@useResult
$Res call({
 CronExpression minutes, CronExpression hours, CronExpression days, CronExpression months, CronExpression weekdays
});


$CronExpressionCopyWith<$Res> get minutes;$CronExpressionCopyWith<$Res> get hours;$CronExpressionCopyWith<$Res> get days;$CronExpressionCopyWith<$Res> get months;$CronExpressionCopyWith<$Res> get weekdays;

}
/// @nodoc
class _$CronCopyWithImpl<$Res>
    implements $CronCopyWith<$Res> {
  _$CronCopyWithImpl(this._self, this._then);

  final Cron _self;
  final $Res Function(Cron) _then;

/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minutes = null,Object? hours = null,Object? days = null,Object? months = null,Object? weekdays = null,}) {
  return _then(_self.copyWith(
minutes: null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as CronExpression,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as CronExpression,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as CronExpression,months: null == months ? _self.months : months // ignore: cast_nullable_to_non_nullable
as CronExpression,weekdays: null == weekdays ? _self.weekdays : weekdays // ignore: cast_nullable_to_non_nullable
as CronExpression,
  ));
}
/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get minutes {
  
  return $CronExpressionCopyWith<$Res>(_self.minutes, (value) {
    return _then(_self.copyWith(minutes: value));
  });
}/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get hours {
  
  return $CronExpressionCopyWith<$Res>(_self.hours, (value) {
    return _then(_self.copyWith(hours: value));
  });
}/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get days {
  
  return $CronExpressionCopyWith<$Res>(_self.days, (value) {
    return _then(_self.copyWith(days: value));
  });
}/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get months {
  
  return $CronExpressionCopyWith<$Res>(_self.months, (value) {
    return _then(_self.copyWith(months: value));
  });
}/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get weekdays {
  
  return $CronExpressionCopyWith<$Res>(_self.weekdays, (value) {
    return _then(_self.copyWith(weekdays: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cron].
extension CronPatterns on Cron {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cron value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cron() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cron value)  $default,){
final _that = this;
switch (_that) {
case _Cron():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cron value)?  $default,){
final _that = this;
switch (_that) {
case _Cron() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CronExpression minutes,  CronExpression hours,  CronExpression days,  CronExpression months,  CronExpression weekdays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cron() when $default != null:
return $default(_that.minutes,_that.hours,_that.days,_that.months,_that.weekdays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CronExpression minutes,  CronExpression hours,  CronExpression days,  CronExpression months,  CronExpression weekdays)  $default,) {final _that = this;
switch (_that) {
case _Cron():
return $default(_that.minutes,_that.hours,_that.days,_that.months,_that.weekdays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CronExpression minutes,  CronExpression hours,  CronExpression days,  CronExpression months,  CronExpression weekdays)?  $default,) {final _that = this;
switch (_that) {
case _Cron() when $default != null:
return $default(_that.minutes,_that.hours,_that.days,_that.months,_that.weekdays);case _:
  return null;

}
}

}

/// @nodoc


class _Cron implements Cron {
  const _Cron({required this.minutes, required this.hours, required this.days, required this.months, required this.weekdays});
  

@override final  CronExpression minutes;
@override final  CronExpression hours;
@override final  CronExpression days;
@override final  CronExpression months;
@override final  CronExpression weekdays;

/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CronCopyWith<_Cron> get copyWith => __$CronCopyWithImpl<_Cron>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cron&&(identical(other.minutes, minutes) || other.minutes == minutes)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.days, days) || other.days == days)&&(identical(other.months, months) || other.months == months)&&(identical(other.weekdays, weekdays) || other.weekdays == weekdays));
}


@override
int get hashCode => Object.hash(runtimeType,minutes,hours,days,months,weekdays);

@override
String toString() {
  return 'Cron(minutes: $minutes, hours: $hours, days: $days, months: $months, weekdays: $weekdays)';
}


}

/// @nodoc
abstract mixin class _$CronCopyWith<$Res> implements $CronCopyWith<$Res> {
  factory _$CronCopyWith(_Cron value, $Res Function(_Cron) _then) = __$CronCopyWithImpl;
@override @useResult
$Res call({
 CronExpression minutes, CronExpression hours, CronExpression days, CronExpression months, CronExpression weekdays
});


@override $CronExpressionCopyWith<$Res> get minutes;@override $CronExpressionCopyWith<$Res> get hours;@override $CronExpressionCopyWith<$Res> get days;@override $CronExpressionCopyWith<$Res> get months;@override $CronExpressionCopyWith<$Res> get weekdays;

}
/// @nodoc
class __$CronCopyWithImpl<$Res>
    implements _$CronCopyWith<$Res> {
  __$CronCopyWithImpl(this._self, this._then);

  final _Cron _self;
  final $Res Function(_Cron) _then;

/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minutes = null,Object? hours = null,Object? days = null,Object? months = null,Object? weekdays = null,}) {
  return _then(_Cron(
minutes: null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as CronExpression,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as CronExpression,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as CronExpression,months: null == months ? _self.months : months // ignore: cast_nullable_to_non_nullable
as CronExpression,weekdays: null == weekdays ? _self.weekdays : weekdays // ignore: cast_nullable_to_non_nullable
as CronExpression,
  ));
}

/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get minutes {
  
  return $CronExpressionCopyWith<$Res>(_self.minutes, (value) {
    return _then(_self.copyWith(minutes: value));
  });
}/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get hours {
  
  return $CronExpressionCopyWith<$Res>(_self.hours, (value) {
    return _then(_self.copyWith(hours: value));
  });
}/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get days {
  
  return $CronExpressionCopyWith<$Res>(_self.days, (value) {
    return _then(_self.copyWith(days: value));
  });
}/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get months {
  
  return $CronExpressionCopyWith<$Res>(_self.months, (value) {
    return _then(_self.copyWith(months: value));
  });
}/// Create a copy of Cron
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get weekdays {
  
  return $CronExpressionCopyWith<$Res>(_self.weekdays, (value) {
    return _then(_self.copyWith(weekdays: value));
  });
}
}

/// @nodoc
mixin _$CronExpression {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CronExpression);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CronExpression()';
}


}

/// @nodoc
class $CronExpressionCopyWith<$Res>  {
$CronExpressionCopyWith(CronExpression _, $Res Function(CronExpression) __);
}


/// Adds pattern-matching-related methods to [CronExpression].
extension CronExpressionPatterns on CronExpression {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Any value)?  any,TResult Function( Single value)?  single,TResult Function( Range value)?  range,TResult Function( ValuesList value)?  list,TResult Function( Step value)?  step,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Any() when any != null:
return any(_that);case Single() when single != null:
return single(_that);case Range() when range != null:
return range(_that);case ValuesList() when list != null:
return list(_that);case Step() when step != null:
return step(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Any value)  any,required TResult Function( Single value)  single,required TResult Function( Range value)  range,required TResult Function( ValuesList value)  list,required TResult Function( Step value)  step,}){
final _that = this;
switch (_that) {
case Any():
return any(_that);case Single():
return single(_that);case Range():
return range(_that);case ValuesList():
return list(_that);case Step():
return step(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Any value)?  any,TResult? Function( Single value)?  single,TResult? Function( Range value)?  range,TResult? Function( ValuesList value)?  list,TResult? Function( Step value)?  step,}){
final _that = this;
switch (_that) {
case Any() when any != null:
return any(_that);case Single() when single != null:
return single(_that);case Range() when range != null:
return range(_that);case ValuesList() when list != null:
return list(_that);case Step() when step != null:
return step(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  any,TResult Function( int value)?  single,TResult Function( int from,  int to)?  range,TResult Function( List<CronExpression> values)?  list,TResult Function( CronExpression base,  int step)?  step,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Any() when any != null:
return any();case Single() when single != null:
return single(_that.value);case Range() when range != null:
return range(_that.from,_that.to);case ValuesList() when list != null:
return list(_that.values);case Step() when step != null:
return step(_that.base,_that.step);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  any,required TResult Function( int value)  single,required TResult Function( int from,  int to)  range,required TResult Function( List<CronExpression> values)  list,required TResult Function( CronExpression base,  int step)  step,}) {final _that = this;
switch (_that) {
case Any():
return any();case Single():
return single(_that.value);case Range():
return range(_that.from,_that.to);case ValuesList():
return list(_that.values);case Step():
return step(_that.base,_that.step);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  any,TResult? Function( int value)?  single,TResult? Function( int from,  int to)?  range,TResult? Function( List<CronExpression> values)?  list,TResult? Function( CronExpression base,  int step)?  step,}) {final _that = this;
switch (_that) {
case Any() when any != null:
return any();case Single() when single != null:
return single(_that.value);case Range() when range != null:
return range(_that.from,_that.to);case ValuesList() when list != null:
return list(_that.values);case Step() when step != null:
return step(_that.base,_that.step);case _:
  return null;

}
}

}

/// @nodoc


class Any implements CronExpression {
  const Any();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Any);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CronExpression.any()';
}


}




/// @nodoc


class Single implements CronExpression {
  const Single(this.value);
  

 final  int value;

/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleCopyWith<Single> get copyWith => _$SingleCopyWithImpl<Single>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Single&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CronExpression.single(value: $value)';
}


}

/// @nodoc
abstract mixin class $SingleCopyWith<$Res> implements $CronExpressionCopyWith<$Res> {
  factory $SingleCopyWith(Single value, $Res Function(Single) _then) = _$SingleCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class _$SingleCopyWithImpl<$Res>
    implements $SingleCopyWith<$Res> {
  _$SingleCopyWithImpl(this._self, this._then);

  final Single _self;
  final $Res Function(Single) _then;

/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(Single(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Range implements CronExpression {
  const Range({required this.from, required this.to});
  

 final  int from;
 final  int to;

/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RangeCopyWith<Range> get copyWith => _$RangeCopyWithImpl<Range>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Range&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'CronExpression.range(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $RangeCopyWith<$Res> implements $CronExpressionCopyWith<$Res> {
  factory $RangeCopyWith(Range value, $Res Function(Range) _then) = _$RangeCopyWithImpl;
@useResult
$Res call({
 int from, int to
});




}
/// @nodoc
class _$RangeCopyWithImpl<$Res>
    implements $RangeCopyWith<$Res> {
  _$RangeCopyWithImpl(this._self, this._then);

  final Range _self;
  final $Res Function(Range) _then;

/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? from = null,Object? to = null,}) {
  return _then(Range(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ValuesList implements CronExpression {
  const ValuesList(final  List<CronExpression> values): _values = values;
  

 final  List<CronExpression> _values;
 List<CronExpression> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}


/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValuesListCopyWith<ValuesList> get copyWith => _$ValuesListCopyWithImpl<ValuesList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValuesList&&const DeepCollectionEquality().equals(other._values, _values));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'CronExpression.list(values: $values)';
}


}

/// @nodoc
abstract mixin class $ValuesListCopyWith<$Res> implements $CronExpressionCopyWith<$Res> {
  factory $ValuesListCopyWith(ValuesList value, $Res Function(ValuesList) _then) = _$ValuesListCopyWithImpl;
@useResult
$Res call({
 List<CronExpression> values
});




}
/// @nodoc
class _$ValuesListCopyWithImpl<$Res>
    implements $ValuesListCopyWith<$Res> {
  _$ValuesListCopyWithImpl(this._self, this._then);

  final ValuesList _self;
  final $Res Function(ValuesList) _then;

/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? values = null,}) {
  return _then(ValuesList(
null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<CronExpression>,
  ));
}


}

/// @nodoc


class Step implements CronExpression {
  const Step({required this.base, required this.step});
  

 final  CronExpression base;
 final  int step;

/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepCopyWith<Step> get copyWith => _$StepCopyWithImpl<Step>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Step&&(identical(other.base, base) || other.base == base)&&(identical(other.step, step) || other.step == step));
}


@override
int get hashCode => Object.hash(runtimeType,base,step);

@override
String toString() {
  return 'CronExpression.step(base: $base, step: $step)';
}


}

/// @nodoc
abstract mixin class $StepCopyWith<$Res> implements $CronExpressionCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) _then) = _$StepCopyWithImpl;
@useResult
$Res call({
 CronExpression base, int step
});


$CronExpressionCopyWith<$Res> get base;

}
/// @nodoc
class _$StepCopyWithImpl<$Res>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._self, this._then);

  final Step _self;
  final $Res Function(Step) _then;

/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? base = null,Object? step = null,}) {
  return _then(Step(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as CronExpression,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CronExpression
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CronExpressionCopyWith<$Res> get base {
  
  return $CronExpressionCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
  });
}
}

// dart format on
