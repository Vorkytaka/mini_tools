// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ToolsState {
  String get selectedToolId => throw _privateConstructorUsedError;
  List<String> get toolIds => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  List<String> get searchResult => throw _privateConstructorUsedError;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolsStateCopyWith<ToolsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolsStateCopyWith<$Res> {
  factory $ToolsStateCopyWith(
    ToolsState value,
    $Res Function(ToolsState) then,
  ) = _$ToolsStateCopyWithImpl<$Res, ToolsState>;
  @useResult
  $Res call({
    String selectedToolId,
    List<String> toolIds,
    String searchQuery,
    List<String> searchResult,
  });
}

/// @nodoc
class _$ToolsStateCopyWithImpl<$Res, $Val extends ToolsState>
    implements $ToolsStateCopyWith<$Res> {
  _$ToolsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedToolId = null,
    Object? toolIds = null,
    Object? searchQuery = null,
    Object? searchResult = null,
  }) {
    return _then(
      _value.copyWith(
            selectedToolId:
                null == selectedToolId
                    ? _value.selectedToolId
                    : selectedToolId // ignore: cast_nullable_to_non_nullable
                        as String,
            toolIds:
                null == toolIds
                    ? _value.toolIds
                    : toolIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            searchQuery:
                null == searchQuery
                    ? _value.searchQuery
                    : searchQuery // ignore: cast_nullable_to_non_nullable
                        as String,
            searchResult:
                null == searchResult
                    ? _value.searchResult
                    : searchResult // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ToolsStateImplCopyWith<$Res>
    implements $ToolsStateCopyWith<$Res> {
  factory _$$ToolsStateImplCopyWith(
    _$ToolsStateImpl value,
    $Res Function(_$ToolsStateImpl) then,
  ) = __$$ToolsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String selectedToolId,
    List<String> toolIds,
    String searchQuery,
    List<String> searchResult,
  });
}

/// @nodoc
class __$$ToolsStateImplCopyWithImpl<$Res>
    extends _$ToolsStateCopyWithImpl<$Res, _$ToolsStateImpl>
    implements _$$ToolsStateImplCopyWith<$Res> {
  __$$ToolsStateImplCopyWithImpl(
    _$ToolsStateImpl _value,
    $Res Function(_$ToolsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedToolId = null,
    Object? toolIds = null,
    Object? searchQuery = null,
    Object? searchResult = null,
  }) {
    return _then(
      _$ToolsStateImpl(
        selectedToolId:
            null == selectedToolId
                ? _value.selectedToolId
                : selectedToolId // ignore: cast_nullable_to_non_nullable
                    as String,
        toolIds:
            null == toolIds
                ? _value._toolIds
                : toolIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        searchQuery:
            null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                    as String,
        searchResult:
            null == searchResult
                ? _value._searchResult
                : searchResult // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$ToolsStateImpl implements _ToolsState {
  const _$ToolsStateImpl({
    required this.selectedToolId,
    required final List<String> toolIds,
    required this.searchQuery,
    required final List<String> searchResult,
  }) : _toolIds = toolIds,
       _searchResult = searchResult;

  @override
  final String selectedToolId;
  final List<String> _toolIds;
  @override
  List<String> get toolIds {
    if (_toolIds is EqualUnmodifiableListView) return _toolIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toolIds);
  }

  @override
  final String searchQuery;
  final List<String> _searchResult;
  @override
  List<String> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'ToolsState(selectedToolId: $selectedToolId, toolIds: $toolIds, searchQuery: $searchQuery, searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolsStateImpl &&
            (identical(other.selectedToolId, selectedToolId) ||
                other.selectedToolId == selectedToolId) &&
            const DeepCollectionEquality().equals(other._toolIds, _toolIds) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality().equals(
              other._searchResult,
              _searchResult,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedToolId,
    const DeepCollectionEquality().hash(_toolIds),
    searchQuery,
    const DeepCollectionEquality().hash(_searchResult),
  );

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToolsStateImplCopyWith<_$ToolsStateImpl> get copyWith =>
      __$$ToolsStateImplCopyWithImpl<_$ToolsStateImpl>(this, _$identity);
}

abstract class _ToolsState implements ToolsState {
  const factory _ToolsState({
    required final String selectedToolId,
    required final List<String> toolIds,
    required final String searchQuery,
    required final List<String> searchResult,
  }) = _$ToolsStateImpl;

  @override
  String get selectedToolId;
  @override
  List<String> get toolIds;
  @override
  String get searchQuery;
  @override
  List<String> get searchResult;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToolsStateImplCopyWith<_$ToolsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
