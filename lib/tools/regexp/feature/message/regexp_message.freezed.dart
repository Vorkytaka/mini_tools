// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regexp_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegExpMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(String testString) updateTestString,
    required TResult Function(RegExp? regexp) updateRegExp,
    required TResult Function(List<RegExpMatch>? matches) updateMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(String testString)? updateTestString,
    TResult? Function(RegExp? regexp)? updateRegExp,
    TResult? Function(List<RegExpMatch>? matches)? updateMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(String testString)? updateTestString,
    TResult Function(RegExp? regexp)? updateRegExp,
    TResult Function(List<RegExpMatch>? matches)? updateMatches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInput value) updateInput,
    required TResult Function(_UpdateTestString value) updateTestString,
    required TResult Function(_UpdateRegExp value) updateRegExp,
    required TResult Function(_UpdateMatches value) updateMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInput value)? updateInput,
    TResult? Function(_UpdateTestString value)? updateTestString,
    TResult? Function(_UpdateRegExp value)? updateRegExp,
    TResult? Function(_UpdateMatches value)? updateMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInput value)? updateInput,
    TResult Function(_UpdateTestString value)? updateTestString,
    TResult Function(_UpdateRegExp value)? updateRegExp,
    TResult Function(_UpdateMatches value)? updateMatches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegExpMessageCopyWith<$Res> {
  factory $RegExpMessageCopyWith(
          RegExpMessage value, $Res Function(RegExpMessage) then) =
      _$RegExpMessageCopyWithImpl<$Res, RegExpMessage>;
}

/// @nodoc
class _$RegExpMessageCopyWithImpl<$Res, $Val extends RegExpMessage>
    implements $RegExpMessageCopyWith<$Res> {
  _$RegExpMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateInputImplCopyWith<$Res> {
  factory _$$UpdateInputImplCopyWith(
          _$UpdateInputImpl value, $Res Function(_$UpdateInputImpl) then) =
      __$$UpdateInputImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$UpdateInputImplCopyWithImpl<$Res>
    extends _$RegExpMessageCopyWithImpl<$Res, _$UpdateInputImpl>
    implements _$$UpdateInputImplCopyWith<$Res> {
  __$$UpdateInputImplCopyWithImpl(
      _$UpdateInputImpl _value, $Res Function(_$UpdateInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$UpdateInputImpl(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateInputImpl implements _UpdateInput {
  const _$UpdateInputImpl(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'RegExpMessage.updateInput(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInputImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInputImplCopyWith<_$UpdateInputImpl> get copyWith =>
      __$$UpdateInputImplCopyWithImpl<_$UpdateInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(String testString) updateTestString,
    required TResult Function(RegExp? regexp) updateRegExp,
    required TResult Function(List<RegExpMatch>? matches) updateMatches,
  }) {
    return updateInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(String testString)? updateTestString,
    TResult? Function(RegExp? regexp)? updateRegExp,
    TResult? Function(List<RegExpMatch>? matches)? updateMatches,
  }) {
    return updateInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(String testString)? updateTestString,
    TResult Function(RegExp? regexp)? updateRegExp,
    TResult Function(List<RegExpMatch>? matches)? updateMatches,
    required TResult orElse(),
  }) {
    if (updateInput != null) {
      return updateInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInput value) updateInput,
    required TResult Function(_UpdateTestString value) updateTestString,
    required TResult Function(_UpdateRegExp value) updateRegExp,
    required TResult Function(_UpdateMatches value) updateMatches,
  }) {
    return updateInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInput value)? updateInput,
    TResult? Function(_UpdateTestString value)? updateTestString,
    TResult? Function(_UpdateRegExp value)? updateRegExp,
    TResult? Function(_UpdateMatches value)? updateMatches,
  }) {
    return updateInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInput value)? updateInput,
    TResult Function(_UpdateTestString value)? updateTestString,
    TResult Function(_UpdateRegExp value)? updateRegExp,
    TResult Function(_UpdateMatches value)? updateMatches,
    required TResult orElse(),
  }) {
    if (updateInput != null) {
      return updateInput(this);
    }
    return orElse();
  }
}

abstract class _UpdateInput implements RegExpMessage {
  const factory _UpdateInput(final String input) = _$UpdateInputImpl;

  String get input;

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInputImplCopyWith<_$UpdateInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTestStringImplCopyWith<$Res> {
  factory _$$UpdateTestStringImplCopyWith(_$UpdateTestStringImpl value,
          $Res Function(_$UpdateTestStringImpl) then) =
      __$$UpdateTestStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String testString});
}

/// @nodoc
class __$$UpdateTestStringImplCopyWithImpl<$Res>
    extends _$RegExpMessageCopyWithImpl<$Res, _$UpdateTestStringImpl>
    implements _$$UpdateTestStringImplCopyWith<$Res> {
  __$$UpdateTestStringImplCopyWithImpl(_$UpdateTestStringImpl _value,
      $Res Function(_$UpdateTestStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testString = null,
  }) {
    return _then(_$UpdateTestStringImpl(
      null == testString
          ? _value.testString
          : testString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTestStringImpl implements _UpdateTestString {
  const _$UpdateTestStringImpl(this.testString);

  @override
  final String testString;

  @override
  String toString() {
    return 'RegExpMessage.updateTestString(testString: $testString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTestStringImpl &&
            (identical(other.testString, testString) ||
                other.testString == testString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testString);

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTestStringImplCopyWith<_$UpdateTestStringImpl> get copyWith =>
      __$$UpdateTestStringImplCopyWithImpl<_$UpdateTestStringImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(String testString) updateTestString,
    required TResult Function(RegExp? regexp) updateRegExp,
    required TResult Function(List<RegExpMatch>? matches) updateMatches,
  }) {
    return updateTestString(testString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(String testString)? updateTestString,
    TResult? Function(RegExp? regexp)? updateRegExp,
    TResult? Function(List<RegExpMatch>? matches)? updateMatches,
  }) {
    return updateTestString?.call(testString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(String testString)? updateTestString,
    TResult Function(RegExp? regexp)? updateRegExp,
    TResult Function(List<RegExpMatch>? matches)? updateMatches,
    required TResult orElse(),
  }) {
    if (updateTestString != null) {
      return updateTestString(testString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInput value) updateInput,
    required TResult Function(_UpdateTestString value) updateTestString,
    required TResult Function(_UpdateRegExp value) updateRegExp,
    required TResult Function(_UpdateMatches value) updateMatches,
  }) {
    return updateTestString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInput value)? updateInput,
    TResult? Function(_UpdateTestString value)? updateTestString,
    TResult? Function(_UpdateRegExp value)? updateRegExp,
    TResult? Function(_UpdateMatches value)? updateMatches,
  }) {
    return updateTestString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInput value)? updateInput,
    TResult Function(_UpdateTestString value)? updateTestString,
    TResult Function(_UpdateRegExp value)? updateRegExp,
    TResult Function(_UpdateMatches value)? updateMatches,
    required TResult orElse(),
  }) {
    if (updateTestString != null) {
      return updateTestString(this);
    }
    return orElse();
  }
}

abstract class _UpdateTestString implements RegExpMessage {
  const factory _UpdateTestString(final String testString) =
      _$UpdateTestStringImpl;

  String get testString;

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTestStringImplCopyWith<_$UpdateTestStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRegExpImplCopyWith<$Res> {
  factory _$$UpdateRegExpImplCopyWith(
          _$UpdateRegExpImpl value, $Res Function(_$UpdateRegExpImpl) then) =
      __$$UpdateRegExpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegExp? regexp});
}

/// @nodoc
class __$$UpdateRegExpImplCopyWithImpl<$Res>
    extends _$RegExpMessageCopyWithImpl<$Res, _$UpdateRegExpImpl>
    implements _$$UpdateRegExpImplCopyWith<$Res> {
  __$$UpdateRegExpImplCopyWithImpl(
      _$UpdateRegExpImpl _value, $Res Function(_$UpdateRegExpImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regexp = freezed,
  }) {
    return _then(_$UpdateRegExpImpl(
      freezed == regexp
          ? _value.regexp
          : regexp // ignore: cast_nullable_to_non_nullable
              as RegExp?,
    ));
  }
}

/// @nodoc

class _$UpdateRegExpImpl implements _UpdateRegExp {
  const _$UpdateRegExpImpl(this.regexp);

  @override
  final RegExp? regexp;

  @override
  String toString() {
    return 'RegExpMessage.updateRegExp(regexp: $regexp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRegExpImpl &&
            (identical(other.regexp, regexp) || other.regexp == regexp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regexp);

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRegExpImplCopyWith<_$UpdateRegExpImpl> get copyWith =>
      __$$UpdateRegExpImplCopyWithImpl<_$UpdateRegExpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(String testString) updateTestString,
    required TResult Function(RegExp? regexp) updateRegExp,
    required TResult Function(List<RegExpMatch>? matches) updateMatches,
  }) {
    return updateRegExp(regexp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(String testString)? updateTestString,
    TResult? Function(RegExp? regexp)? updateRegExp,
    TResult? Function(List<RegExpMatch>? matches)? updateMatches,
  }) {
    return updateRegExp?.call(regexp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(String testString)? updateTestString,
    TResult Function(RegExp? regexp)? updateRegExp,
    TResult Function(List<RegExpMatch>? matches)? updateMatches,
    required TResult orElse(),
  }) {
    if (updateRegExp != null) {
      return updateRegExp(regexp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInput value) updateInput,
    required TResult Function(_UpdateTestString value) updateTestString,
    required TResult Function(_UpdateRegExp value) updateRegExp,
    required TResult Function(_UpdateMatches value) updateMatches,
  }) {
    return updateRegExp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInput value)? updateInput,
    TResult? Function(_UpdateTestString value)? updateTestString,
    TResult? Function(_UpdateRegExp value)? updateRegExp,
    TResult? Function(_UpdateMatches value)? updateMatches,
  }) {
    return updateRegExp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInput value)? updateInput,
    TResult Function(_UpdateTestString value)? updateTestString,
    TResult Function(_UpdateRegExp value)? updateRegExp,
    TResult Function(_UpdateMatches value)? updateMatches,
    required TResult orElse(),
  }) {
    if (updateRegExp != null) {
      return updateRegExp(this);
    }
    return orElse();
  }
}

abstract class _UpdateRegExp implements RegExpMessage {
  const factory _UpdateRegExp(final RegExp? regexp) = _$UpdateRegExpImpl;

  RegExp? get regexp;

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRegExpImplCopyWith<_$UpdateRegExpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMatchesImplCopyWith<$Res> {
  factory _$$UpdateMatchesImplCopyWith(
          _$UpdateMatchesImpl value, $Res Function(_$UpdateMatchesImpl) then) =
      __$$UpdateMatchesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RegExpMatch>? matches});
}

/// @nodoc
class __$$UpdateMatchesImplCopyWithImpl<$Res>
    extends _$RegExpMessageCopyWithImpl<$Res, _$UpdateMatchesImpl>
    implements _$$UpdateMatchesImplCopyWith<$Res> {
  __$$UpdateMatchesImplCopyWithImpl(
      _$UpdateMatchesImpl _value, $Res Function(_$UpdateMatchesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = freezed,
  }) {
    return _then(_$UpdateMatchesImpl(
      freezed == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<RegExpMatch>?,
    ));
  }
}

/// @nodoc

class _$UpdateMatchesImpl implements _UpdateMatches {
  const _$UpdateMatchesImpl(final List<RegExpMatch>? matches)
      : _matches = matches;

  final List<RegExpMatch>? _matches;
  @override
  List<RegExpMatch>? get matches {
    final value = _matches;
    if (value == null) return null;
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegExpMessage.updateMatches(matches: $matches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMatchesImpl &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_matches));

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMatchesImplCopyWith<_$UpdateMatchesImpl> get copyWith =>
      __$$UpdateMatchesImplCopyWithImpl<_$UpdateMatchesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) updateInput,
    required TResult Function(String testString) updateTestString,
    required TResult Function(RegExp? regexp) updateRegExp,
    required TResult Function(List<RegExpMatch>? matches) updateMatches,
  }) {
    return updateMatches(matches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? updateInput,
    TResult? Function(String testString)? updateTestString,
    TResult? Function(RegExp? regexp)? updateRegExp,
    TResult? Function(List<RegExpMatch>? matches)? updateMatches,
  }) {
    return updateMatches?.call(matches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? updateInput,
    TResult Function(String testString)? updateTestString,
    TResult Function(RegExp? regexp)? updateRegExp,
    TResult Function(List<RegExpMatch>? matches)? updateMatches,
    required TResult orElse(),
  }) {
    if (updateMatches != null) {
      return updateMatches(matches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInput value) updateInput,
    required TResult Function(_UpdateTestString value) updateTestString,
    required TResult Function(_UpdateRegExp value) updateRegExp,
    required TResult Function(_UpdateMatches value) updateMatches,
  }) {
    return updateMatches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInput value)? updateInput,
    TResult? Function(_UpdateTestString value)? updateTestString,
    TResult? Function(_UpdateRegExp value)? updateRegExp,
    TResult? Function(_UpdateMatches value)? updateMatches,
  }) {
    return updateMatches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInput value)? updateInput,
    TResult Function(_UpdateTestString value)? updateTestString,
    TResult Function(_UpdateRegExp value)? updateRegExp,
    TResult Function(_UpdateMatches value)? updateMatches,
    required TResult orElse(),
  }) {
    if (updateMatches != null) {
      return updateMatches(this);
    }
    return orElse();
  }
}

abstract class _UpdateMatches implements RegExpMessage {
  const factory _UpdateMatches(final List<RegExpMatch>? matches) =
      _$UpdateMatchesImpl;

  List<RegExpMatch>? get matches;

  /// Create a copy of RegExpMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMatchesImplCopyWith<_$UpdateMatchesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
