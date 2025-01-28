// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cron_parser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Cron {
  CronExpression get minutes => throw _privateConstructorUsedError;
  CronExpression get hours => throw _privateConstructorUsedError;
  CronExpression get days => throw _privateConstructorUsedError;
  CronExpression get months => throw _privateConstructorUsedError;
  CronExpression get weekdays => throw _privateConstructorUsedError;

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CronCopyWith<Cron> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CronCopyWith<$Res> {
  factory $CronCopyWith(Cron value, $Res Function(Cron) then) =
      _$CronCopyWithImpl<$Res, Cron>;
  @useResult
  $Res call(
      {CronExpression minutes,
      CronExpression hours,
      CronExpression days,
      CronExpression months,
      CronExpression weekdays});

  $CronExpressionCopyWith<$Res> get minutes;
  $CronExpressionCopyWith<$Res> get hours;
  $CronExpressionCopyWith<$Res> get days;
  $CronExpressionCopyWith<$Res> get months;
  $CronExpressionCopyWith<$Res> get weekdays;
}

/// @nodoc
class _$CronCopyWithImpl<$Res, $Val extends Cron>
    implements $CronCopyWith<$Res> {
  _$CronCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
    Object? hours = null,
    Object? days = null,
    Object? months = null,
    Object? weekdays = null,
  }) {
    return _then(_value.copyWith(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      weekdays: null == weekdays
          ? _value.weekdays
          : weekdays // ignore: cast_nullable_to_non_nullable
              as CronExpression,
    ) as $Val);
  }

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CronExpressionCopyWith<$Res> get minutes {
    return $CronExpressionCopyWith<$Res>(_value.minutes, (value) {
      return _then(_value.copyWith(minutes: value) as $Val);
    });
  }

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CronExpressionCopyWith<$Res> get hours {
    return $CronExpressionCopyWith<$Res>(_value.hours, (value) {
      return _then(_value.copyWith(hours: value) as $Val);
    });
  }

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CronExpressionCopyWith<$Res> get days {
    return $CronExpressionCopyWith<$Res>(_value.days, (value) {
      return _then(_value.copyWith(days: value) as $Val);
    });
  }

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CronExpressionCopyWith<$Res> get months {
    return $CronExpressionCopyWith<$Res>(_value.months, (value) {
      return _then(_value.copyWith(months: value) as $Val);
    });
  }

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CronExpressionCopyWith<$Res> get weekdays {
    return $CronExpressionCopyWith<$Res>(_value.weekdays, (value) {
      return _then(_value.copyWith(weekdays: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CronImplCopyWith<$Res> implements $CronCopyWith<$Res> {
  factory _$$CronImplCopyWith(
          _$CronImpl value, $Res Function(_$CronImpl) then) =
      __$$CronImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CronExpression minutes,
      CronExpression hours,
      CronExpression days,
      CronExpression months,
      CronExpression weekdays});

  @override
  $CronExpressionCopyWith<$Res> get minutes;
  @override
  $CronExpressionCopyWith<$Res> get hours;
  @override
  $CronExpressionCopyWith<$Res> get days;
  @override
  $CronExpressionCopyWith<$Res> get months;
  @override
  $CronExpressionCopyWith<$Res> get weekdays;
}

/// @nodoc
class __$$CronImplCopyWithImpl<$Res>
    extends _$CronCopyWithImpl<$Res, _$CronImpl>
    implements _$$CronImplCopyWith<$Res> {
  __$$CronImplCopyWithImpl(_$CronImpl _value, $Res Function(_$CronImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
    Object? hours = null,
    Object? days = null,
    Object? months = null,
    Object? weekdays = null,
  }) {
    return _then(_$CronImpl(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      weekdays: null == weekdays
          ? _value.weekdays
          : weekdays // ignore: cast_nullable_to_non_nullable
              as CronExpression,
    ));
  }
}

/// @nodoc

class _$CronImpl implements _Cron {
  const _$CronImpl(
      {required this.minutes,
      required this.hours,
      required this.days,
      required this.months,
      required this.weekdays});

  @override
  final CronExpression minutes;
  @override
  final CronExpression hours;
  @override
  final CronExpression days;
  @override
  final CronExpression months;
  @override
  final CronExpression weekdays;

  @override
  String toString() {
    return 'Cron(minutes: $minutes, hours: $hours, days: $days, months: $months, weekdays: $weekdays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CronImpl &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.months, months) || other.months == months) &&
            (identical(other.weekdays, weekdays) ||
                other.weekdays == weekdays));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, minutes, hours, days, months, weekdays);

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CronImplCopyWith<_$CronImpl> get copyWith =>
      __$$CronImplCopyWithImpl<_$CronImpl>(this, _$identity);
}

abstract class _Cron implements Cron {
  const factory _Cron(
      {required final CronExpression minutes,
      required final CronExpression hours,
      required final CronExpression days,
      required final CronExpression months,
      required final CronExpression weekdays}) = _$CronImpl;

  @override
  CronExpression get minutes;
  @override
  CronExpression get hours;
  @override
  CronExpression get days;
  @override
  CronExpression get months;
  @override
  CronExpression get weekdays;

  /// Create a copy of Cron
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CronImplCopyWith<_$CronImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CronExpression {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() any,
    required TResult Function(int value) single,
    required TResult Function(int from, int to) range,
    required TResult Function(List<int> values) list,
    required TResult Function(CronExpression base, int step) step,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? any,
    TResult? Function(int value)? single,
    TResult? Function(int from, int to)? range,
    TResult? Function(List<int> values)? list,
    TResult? Function(CronExpression base, int step)? step,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? any,
    TResult Function(int value)? single,
    TResult Function(int from, int to)? range,
    TResult Function(List<int> values)? list,
    TResult Function(CronExpression base, int step)? step,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Any value) any,
    required TResult Function(Single value) single,
    required TResult Function(Range value) range,
    required TResult Function(ValuesList value) list,
    required TResult Function(Step value) step,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Any value)? any,
    TResult? Function(Single value)? single,
    TResult? Function(Range value)? range,
    TResult? Function(ValuesList value)? list,
    TResult? Function(Step value)? step,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Any value)? any,
    TResult Function(Single value)? single,
    TResult Function(Range value)? range,
    TResult Function(ValuesList value)? list,
    TResult Function(Step value)? step,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CronExpressionCopyWith<$Res> {
  factory $CronExpressionCopyWith(
          CronExpression value, $Res Function(CronExpression) then) =
      _$CronExpressionCopyWithImpl<$Res, CronExpression>;
}

/// @nodoc
class _$CronExpressionCopyWithImpl<$Res, $Val extends CronExpression>
    implements $CronExpressionCopyWith<$Res> {
  _$CronExpressionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AnyImplCopyWith<$Res> {
  factory _$$AnyImplCopyWith(_$AnyImpl value, $Res Function(_$AnyImpl) then) =
      __$$AnyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnyImplCopyWithImpl<$Res>
    extends _$CronExpressionCopyWithImpl<$Res, _$AnyImpl>
    implements _$$AnyImplCopyWith<$Res> {
  __$$AnyImplCopyWithImpl(_$AnyImpl _value, $Res Function(_$AnyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnyImpl implements Any {
  const _$AnyImpl();

  @override
  String toString() {
    return 'CronExpression.any()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() any,
    required TResult Function(int value) single,
    required TResult Function(int from, int to) range,
    required TResult Function(List<int> values) list,
    required TResult Function(CronExpression base, int step) step,
  }) {
    return any();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? any,
    TResult? Function(int value)? single,
    TResult? Function(int from, int to)? range,
    TResult? Function(List<int> values)? list,
    TResult? Function(CronExpression base, int step)? step,
  }) {
    return any?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? any,
    TResult Function(int value)? single,
    TResult Function(int from, int to)? range,
    TResult Function(List<int> values)? list,
    TResult Function(CronExpression base, int step)? step,
    required TResult orElse(),
  }) {
    if (any != null) {
      return any();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Any value) any,
    required TResult Function(Single value) single,
    required TResult Function(Range value) range,
    required TResult Function(ValuesList value) list,
    required TResult Function(Step value) step,
  }) {
    return any(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Any value)? any,
    TResult? Function(Single value)? single,
    TResult? Function(Range value)? range,
    TResult? Function(ValuesList value)? list,
    TResult? Function(Step value)? step,
  }) {
    return any?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Any value)? any,
    TResult Function(Single value)? single,
    TResult Function(Range value)? range,
    TResult Function(ValuesList value)? list,
    TResult Function(Step value)? step,
    required TResult orElse(),
  }) {
    if (any != null) {
      return any(this);
    }
    return orElse();
  }
}

abstract class Any implements CronExpression {
  const factory Any() = _$AnyImpl;
}

/// @nodoc
abstract class _$$SingleImplCopyWith<$Res> {
  factory _$$SingleImplCopyWith(
          _$SingleImpl value, $Res Function(_$SingleImpl) then) =
      __$$SingleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$SingleImplCopyWithImpl<$Res>
    extends _$CronExpressionCopyWithImpl<$Res, _$SingleImpl>
    implements _$$SingleImplCopyWith<$Res> {
  __$$SingleImplCopyWithImpl(
      _$SingleImpl _value, $Res Function(_$SingleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SingleImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SingleImpl implements Single {
  const _$SingleImpl(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'CronExpression.single(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleImplCopyWith<_$SingleImpl> get copyWith =>
      __$$SingleImplCopyWithImpl<_$SingleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() any,
    required TResult Function(int value) single,
    required TResult Function(int from, int to) range,
    required TResult Function(List<int> values) list,
    required TResult Function(CronExpression base, int step) step,
  }) {
    return single(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? any,
    TResult? Function(int value)? single,
    TResult? Function(int from, int to)? range,
    TResult? Function(List<int> values)? list,
    TResult? Function(CronExpression base, int step)? step,
  }) {
    return single?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? any,
    TResult Function(int value)? single,
    TResult Function(int from, int to)? range,
    TResult Function(List<int> values)? list,
    TResult Function(CronExpression base, int step)? step,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Any value) any,
    required TResult Function(Single value) single,
    required TResult Function(Range value) range,
    required TResult Function(ValuesList value) list,
    required TResult Function(Step value) step,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Any value)? any,
    TResult? Function(Single value)? single,
    TResult? Function(Range value)? range,
    TResult? Function(ValuesList value)? list,
    TResult? Function(Step value)? step,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Any value)? any,
    TResult Function(Single value)? single,
    TResult Function(Range value)? range,
    TResult Function(ValuesList value)? list,
    TResult Function(Step value)? step,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }
}

abstract class Single implements CronExpression {
  const factory Single(final int value) = _$SingleImpl;

  int get value;

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleImplCopyWith<_$SingleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RangeImplCopyWith<$Res> {
  factory _$$RangeImplCopyWith(
          _$RangeImpl value, $Res Function(_$RangeImpl) then) =
      __$$RangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int from, int to});
}

/// @nodoc
class __$$RangeImplCopyWithImpl<$Res>
    extends _$CronExpressionCopyWithImpl<$Res, _$RangeImpl>
    implements _$$RangeImplCopyWith<$Res> {
  __$$RangeImplCopyWithImpl(
      _$RangeImpl _value, $Res Function(_$RangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$RangeImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RangeImpl implements Range {
  const _$RangeImpl({required this.from, required this.to});

  @override
  final int from;
  @override
  final int to;

  @override
  String toString() {
    return 'CronExpression.range(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RangeImplCopyWith<_$RangeImpl> get copyWith =>
      __$$RangeImplCopyWithImpl<_$RangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() any,
    required TResult Function(int value) single,
    required TResult Function(int from, int to) range,
    required TResult Function(List<int> values) list,
    required TResult Function(CronExpression base, int step) step,
  }) {
    return range(from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? any,
    TResult? Function(int value)? single,
    TResult? Function(int from, int to)? range,
    TResult? Function(List<int> values)? list,
    TResult? Function(CronExpression base, int step)? step,
  }) {
    return range?.call(from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? any,
    TResult Function(int value)? single,
    TResult Function(int from, int to)? range,
    TResult Function(List<int> values)? list,
    TResult Function(CronExpression base, int step)? step,
    required TResult orElse(),
  }) {
    if (range != null) {
      return range(from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Any value) any,
    required TResult Function(Single value) single,
    required TResult Function(Range value) range,
    required TResult Function(ValuesList value) list,
    required TResult Function(Step value) step,
  }) {
    return range(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Any value)? any,
    TResult? Function(Single value)? single,
    TResult? Function(Range value)? range,
    TResult? Function(ValuesList value)? list,
    TResult? Function(Step value)? step,
  }) {
    return range?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Any value)? any,
    TResult Function(Single value)? single,
    TResult Function(Range value)? range,
    TResult Function(ValuesList value)? list,
    TResult Function(Step value)? step,
    required TResult orElse(),
  }) {
    if (range != null) {
      return range(this);
    }
    return orElse();
  }
}

abstract class Range implements CronExpression {
  const factory Range({required final int from, required final int to}) =
      _$RangeImpl;

  int get from;
  int get to;

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RangeImplCopyWith<_$RangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValuesListImplCopyWith<$Res> {
  factory _$$ValuesListImplCopyWith(
          _$ValuesListImpl value, $Res Function(_$ValuesListImpl) then) =
      __$$ValuesListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> values});
}

/// @nodoc
class __$$ValuesListImplCopyWithImpl<$Res>
    extends _$CronExpressionCopyWithImpl<$Res, _$ValuesListImpl>
    implements _$$ValuesListImplCopyWith<$Res> {
  __$$ValuesListImplCopyWithImpl(
      _$ValuesListImpl _value, $Res Function(_$ValuesListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$ValuesListImpl(
      null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ValuesListImpl implements ValuesList {
  const _$ValuesListImpl(final List<int> values) : _values = values;

  final List<int> _values;
  @override
  List<int> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'CronExpression.list(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValuesListImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValuesListImplCopyWith<_$ValuesListImpl> get copyWith =>
      __$$ValuesListImplCopyWithImpl<_$ValuesListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() any,
    required TResult Function(int value) single,
    required TResult Function(int from, int to) range,
    required TResult Function(List<int> values) list,
    required TResult Function(CronExpression base, int step) step,
  }) {
    return list(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? any,
    TResult? Function(int value)? single,
    TResult? Function(int from, int to)? range,
    TResult? Function(List<int> values)? list,
    TResult? Function(CronExpression base, int step)? step,
  }) {
    return list?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? any,
    TResult Function(int value)? single,
    TResult Function(int from, int to)? range,
    TResult Function(List<int> values)? list,
    TResult Function(CronExpression base, int step)? step,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Any value) any,
    required TResult Function(Single value) single,
    required TResult Function(Range value) range,
    required TResult Function(ValuesList value) list,
    required TResult Function(Step value) step,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Any value)? any,
    TResult? Function(Single value)? single,
    TResult? Function(Range value)? range,
    TResult? Function(ValuesList value)? list,
    TResult? Function(Step value)? step,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Any value)? any,
    TResult Function(Single value)? single,
    TResult Function(Range value)? range,
    TResult Function(ValuesList value)? list,
    TResult Function(Step value)? step,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class ValuesList implements CronExpression {
  const factory ValuesList(final List<int> values) = _$ValuesListImpl;

  List<int> get values;

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValuesListImplCopyWith<_$ValuesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StepImplCopyWith<$Res> {
  factory _$$StepImplCopyWith(
          _$StepImpl value, $Res Function(_$StepImpl) then) =
      __$$StepImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CronExpression base, int step});

  $CronExpressionCopyWith<$Res> get base;
}

/// @nodoc
class __$$StepImplCopyWithImpl<$Res>
    extends _$CronExpressionCopyWithImpl<$Res, _$StepImpl>
    implements _$$StepImplCopyWith<$Res> {
  __$$StepImplCopyWithImpl(_$StepImpl _value, $Res Function(_$StepImpl) _then)
      : super(_value, _then);

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? step = null,
  }) {
    return _then(_$StepImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as CronExpression,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CronExpressionCopyWith<$Res> get base {
    return $CronExpressionCopyWith<$Res>(_value.base, (value) {
      return _then(_value.copyWith(base: value));
    });
  }
}

/// @nodoc

class _$StepImpl implements Step {
  const _$StepImpl({required this.base, required this.step});

  @override
  final CronExpression base;
  @override
  final int step;

  @override
  String toString() {
    return 'CronExpression.step(base: $base, step: $step)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, base, step);

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      __$$StepImplCopyWithImpl<_$StepImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() any,
    required TResult Function(int value) single,
    required TResult Function(int from, int to) range,
    required TResult Function(List<int> values) list,
    required TResult Function(CronExpression base, int step) step,
  }) {
    return step(base, this.step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? any,
    TResult? Function(int value)? single,
    TResult? Function(int from, int to)? range,
    TResult? Function(List<int> values)? list,
    TResult? Function(CronExpression base, int step)? step,
  }) {
    return step?.call(base, this.step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? any,
    TResult Function(int value)? single,
    TResult Function(int from, int to)? range,
    TResult Function(List<int> values)? list,
    TResult Function(CronExpression base, int step)? step,
    required TResult orElse(),
  }) {
    if (step != null) {
      return step(base, this.step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Any value) any,
    required TResult Function(Single value) single,
    required TResult Function(Range value) range,
    required TResult Function(ValuesList value) list,
    required TResult Function(Step value) step,
  }) {
    return step(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Any value)? any,
    TResult? Function(Single value)? single,
    TResult? Function(Range value)? range,
    TResult? Function(ValuesList value)? list,
    TResult? Function(Step value)? step,
  }) {
    return step?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Any value)? any,
    TResult Function(Single value)? single,
    TResult Function(Range value)? range,
    TResult Function(ValuesList value)? list,
    TResult Function(Step value)? step,
    required TResult orElse(),
  }) {
    if (step != null) {
      return step(this);
    }
    return orElse();
  }
}

abstract class Step implements CronExpression {
  const factory Step(
      {required final CronExpression base,
      required final int step}) = _$StepImpl;

  CronExpression get base;
  int get step;

  /// Create a copy of CronExpression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
