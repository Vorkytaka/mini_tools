// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ToolsEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<String> tools) searchTools,
    required TResult Function(String toolId) saveSelectedTool,
    required TResult Function() loadSelectedTool,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<String> tools)? searchTools,
    TResult? Function(String toolId)? saveSelectedTool,
    TResult? Function()? loadSelectedTool,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<String> tools)? searchTools,
    TResult Function(String toolId)? saveSelectedTool,
    TResult Function()? loadSelectedTool,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchToolsEffect value) searchTools,
    required TResult Function(SaveSelectedToolEffect value) saveSelectedTool,
    required TResult Function(LoadSelectedToolEffect value) loadSelectedTool,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchToolsEffect value)? searchTools,
    TResult? Function(SaveSelectedToolEffect value)? saveSelectedTool,
    TResult? Function(LoadSelectedToolEffect value)? loadSelectedTool,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchToolsEffect value)? searchTools,
    TResult Function(SaveSelectedToolEffect value)? saveSelectedTool,
    TResult Function(LoadSelectedToolEffect value)? loadSelectedTool,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolsEffectCopyWith<$Res> {
  factory $ToolsEffectCopyWith(
    ToolsEffect value,
    $Res Function(ToolsEffect) then,
  ) = _$ToolsEffectCopyWithImpl<$Res, ToolsEffect>;
}

/// @nodoc
class _$ToolsEffectCopyWithImpl<$Res, $Val extends ToolsEffect>
    implements $ToolsEffectCopyWith<$Res> {
  _$ToolsEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchToolsEffectImplCopyWith<$Res> {
  factory _$$SearchToolsEffectImplCopyWith(
    _$SearchToolsEffectImpl value,
    $Res Function(_$SearchToolsEffectImpl) then,
  ) = __$$SearchToolsEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, List<String> tools});
}

/// @nodoc
class __$$SearchToolsEffectImplCopyWithImpl<$Res>
    extends _$ToolsEffectCopyWithImpl<$Res, _$SearchToolsEffectImpl>
    implements _$$SearchToolsEffectImplCopyWith<$Res> {
  __$$SearchToolsEffectImplCopyWithImpl(
    _$SearchToolsEffectImpl _value,
    $Res Function(_$SearchToolsEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null, Object? tools = null}) {
    return _then(
      _$SearchToolsEffectImpl(
        query:
            null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                    as String,
        tools:
            null == tools
                ? _value._tools
                : tools // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$SearchToolsEffectImpl implements SearchToolsEffect {
  const _$SearchToolsEffectImpl({
    required this.query,
    required final List<String> tools,
  }) : _tools = tools;

  @override
  final String query;
  final List<String> _tools;
  @override
  List<String> get tools {
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tools);
  }

  @override
  String toString() {
    return 'ToolsEffect.searchTools(query: $query, tools: $tools)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchToolsEffectImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._tools, _tools));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    const DeepCollectionEquality().hash(_tools),
  );

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchToolsEffectImplCopyWith<_$SearchToolsEffectImpl> get copyWith =>
      __$$SearchToolsEffectImplCopyWithImpl<_$SearchToolsEffectImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<String> tools) searchTools,
    required TResult Function(String toolId) saveSelectedTool,
    required TResult Function() loadSelectedTool,
  }) {
    return searchTools(query, tools);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<String> tools)? searchTools,
    TResult? Function(String toolId)? saveSelectedTool,
    TResult? Function()? loadSelectedTool,
  }) {
    return searchTools?.call(query, tools);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<String> tools)? searchTools,
    TResult Function(String toolId)? saveSelectedTool,
    TResult Function()? loadSelectedTool,
    required TResult orElse(),
  }) {
    if (searchTools != null) {
      return searchTools(query, tools);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchToolsEffect value) searchTools,
    required TResult Function(SaveSelectedToolEffect value) saveSelectedTool,
    required TResult Function(LoadSelectedToolEffect value) loadSelectedTool,
  }) {
    return searchTools(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchToolsEffect value)? searchTools,
    TResult? Function(SaveSelectedToolEffect value)? saveSelectedTool,
    TResult? Function(LoadSelectedToolEffect value)? loadSelectedTool,
  }) {
    return searchTools?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchToolsEffect value)? searchTools,
    TResult Function(SaveSelectedToolEffect value)? saveSelectedTool,
    TResult Function(LoadSelectedToolEffect value)? loadSelectedTool,
    required TResult orElse(),
  }) {
    if (searchTools != null) {
      return searchTools(this);
    }
    return orElse();
  }
}

abstract class SearchToolsEffect implements ToolsEffect {
  const factory SearchToolsEffect({
    required final String query,
    required final List<String> tools,
  }) = _$SearchToolsEffectImpl;

  String get query;
  List<String> get tools;

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchToolsEffectImplCopyWith<_$SearchToolsEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveSelectedToolEffectImplCopyWith<$Res> {
  factory _$$SaveSelectedToolEffectImplCopyWith(
    _$SaveSelectedToolEffectImpl value,
    $Res Function(_$SaveSelectedToolEffectImpl) then,
  ) = __$$SaveSelectedToolEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String toolId});
}

/// @nodoc
class __$$SaveSelectedToolEffectImplCopyWithImpl<$Res>
    extends _$ToolsEffectCopyWithImpl<$Res, _$SaveSelectedToolEffectImpl>
    implements _$$SaveSelectedToolEffectImplCopyWith<$Res> {
  __$$SaveSelectedToolEffectImplCopyWithImpl(
    _$SaveSelectedToolEffectImpl _value,
    $Res Function(_$SaveSelectedToolEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? toolId = null}) {
    return _then(
      _$SaveSelectedToolEffectImpl(
        null == toolId
            ? _value.toolId
            : toolId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SaveSelectedToolEffectImpl implements SaveSelectedToolEffect {
  const _$SaveSelectedToolEffectImpl(this.toolId);

  @override
  final String toolId;

  @override
  String toString() {
    return 'ToolsEffect.saveSelectedTool(toolId: $toolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSelectedToolEffectImpl &&
            (identical(other.toolId, toolId) || other.toolId == toolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toolId);

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveSelectedToolEffectImplCopyWith<_$SaveSelectedToolEffectImpl>
  get copyWith =>
      __$$SaveSelectedToolEffectImplCopyWithImpl<_$SaveSelectedToolEffectImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<String> tools) searchTools,
    required TResult Function(String toolId) saveSelectedTool,
    required TResult Function() loadSelectedTool,
  }) {
    return saveSelectedTool(toolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<String> tools)? searchTools,
    TResult? Function(String toolId)? saveSelectedTool,
    TResult? Function()? loadSelectedTool,
  }) {
    return saveSelectedTool?.call(toolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<String> tools)? searchTools,
    TResult Function(String toolId)? saveSelectedTool,
    TResult Function()? loadSelectedTool,
    required TResult orElse(),
  }) {
    if (saveSelectedTool != null) {
      return saveSelectedTool(toolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchToolsEffect value) searchTools,
    required TResult Function(SaveSelectedToolEffect value) saveSelectedTool,
    required TResult Function(LoadSelectedToolEffect value) loadSelectedTool,
  }) {
    return saveSelectedTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchToolsEffect value)? searchTools,
    TResult? Function(SaveSelectedToolEffect value)? saveSelectedTool,
    TResult? Function(LoadSelectedToolEffect value)? loadSelectedTool,
  }) {
    return saveSelectedTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchToolsEffect value)? searchTools,
    TResult Function(SaveSelectedToolEffect value)? saveSelectedTool,
    TResult Function(LoadSelectedToolEffect value)? loadSelectedTool,
    required TResult orElse(),
  }) {
    if (saveSelectedTool != null) {
      return saveSelectedTool(this);
    }
    return orElse();
  }
}

abstract class SaveSelectedToolEffect implements ToolsEffect {
  const factory SaveSelectedToolEffect(final String toolId) =
      _$SaveSelectedToolEffectImpl;

  String get toolId;

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveSelectedToolEffectImplCopyWith<_$SaveSelectedToolEffectImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSelectedToolEffectImplCopyWith<$Res> {
  factory _$$LoadSelectedToolEffectImplCopyWith(
    _$LoadSelectedToolEffectImpl value,
    $Res Function(_$LoadSelectedToolEffectImpl) then,
  ) = __$$LoadSelectedToolEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSelectedToolEffectImplCopyWithImpl<$Res>
    extends _$ToolsEffectCopyWithImpl<$Res, _$LoadSelectedToolEffectImpl>
    implements _$$LoadSelectedToolEffectImplCopyWith<$Res> {
  __$$LoadSelectedToolEffectImplCopyWithImpl(
    _$LoadSelectedToolEffectImpl _value,
    $Res Function(_$LoadSelectedToolEffectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToolsEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadSelectedToolEffectImpl implements LoadSelectedToolEffect {
  const _$LoadSelectedToolEffectImpl();

  @override
  String toString() {
    return 'ToolsEffect.loadSelectedTool()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSelectedToolEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<String> tools) searchTools,
    required TResult Function(String toolId) saveSelectedTool,
    required TResult Function() loadSelectedTool,
  }) {
    return loadSelectedTool();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<String> tools)? searchTools,
    TResult? Function(String toolId)? saveSelectedTool,
    TResult? Function()? loadSelectedTool,
  }) {
    return loadSelectedTool?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<String> tools)? searchTools,
    TResult Function(String toolId)? saveSelectedTool,
    TResult Function()? loadSelectedTool,
    required TResult orElse(),
  }) {
    if (loadSelectedTool != null) {
      return loadSelectedTool();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchToolsEffect value) searchTools,
    required TResult Function(SaveSelectedToolEffect value) saveSelectedTool,
    required TResult Function(LoadSelectedToolEffect value) loadSelectedTool,
  }) {
    return loadSelectedTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchToolsEffect value)? searchTools,
    TResult? Function(SaveSelectedToolEffect value)? saveSelectedTool,
    TResult? Function(LoadSelectedToolEffect value)? loadSelectedTool,
  }) {
    return loadSelectedTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchToolsEffect value)? searchTools,
    TResult Function(SaveSelectedToolEffect value)? saveSelectedTool,
    TResult Function(LoadSelectedToolEffect value)? loadSelectedTool,
    required TResult orElse(),
  }) {
    if (loadSelectedTool != null) {
      return loadSelectedTool(this);
    }
    return orElse();
  }
}

abstract class LoadSelectedToolEffect implements ToolsEffect {
  const factory LoadSelectedToolEffect() = _$LoadSelectedToolEffectImpl;
}
