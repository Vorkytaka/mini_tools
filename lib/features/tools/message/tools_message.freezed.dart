// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToolsMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String toolId) selectTool,
    required TResult Function(String query) updateQuery,
    required TResult Function(List<String> result) updateSearchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String toolId)? selectTool,
    TResult? Function(String query)? updateQuery,
    TResult? Function(List<String> result)? updateSearchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String toolId)? selectTool,
    TResult Function(String query)? updateQuery,
    TResult Function(List<String> result)? updateSearchResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectToolMessage value) selectTool,
    required TResult Function(UpdateQueryMessage value) updateQuery,
    required TResult Function(UpdateSearchResultMessage value)
        updateSearchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectToolMessage value)? selectTool,
    TResult? Function(UpdateQueryMessage value)? updateQuery,
    TResult? Function(UpdateSearchResultMessage value)? updateSearchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectToolMessage value)? selectTool,
    TResult Function(UpdateQueryMessage value)? updateQuery,
    TResult Function(UpdateSearchResultMessage value)? updateSearchResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolsMessageCopyWith<$Res> {
  factory $ToolsMessageCopyWith(
          ToolsMessage value, $Res Function(ToolsMessage) then) =
      _$ToolsMessageCopyWithImpl<$Res, ToolsMessage>;
}

/// @nodoc
class _$ToolsMessageCopyWithImpl<$Res, $Val extends ToolsMessage>
    implements $ToolsMessageCopyWith<$Res> {
  _$ToolsMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectToolMessageImplCopyWith<$Res> {
  factory _$$SelectToolMessageImplCopyWith(_$SelectToolMessageImpl value,
          $Res Function(_$SelectToolMessageImpl) then) =
      __$$SelectToolMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String toolId});
}

/// @nodoc
class __$$SelectToolMessageImplCopyWithImpl<$Res>
    extends _$ToolsMessageCopyWithImpl<$Res, _$SelectToolMessageImpl>
    implements _$$SelectToolMessageImplCopyWith<$Res> {
  __$$SelectToolMessageImplCopyWithImpl(_$SelectToolMessageImpl _value,
      $Res Function(_$SelectToolMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toolId = null,
  }) {
    return _then(_$SelectToolMessageImpl(
      null == toolId
          ? _value.toolId
          : toolId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectToolMessageImpl implements SelectToolMessage {
  const _$SelectToolMessageImpl(this.toolId);

  @override
  final String toolId;

  @override
  String toString() {
    return 'ToolsMessage.selectTool(toolId: $toolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectToolMessageImpl &&
            (identical(other.toolId, toolId) || other.toolId == toolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toolId);

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectToolMessageImplCopyWith<_$SelectToolMessageImpl> get copyWith =>
      __$$SelectToolMessageImplCopyWithImpl<_$SelectToolMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String toolId) selectTool,
    required TResult Function(String query) updateQuery,
    required TResult Function(List<String> result) updateSearchResult,
  }) {
    return selectTool(toolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String toolId)? selectTool,
    TResult? Function(String query)? updateQuery,
    TResult? Function(List<String> result)? updateSearchResult,
  }) {
    return selectTool?.call(toolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String toolId)? selectTool,
    TResult Function(String query)? updateQuery,
    TResult Function(List<String> result)? updateSearchResult,
    required TResult orElse(),
  }) {
    if (selectTool != null) {
      return selectTool(toolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectToolMessage value) selectTool,
    required TResult Function(UpdateQueryMessage value) updateQuery,
    required TResult Function(UpdateSearchResultMessage value)
        updateSearchResult,
  }) {
    return selectTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectToolMessage value)? selectTool,
    TResult? Function(UpdateQueryMessage value)? updateQuery,
    TResult? Function(UpdateSearchResultMessage value)? updateSearchResult,
  }) {
    return selectTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectToolMessage value)? selectTool,
    TResult Function(UpdateQueryMessage value)? updateQuery,
    TResult Function(UpdateSearchResultMessage value)? updateSearchResult,
    required TResult orElse(),
  }) {
    if (selectTool != null) {
      return selectTool(this);
    }
    return orElse();
  }
}

abstract class SelectToolMessage implements ToolsMessage {
  const factory SelectToolMessage(final String toolId) =
      _$SelectToolMessageImpl;

  String get toolId;

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectToolMessageImplCopyWith<_$SelectToolMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQueryMessageImplCopyWith<$Res> {
  factory _$$UpdateQueryMessageImplCopyWith(_$UpdateQueryMessageImpl value,
          $Res Function(_$UpdateQueryMessageImpl) then) =
      __$$UpdateQueryMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$UpdateQueryMessageImplCopyWithImpl<$Res>
    extends _$ToolsMessageCopyWithImpl<$Res, _$UpdateQueryMessageImpl>
    implements _$$UpdateQueryMessageImplCopyWith<$Res> {
  __$$UpdateQueryMessageImplCopyWithImpl(_$UpdateQueryMessageImpl _value,
      $Res Function(_$UpdateQueryMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$UpdateQueryMessageImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateQueryMessageImpl implements UpdateQueryMessage {
  const _$UpdateQueryMessageImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ToolsMessage.updateQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQueryMessageImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQueryMessageImplCopyWith<_$UpdateQueryMessageImpl> get copyWith =>
      __$$UpdateQueryMessageImplCopyWithImpl<_$UpdateQueryMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String toolId) selectTool,
    required TResult Function(String query) updateQuery,
    required TResult Function(List<String> result) updateSearchResult,
  }) {
    return updateQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String toolId)? selectTool,
    TResult? Function(String query)? updateQuery,
    TResult? Function(List<String> result)? updateSearchResult,
  }) {
    return updateQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String toolId)? selectTool,
    TResult Function(String query)? updateQuery,
    TResult Function(List<String> result)? updateSearchResult,
    required TResult orElse(),
  }) {
    if (updateQuery != null) {
      return updateQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectToolMessage value) selectTool,
    required TResult Function(UpdateQueryMessage value) updateQuery,
    required TResult Function(UpdateSearchResultMessage value)
        updateSearchResult,
  }) {
    return updateQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectToolMessage value)? selectTool,
    TResult? Function(UpdateQueryMessage value)? updateQuery,
    TResult? Function(UpdateSearchResultMessage value)? updateSearchResult,
  }) {
    return updateQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectToolMessage value)? selectTool,
    TResult Function(UpdateQueryMessage value)? updateQuery,
    TResult Function(UpdateSearchResultMessage value)? updateSearchResult,
    required TResult orElse(),
  }) {
    if (updateQuery != null) {
      return updateQuery(this);
    }
    return orElse();
  }
}

abstract class UpdateQueryMessage implements ToolsMessage {
  const factory UpdateQueryMessage(final String query) =
      _$UpdateQueryMessageImpl;

  String get query;

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQueryMessageImplCopyWith<_$UpdateQueryMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSearchResultMessageImplCopyWith<$Res> {
  factory _$$UpdateSearchResultMessageImplCopyWith(
          _$UpdateSearchResultMessageImpl value,
          $Res Function(_$UpdateSearchResultMessageImpl) then) =
      __$$UpdateSearchResultMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> result});
}

/// @nodoc
class __$$UpdateSearchResultMessageImplCopyWithImpl<$Res>
    extends _$ToolsMessageCopyWithImpl<$Res, _$UpdateSearchResultMessageImpl>
    implements _$$UpdateSearchResultMessageImplCopyWith<$Res> {
  __$$UpdateSearchResultMessageImplCopyWithImpl(
      _$UpdateSearchResultMessageImpl _value,
      $Res Function(_$UpdateSearchResultMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$UpdateSearchResultMessageImpl(
      null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdateSearchResultMessageImpl implements UpdateSearchResultMessage {
  const _$UpdateSearchResultMessageImpl(final List<String> result)
      : _result = result;

  final List<String> _result;
  @override
  List<String> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'ToolsMessage.updateSearchResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSearchResultMessageImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSearchResultMessageImplCopyWith<_$UpdateSearchResultMessageImpl>
      get copyWith => __$$UpdateSearchResultMessageImplCopyWithImpl<
          _$UpdateSearchResultMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String toolId) selectTool,
    required TResult Function(String query) updateQuery,
    required TResult Function(List<String> result) updateSearchResult,
  }) {
    return updateSearchResult(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String toolId)? selectTool,
    TResult? Function(String query)? updateQuery,
    TResult? Function(List<String> result)? updateSearchResult,
  }) {
    return updateSearchResult?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String toolId)? selectTool,
    TResult Function(String query)? updateQuery,
    TResult Function(List<String> result)? updateSearchResult,
    required TResult orElse(),
  }) {
    if (updateSearchResult != null) {
      return updateSearchResult(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectToolMessage value) selectTool,
    required TResult Function(UpdateQueryMessage value) updateQuery,
    required TResult Function(UpdateSearchResultMessage value)
        updateSearchResult,
  }) {
    return updateSearchResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectToolMessage value)? selectTool,
    TResult? Function(UpdateQueryMessage value)? updateQuery,
    TResult? Function(UpdateSearchResultMessage value)? updateSearchResult,
  }) {
    return updateSearchResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectToolMessage value)? selectTool,
    TResult Function(UpdateQueryMessage value)? updateQuery,
    TResult Function(UpdateSearchResultMessage value)? updateSearchResult,
    required TResult orElse(),
  }) {
    if (updateSearchResult != null) {
      return updateSearchResult(this);
    }
    return orElse();
  }
}

abstract class UpdateSearchResultMessage implements ToolsMessage {
  const factory UpdateSearchResultMessage(final List<String> result) =
      _$UpdateSearchResultMessageImpl;

  List<String> get result;

  /// Create a copy of ToolsMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSearchResultMessageImplCopyWith<_$UpdateSearchResultMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
