// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regexp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegExpState {
  String get input => throw _privateConstructorUsedError;
  String get testString => throw _privateConstructorUsedError;
  RegExp? get regexp => throw _privateConstructorUsedError;
  Iterable<RegExpMatch>? get matches => throw _privateConstructorUsedError;

  /// Create a copy of RegExpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegExpStateCopyWith<RegExpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegExpStateCopyWith<$Res> {
  factory $RegExpStateCopyWith(
          RegExpState value, $Res Function(RegExpState) then) =
      _$RegExpStateCopyWithImpl<$Res, RegExpState>;
  @useResult
  $Res call(
      {String input,
      String testString,
      RegExp? regexp,
      Iterable<RegExpMatch>? matches});
}

/// @nodoc
class _$RegExpStateCopyWithImpl<$Res, $Val extends RegExpState>
    implements $RegExpStateCopyWith<$Res> {
  _$RegExpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegExpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? testString = null,
    Object? regexp = freezed,
    Object? matches = freezed,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      testString: null == testString
          ? _value.testString
          : testString // ignore: cast_nullable_to_non_nullable
              as String,
      regexp: freezed == regexp
          ? _value.regexp
          : regexp // ignore: cast_nullable_to_non_nullable
              as RegExp?,
      matches: freezed == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as Iterable<RegExpMatch>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegExpStateImplCopyWith<$Res>
    implements $RegExpStateCopyWith<$Res> {
  factory _$$RegExpStateImplCopyWith(
          _$RegExpStateImpl value, $Res Function(_$RegExpStateImpl) then) =
      __$$RegExpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String input,
      String testString,
      RegExp? regexp,
      Iterable<RegExpMatch>? matches});
}

/// @nodoc
class __$$RegExpStateImplCopyWithImpl<$Res>
    extends _$RegExpStateCopyWithImpl<$Res, _$RegExpStateImpl>
    implements _$$RegExpStateImplCopyWith<$Res> {
  __$$RegExpStateImplCopyWithImpl(
      _$RegExpStateImpl _value, $Res Function(_$RegExpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegExpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? testString = null,
    Object? regexp = freezed,
    Object? matches = freezed,
  }) {
    return _then(_$RegExpStateImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      testString: null == testString
          ? _value.testString
          : testString // ignore: cast_nullable_to_non_nullable
              as String,
      regexp: freezed == regexp
          ? _value.regexp
          : regexp // ignore: cast_nullable_to_non_nullable
              as RegExp?,
      matches: freezed == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as Iterable<RegExpMatch>?,
    ));
  }
}

/// @nodoc

class _$RegExpStateImpl implements _RegExpState {
  const _$RegExpStateImpl(
      {required this.input,
      required this.testString,
      required this.regexp,
      required this.matches});

  @override
  final String input;
  @override
  final String testString;
  @override
  final RegExp? regexp;
  @override
  final Iterable<RegExpMatch>? matches;

  @override
  String toString() {
    return 'RegExpState(input: $input, testString: $testString, regexp: $regexp, matches: $matches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegExpStateImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.testString, testString) ||
                other.testString == testString) &&
            (identical(other.regexp, regexp) || other.regexp == regexp) &&
            const DeepCollectionEquality().equals(other.matches, matches));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input, testString, regexp,
      const DeepCollectionEquality().hash(matches));

  /// Create a copy of RegExpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegExpStateImplCopyWith<_$RegExpStateImpl> get copyWith =>
      __$$RegExpStateImplCopyWithImpl<_$RegExpStateImpl>(this, _$identity);
}

abstract class _RegExpState implements RegExpState {
  const factory _RegExpState(
      {required final String input,
      required final String testString,
      required final RegExp? regexp,
      required final Iterable<RegExpMatch>? matches}) = _$RegExpStateImpl;

  @override
  String get input;
  @override
  String get testString;
  @override
  RegExp? get regexp;
  @override
  Iterable<RegExpMatch>? get matches;

  /// Create a copy of RegExpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegExpStateImplCopyWith<_$RegExpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
