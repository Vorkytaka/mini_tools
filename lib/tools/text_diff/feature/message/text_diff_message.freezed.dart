// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_diff_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TextDiffMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateNewText,
    required TResult Function(String text) updateOldText,
    required TResult Function(List<Diff> diffs) updateDiffs,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateNewText,
    TResult? Function(String text)? updateOldText,
    TResult? Function(List<Diff> diffs)? updateDiffs,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateNewText,
    TResult Function(String text)? updateOldText,
    TResult Function(List<Diff> diffs)? updateDiffs,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateNewTextMessage value) updateNewText,
    required TResult Function(UpdateOldTextMessage value) updateOldText,
    required TResult Function(UpdateDiffsMessage value) updateDiffs,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateNewTextMessage value)? updateNewText,
    TResult? Function(UpdateOldTextMessage value)? updateOldText,
    TResult? Function(UpdateDiffsMessage value)? updateDiffs,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateNewTextMessage value)? updateNewText,
    TResult Function(UpdateOldTextMessage value)? updateOldText,
    TResult Function(UpdateDiffsMessage value)? updateDiffs,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDiffMessageCopyWith<$Res> {
  factory $TextDiffMessageCopyWith(
    TextDiffMessage value,
    $Res Function(TextDiffMessage) then,
  ) = _$TextDiffMessageCopyWithImpl<$Res, TextDiffMessage>;
}

/// @nodoc
class _$TextDiffMessageCopyWithImpl<$Res, $Val extends TextDiffMessage>
    implements $TextDiffMessageCopyWith<$Res> {
  _$TextDiffMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateNewTextMessageImplCopyWith<$Res> {
  factory _$$UpdateNewTextMessageImplCopyWith(
    _$UpdateNewTextMessageImpl value,
    $Res Function(_$UpdateNewTextMessageImpl) then,
  ) = __$$UpdateNewTextMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$UpdateNewTextMessageImplCopyWithImpl<$Res>
    extends _$TextDiffMessageCopyWithImpl<$Res, _$UpdateNewTextMessageImpl>
    implements _$$UpdateNewTextMessageImplCopyWith<$Res> {
  __$$UpdateNewTextMessageImplCopyWithImpl(
    _$UpdateNewTextMessageImpl _value,
    $Res Function(_$UpdateNewTextMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _$UpdateNewTextMessageImpl(
        null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateNewTextMessageImpl implements UpdateNewTextMessage {
  const _$UpdateNewTextMessageImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'TextDiffMessage.updateNewText(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNewTextMessageImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNewTextMessageImplCopyWith<_$UpdateNewTextMessageImpl>
  get copyWith =>
      __$$UpdateNewTextMessageImplCopyWithImpl<_$UpdateNewTextMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateNewText,
    required TResult Function(String text) updateOldText,
    required TResult Function(List<Diff> diffs) updateDiffs,
  }) {
    return updateNewText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateNewText,
    TResult? Function(String text)? updateOldText,
    TResult? Function(List<Diff> diffs)? updateDiffs,
  }) {
    return updateNewText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateNewText,
    TResult Function(String text)? updateOldText,
    TResult Function(List<Diff> diffs)? updateDiffs,
    required TResult orElse(),
  }) {
    if (updateNewText != null) {
      return updateNewText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateNewTextMessage value) updateNewText,
    required TResult Function(UpdateOldTextMessage value) updateOldText,
    required TResult Function(UpdateDiffsMessage value) updateDiffs,
  }) {
    return updateNewText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateNewTextMessage value)? updateNewText,
    TResult? Function(UpdateOldTextMessage value)? updateOldText,
    TResult? Function(UpdateDiffsMessage value)? updateDiffs,
  }) {
    return updateNewText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateNewTextMessage value)? updateNewText,
    TResult Function(UpdateOldTextMessage value)? updateOldText,
    TResult Function(UpdateDiffsMessage value)? updateDiffs,
    required TResult orElse(),
  }) {
    if (updateNewText != null) {
      return updateNewText(this);
    }
    return orElse();
  }
}

abstract class UpdateNewTextMessage implements TextDiffMessage {
  const factory UpdateNewTextMessage(final String text) =
      _$UpdateNewTextMessageImpl;

  String get text;

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNewTextMessageImplCopyWith<_$UpdateNewTextMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOldTextMessageImplCopyWith<$Res> {
  factory _$$UpdateOldTextMessageImplCopyWith(
    _$UpdateOldTextMessageImpl value,
    $Res Function(_$UpdateOldTextMessageImpl) then,
  ) = __$$UpdateOldTextMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$UpdateOldTextMessageImplCopyWithImpl<$Res>
    extends _$TextDiffMessageCopyWithImpl<$Res, _$UpdateOldTextMessageImpl>
    implements _$$UpdateOldTextMessageImplCopyWith<$Res> {
  __$$UpdateOldTextMessageImplCopyWithImpl(
    _$UpdateOldTextMessageImpl _value,
    $Res Function(_$UpdateOldTextMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _$UpdateOldTextMessageImpl(
        null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateOldTextMessageImpl implements UpdateOldTextMessage {
  const _$UpdateOldTextMessageImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'TextDiffMessage.updateOldText(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOldTextMessageImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOldTextMessageImplCopyWith<_$UpdateOldTextMessageImpl>
  get copyWith =>
      __$$UpdateOldTextMessageImplCopyWithImpl<_$UpdateOldTextMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateNewText,
    required TResult Function(String text) updateOldText,
    required TResult Function(List<Diff> diffs) updateDiffs,
  }) {
    return updateOldText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateNewText,
    TResult? Function(String text)? updateOldText,
    TResult? Function(List<Diff> diffs)? updateDiffs,
  }) {
    return updateOldText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateNewText,
    TResult Function(String text)? updateOldText,
    TResult Function(List<Diff> diffs)? updateDiffs,
    required TResult orElse(),
  }) {
    if (updateOldText != null) {
      return updateOldText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateNewTextMessage value) updateNewText,
    required TResult Function(UpdateOldTextMessage value) updateOldText,
    required TResult Function(UpdateDiffsMessage value) updateDiffs,
  }) {
    return updateOldText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateNewTextMessage value)? updateNewText,
    TResult? Function(UpdateOldTextMessage value)? updateOldText,
    TResult? Function(UpdateDiffsMessage value)? updateDiffs,
  }) {
    return updateOldText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateNewTextMessage value)? updateNewText,
    TResult Function(UpdateOldTextMessage value)? updateOldText,
    TResult Function(UpdateDiffsMessage value)? updateDiffs,
    required TResult orElse(),
  }) {
    if (updateOldText != null) {
      return updateOldText(this);
    }
    return orElse();
  }
}

abstract class UpdateOldTextMessage implements TextDiffMessage {
  const factory UpdateOldTextMessage(final String text) =
      _$UpdateOldTextMessageImpl;

  String get text;

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOldTextMessageImplCopyWith<_$UpdateOldTextMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDiffsMessageImplCopyWith<$Res> {
  factory _$$UpdateDiffsMessageImplCopyWith(
    _$UpdateDiffsMessageImpl value,
    $Res Function(_$UpdateDiffsMessageImpl) then,
  ) = __$$UpdateDiffsMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Diff> diffs});
}

/// @nodoc
class __$$UpdateDiffsMessageImplCopyWithImpl<$Res>
    extends _$TextDiffMessageCopyWithImpl<$Res, _$UpdateDiffsMessageImpl>
    implements _$$UpdateDiffsMessageImplCopyWith<$Res> {
  __$$UpdateDiffsMessageImplCopyWithImpl(
    _$UpdateDiffsMessageImpl _value,
    $Res Function(_$UpdateDiffsMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? diffs = null}) {
    return _then(
      _$UpdateDiffsMessageImpl(
        null == diffs
            ? _value._diffs
            : diffs // ignore: cast_nullable_to_non_nullable
                as List<Diff>,
      ),
    );
  }
}

/// @nodoc

class _$UpdateDiffsMessageImpl implements UpdateDiffsMessage {
  const _$UpdateDiffsMessageImpl(final List<Diff> diffs) : _diffs = diffs;

  final List<Diff> _diffs;
  @override
  List<Diff> get diffs {
    if (_diffs is EqualUnmodifiableListView) return _diffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diffs);
  }

  @override
  String toString() {
    return 'TextDiffMessage.updateDiffs(diffs: $diffs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDiffsMessageImpl &&
            const DeepCollectionEquality().equals(other._diffs, _diffs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_diffs));

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDiffsMessageImplCopyWith<_$UpdateDiffsMessageImpl> get copyWith =>
      __$$UpdateDiffsMessageImplCopyWithImpl<_$UpdateDiffsMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateNewText,
    required TResult Function(String text) updateOldText,
    required TResult Function(List<Diff> diffs) updateDiffs,
  }) {
    return updateDiffs(diffs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? updateNewText,
    TResult? Function(String text)? updateOldText,
    TResult? Function(List<Diff> diffs)? updateDiffs,
  }) {
    return updateDiffs?.call(diffs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateNewText,
    TResult Function(String text)? updateOldText,
    TResult Function(List<Diff> diffs)? updateDiffs,
    required TResult orElse(),
  }) {
    if (updateDiffs != null) {
      return updateDiffs(diffs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateNewTextMessage value) updateNewText,
    required TResult Function(UpdateOldTextMessage value) updateOldText,
    required TResult Function(UpdateDiffsMessage value) updateDiffs,
  }) {
    return updateDiffs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateNewTextMessage value)? updateNewText,
    TResult? Function(UpdateOldTextMessage value)? updateOldText,
    TResult? Function(UpdateDiffsMessage value)? updateDiffs,
  }) {
    return updateDiffs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateNewTextMessage value)? updateNewText,
    TResult Function(UpdateOldTextMessage value)? updateOldText,
    TResult Function(UpdateDiffsMessage value)? updateDiffs,
    required TResult orElse(),
  }) {
    if (updateDiffs != null) {
      return updateDiffs(this);
    }
    return orElse();
  }
}

abstract class UpdateDiffsMessage implements TextDiffMessage {
  const factory UpdateDiffsMessage(final List<Diff> diffs) =
      _$UpdateDiffsMessageImpl;

  List<Diff> get diffs;

  /// Create a copy of TextDiffMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDiffsMessageImplCopyWith<_$UpdateDiffsMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
