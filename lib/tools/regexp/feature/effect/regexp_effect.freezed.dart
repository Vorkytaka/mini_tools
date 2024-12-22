// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regexp_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegExpEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) parseRegExp,
    required TResult Function(RegExp? regexp, String testString) findMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? parseRegExp,
    TResult? Function(RegExp? regexp, String testString)? findMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? parseRegExp,
    TResult Function(RegExp? regexp, String testString)? findMatches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParseRegExp value) parseRegExp,
    required TResult Function(_FindMatches value) findMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParseRegExp value)? parseRegExp,
    TResult? Function(_FindMatches value)? findMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParseRegExp value)? parseRegExp,
    TResult Function(_FindMatches value)? findMatches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegExpEffectCopyWith<$Res> {
  factory $RegExpEffectCopyWith(
          RegExpEffect value, $Res Function(RegExpEffect) then) =
      _$RegExpEffectCopyWithImpl<$Res, RegExpEffect>;
}

/// @nodoc
class _$RegExpEffectCopyWithImpl<$Res, $Val extends RegExpEffect>
    implements $RegExpEffectCopyWith<$Res> {
  _$RegExpEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegExpEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ParseRegExpImplCopyWith<$Res> {
  factory _$$ParseRegExpImplCopyWith(
          _$ParseRegExpImpl value, $Res Function(_$ParseRegExpImpl) then) =
      __$$ParseRegExpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$ParseRegExpImplCopyWithImpl<$Res>
    extends _$RegExpEffectCopyWithImpl<$Res, _$ParseRegExpImpl>
    implements _$$ParseRegExpImplCopyWith<$Res> {
  __$$ParseRegExpImplCopyWithImpl(
      _$ParseRegExpImpl _value, $Res Function(_$ParseRegExpImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegExpEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$ParseRegExpImpl(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParseRegExpImpl implements _ParseRegExp {
  const _$ParseRegExpImpl(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'RegExpEffect.parseRegExp(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseRegExpImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  /// Create a copy of RegExpEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseRegExpImplCopyWith<_$ParseRegExpImpl> get copyWith =>
      __$$ParseRegExpImplCopyWithImpl<_$ParseRegExpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) parseRegExp,
    required TResult Function(RegExp? regexp, String testString) findMatches,
  }) {
    return parseRegExp(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? parseRegExp,
    TResult? Function(RegExp? regexp, String testString)? findMatches,
  }) {
    return parseRegExp?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? parseRegExp,
    TResult Function(RegExp? regexp, String testString)? findMatches,
    required TResult orElse(),
  }) {
    if (parseRegExp != null) {
      return parseRegExp(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParseRegExp value) parseRegExp,
    required TResult Function(_FindMatches value) findMatches,
  }) {
    return parseRegExp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParseRegExp value)? parseRegExp,
    TResult? Function(_FindMatches value)? findMatches,
  }) {
    return parseRegExp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParseRegExp value)? parseRegExp,
    TResult Function(_FindMatches value)? findMatches,
    required TResult orElse(),
  }) {
    if (parseRegExp != null) {
      return parseRegExp(this);
    }
    return orElse();
  }
}

abstract class _ParseRegExp implements RegExpEffect {
  const factory _ParseRegExp(final String input) = _$ParseRegExpImpl;

  String get input;

  /// Create a copy of RegExpEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParseRegExpImplCopyWith<_$ParseRegExpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FindMatchesImplCopyWith<$Res> {
  factory _$$FindMatchesImplCopyWith(
          _$FindMatchesImpl value, $Res Function(_$FindMatchesImpl) then) =
      __$$FindMatchesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegExp? regexp, String testString});
}

/// @nodoc
class __$$FindMatchesImplCopyWithImpl<$Res>
    extends _$RegExpEffectCopyWithImpl<$Res, _$FindMatchesImpl>
    implements _$$FindMatchesImplCopyWith<$Res> {
  __$$FindMatchesImplCopyWithImpl(
      _$FindMatchesImpl _value, $Res Function(_$FindMatchesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegExpEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regexp = freezed,
    Object? testString = null,
  }) {
    return _then(_$FindMatchesImpl(
      regexp: freezed == regexp
          ? _value.regexp
          : regexp // ignore: cast_nullable_to_non_nullable
              as RegExp?,
      testString: null == testString
          ? _value.testString
          : testString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FindMatchesImpl implements _FindMatches {
  const _$FindMatchesImpl({required this.regexp, required this.testString});

  @override
  final RegExp? regexp;
  @override
  final String testString;

  @override
  String toString() {
    return 'RegExpEffect.findMatches(regexp: $regexp, testString: $testString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindMatchesImpl &&
            (identical(other.regexp, regexp) || other.regexp == regexp) &&
            (identical(other.testString, testString) ||
                other.testString == testString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regexp, testString);

  /// Create a copy of RegExpEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindMatchesImplCopyWith<_$FindMatchesImpl> get copyWith =>
      __$$FindMatchesImplCopyWithImpl<_$FindMatchesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) parseRegExp,
    required TResult Function(RegExp? regexp, String testString) findMatches,
  }) {
    return findMatches(regexp, testString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? parseRegExp,
    TResult? Function(RegExp? regexp, String testString)? findMatches,
  }) {
    return findMatches?.call(regexp, testString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? parseRegExp,
    TResult Function(RegExp? regexp, String testString)? findMatches,
    required TResult orElse(),
  }) {
    if (findMatches != null) {
      return findMatches(regexp, testString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParseRegExp value) parseRegExp,
    required TResult Function(_FindMatches value) findMatches,
  }) {
    return findMatches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParseRegExp value)? parseRegExp,
    TResult? Function(_FindMatches value)? findMatches,
  }) {
    return findMatches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParseRegExp value)? parseRegExp,
    TResult Function(_FindMatches value)? findMatches,
    required TResult orElse(),
  }) {
    if (findMatches != null) {
      return findMatches(this);
    }
    return orElse();
  }
}

abstract class _FindMatches implements RegExpEffect {
  const factory _FindMatches(
      {required final RegExp? regexp,
      required final String testString}) = _$FindMatchesImpl;

  RegExp? get regexp;
  String get testString;

  /// Create a copy of RegExpEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindMatchesImplCopyWith<_$FindMatchesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
