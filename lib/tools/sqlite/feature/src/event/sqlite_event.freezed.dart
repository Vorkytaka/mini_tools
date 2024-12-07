// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sqlite_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SqliteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SqliteEventCopyWith<$Res> {
  factory $SqliteEventCopyWith(
          SqliteEvent value, $Res Function(SqliteEvent) then) =
      _$SqliteEventCopyWithImpl<$Res, SqliteEvent>;
}

/// @nodoc
class _$SqliteEventCopyWithImpl<$Res, $Val extends SqliteEvent>
    implements $SqliteEventCopyWith<$Res> {
  _$SqliteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExecuteEventImplCopyWith<$Res> {
  factory _$$ExecuteEventImplCopyWith(
          _$ExecuteEventImpl value, $Res Function(_$ExecuteEventImpl) then) =
      __$$ExecuteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ExecuteEventImplCopyWithImpl<$Res>
    extends _$SqliteEventCopyWithImpl<$Res, _$ExecuteEventImpl>
    implements _$$ExecuteEventImplCopyWith<$Res> {
  __$$ExecuteEventImplCopyWithImpl(
      _$ExecuteEventImpl _value, $Res Function(_$ExecuteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ExecuteEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExecuteEventImpl implements ExecuteEvent {
  const _$ExecuteEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SqliteEvent.execute(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecuteEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecuteEventImplCopyWith<_$ExecuteEventImpl> get copyWith =>
      __$$ExecuteEventImplCopyWithImpl<_$ExecuteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return execute(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return execute?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (execute != null) {
      return execute(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) {
    return execute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) {
    return execute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (execute != null) {
      return execute(this);
    }
    return orElse();
  }
}

abstract class ExecuteEvent implements SqliteEvent {
  const factory ExecuteEvent(final String query) = _$ExecuteEventImpl;

  String get query;

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExecuteEventImplCopyWith<_$ExecuteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryResultEventImplCopyWith<$Res> {
  factory _$$QueryResultEventImplCopyWith(_$QueryResultEventImpl value,
          $Res Function(_$QueryResultEventImpl) then) =
      __$$QueryResultEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$QueryResultEventImplCopyWithImpl<$Res>
    extends _$SqliteEventCopyWithImpl<$Res, _$QueryResultEventImpl>
    implements _$$QueryResultEventImplCopyWith<$Res> {
  __$$QueryResultEventImplCopyWithImpl(_$QueryResultEventImpl _value,
      $Res Function(_$QueryResultEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$QueryResultEventImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$QueryResultEventImpl implements QueryResultEvent {
  const _$QueryResultEventImpl(this.result);

  @override
  final Result result;

  @override
  String toString() {
    return 'SqliteEvent.queryResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryResultEventImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryResultEventImplCopyWith<_$QueryResultEventImpl> get copyWith =>
      __$$QueryResultEventImplCopyWithImpl<_$QueryResultEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return queryResult(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return queryResult?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (queryResult != null) {
      return queryResult(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) {
    return queryResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) {
    return queryResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (queryResult != null) {
      return queryResult(this);
    }
    return orElse();
  }
}

abstract class QueryResultEvent implements SqliteEvent {
  const factory QueryResultEvent(final Result result) = _$QueryResultEventImpl;

  Result get result;

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryResultEventImplCopyWith<_$QueryResultEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportDbEventImplCopyWith<$Res> {
  factory _$$ImportDbEventImplCopyWith(
          _$ImportDbEventImpl value, $Res Function(_$ImportDbEventImpl) then) =
      __$$ImportDbEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ImportDbEventImplCopyWithImpl<$Res>
    extends _$SqliteEventCopyWithImpl<$Res, _$ImportDbEventImpl>
    implements _$$ImportDbEventImplCopyWith<$Res> {
  __$$ImportDbEventImplCopyWithImpl(
      _$ImportDbEventImpl _value, $Res Function(_$ImportDbEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ImportDbEventImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImportDbEventImpl implements ImportDbEvent {
  const _$ImportDbEventImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'SqliteEvent.importDb(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportDbEventImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportDbEventImplCopyWith<_$ImportDbEventImpl> get copyWith =>
      __$$ImportDbEventImplCopyWithImpl<_$ImportDbEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return importDb(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return importDb?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (importDb != null) {
      return importDb(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) {
    return importDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) {
    return importDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (importDb != null) {
      return importDb(this);
    }
    return orElse();
  }
}

abstract class ImportDbEvent implements SqliteEvent {
  const factory ImportDbEvent(final String path) = _$ImportDbEventImpl;

  String get path;

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImportDbEventImplCopyWith<_$ImportDbEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExportDbEventImplCopyWith<$Res> {
  factory _$$ExportDbEventImplCopyWith(
          _$ExportDbEventImpl value, $Res Function(_$ExportDbEventImpl) then) =
      __$$ExportDbEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ExportDbEventImplCopyWithImpl<$Res>
    extends _$SqliteEventCopyWithImpl<$Res, _$ExportDbEventImpl>
    implements _$$ExportDbEventImplCopyWith<$Res> {
  __$$ExportDbEventImplCopyWithImpl(
      _$ExportDbEventImpl _value, $Res Function(_$ExportDbEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ExportDbEventImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExportDbEventImpl implements ExportDbEvent {
  const _$ExportDbEventImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'SqliteEvent.exportDb(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportDbEventImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportDbEventImplCopyWith<_$ExportDbEventImpl> get copyWith =>
      __$$ExportDbEventImplCopyWithImpl<_$ExportDbEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return exportDb(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return exportDb?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (exportDb != null) {
      return exportDb(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) {
    return exportDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) {
    return exportDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (exportDb != null) {
      return exportDb(this);
    }
    return orElse();
  }
}

abstract class ExportDbEvent implements SqliteEvent {
  const factory ExportDbEvent(final String path) = _$ExportDbEventImpl;

  String get path;

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportDbEventImplCopyWith<_$ExportDbEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DropTableImplCopyWith<$Res> {
  factory _$$DropTableImplCopyWith(
          _$DropTableImpl value, $Res Function(_$DropTableImpl) then) =
      __$$DropTableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DropTableImplCopyWithImpl<$Res>
    extends _$SqliteEventCopyWithImpl<$Res, _$DropTableImpl>
    implements _$$DropTableImplCopyWith<$Res> {
  __$$DropTableImplCopyWithImpl(
      _$DropTableImpl _value, $Res Function(_$DropTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DropTableImpl implements DropTable {
  const _$DropTableImpl();

  @override
  String toString() {
    return 'SqliteEvent.dropTable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DropTableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return dropTable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return dropTable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dropTable != null) {
      return dropTable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) {
    return dropTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) {
    return dropTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (dropTable != null) {
      return dropTable(this);
    }
    return orElse();
  }
}

abstract class DropTable implements SqliteEvent {
  const factory DropTable() = _$DropTableImpl;
}

/// @nodoc
abstract class _$$TableInfoEventImplCopyWith<$Res> {
  factory _$$TableInfoEventImplCopyWith(_$TableInfoEventImpl value,
          $Res Function(_$TableInfoEventImpl) then) =
      __$$TableInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TableInfo> tables});
}

/// @nodoc
class __$$TableInfoEventImplCopyWithImpl<$Res>
    extends _$SqliteEventCopyWithImpl<$Res, _$TableInfoEventImpl>
    implements _$$TableInfoEventImplCopyWith<$Res> {
  __$$TableInfoEventImplCopyWithImpl(
      _$TableInfoEventImpl _value, $Res Function(_$TableInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
  }) {
    return _then(_$TableInfoEventImpl(
      null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableInfo>,
    ));
  }
}

/// @nodoc

class _$TableInfoEventImpl implements TableInfoEvent {
  const _$TableInfoEventImpl(final List<TableInfo> tables) : _tables = tables;

  final List<TableInfo> _tables;
  @override
  List<TableInfo> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  String toString() {
    return 'SqliteEvent.tableInfo(tables: $tables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableInfoEventImpl &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tables));

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableInfoEventImplCopyWith<_$TableInfoEventImpl> get copyWith =>
      __$$TableInfoEventImplCopyWithImpl<_$TableInfoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return tableInfo(tables);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return tableInfo?.call(tables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (tableInfo != null) {
      return tableInfo(tables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) {
    return tableInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) {
    return tableInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (tableInfo != null) {
      return tableInfo(this);
    }
    return orElse();
  }
}

abstract class TableInfoEvent implements SqliteEvent {
  const factory TableInfoEvent(final List<TableInfo> tables) =
      _$TableInfoEventImpl;

  List<TableInfo> get tables;

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableInfoEventImplCopyWith<_$TableInfoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionChangedEventImplCopyWith<$Res> {
  factory _$$ConnectionChangedEventImplCopyWith(
          _$ConnectionChangedEventImpl value,
          $Res Function(_$ConnectionChangedEventImpl) then) =
      __$$ConnectionChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DatabaseConnection connection});

  $DatabaseConnectionCopyWith<$Res> get connection;
}

/// @nodoc
class __$$ConnectionChangedEventImplCopyWithImpl<$Res>
    extends _$SqliteEventCopyWithImpl<$Res, _$ConnectionChangedEventImpl>
    implements _$$ConnectionChangedEventImplCopyWith<$Res> {
  __$$ConnectionChangedEventImplCopyWithImpl(
      _$ConnectionChangedEventImpl _value,
      $Res Function(_$ConnectionChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
  }) {
    return _then(_$ConnectionChangedEventImpl(
      null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as DatabaseConnection,
    ));
  }

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatabaseConnectionCopyWith<$Res> get connection {
    return $DatabaseConnectionCopyWith<$Res>(_value.connection, (value) {
      return _then(_value.copyWith(connection: value));
    });
  }
}

/// @nodoc

class _$ConnectionChangedEventImpl implements ConnectionChangedEvent {
  const _$ConnectionChangedEventImpl(this.connection);

  @override
  final DatabaseConnection connection;

  @override
  String toString() {
    return 'SqliteEvent.connectionChanged(connection: $connection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionChangedEventImpl &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionChangedEventImplCopyWith<_$ConnectionChangedEventImpl>
      get copyWith => __$$ConnectionChangedEventImplCopyWithImpl<
          _$ConnectionChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return connectionChanged(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return connectionChanged?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) {
    return connectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) {
    return connectionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(this);
    }
    return orElse();
  }
}

abstract class ConnectionChangedEvent implements SqliteEvent {
  const factory ConnectionChangedEvent(final DatabaseConnection connection) =
      _$ConnectionChangedEventImpl;

  DatabaseConnection get connection;

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionChangedEventImplCopyWith<_$ConnectionChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeEventImplCopyWith<$Res> {
  factory _$$DisposeEventImplCopyWith(
          _$DisposeEventImpl value, $Res Function(_$DisposeEventImpl) then) =
      __$$DisposeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeEventImplCopyWithImpl<$Res>
    extends _$SqliteEventCopyWithImpl<$Res, _$DisposeEventImpl>
    implements _$$DisposeEventImplCopyWith<$Res> {
  __$$DisposeEventImplCopyWithImpl(
      _$DisposeEventImpl _value, $Res Function(_$DisposeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisposeEventImpl implements DisposeEvent {
  const _$DisposeEventImpl();

  @override
  String toString() {
    return 'SqliteEvent.dispose()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisposeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function(Result result) queryResult,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() dropTable,
    required TResult Function(List<TableInfo> tables) tableInfo,
    required TResult Function(DatabaseConnection connection) connectionChanged,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function(Result result)? queryResult,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? dropTable,
    TResult? Function(List<TableInfo> tables)? tableInfo,
    TResult? Function(DatabaseConnection connection)? connectionChanged,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function(Result result)? queryResult,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? dropTable,
    TResult Function(List<TableInfo> tables)? tableInfo,
    TResult Function(DatabaseConnection connection)? connectionChanged,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEvent value) execute,
    required TResult Function(QueryResultEvent value) queryResult,
    required TResult Function(ImportDbEvent value) importDb,
    required TResult Function(ExportDbEvent value) exportDb,
    required TResult Function(DropTable value) dropTable,
    required TResult Function(TableInfoEvent value) tableInfo,
    required TResult Function(ConnectionChangedEvent value) connectionChanged,
    required TResult Function(DisposeEvent value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEvent value)? execute,
    TResult? Function(QueryResultEvent value)? queryResult,
    TResult? Function(ImportDbEvent value)? importDb,
    TResult? Function(ExportDbEvent value)? exportDb,
    TResult? Function(DropTable value)? dropTable,
    TResult? Function(TableInfoEvent value)? tableInfo,
    TResult? Function(ConnectionChangedEvent value)? connectionChanged,
    TResult? Function(DisposeEvent value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEvent value)? execute,
    TResult Function(QueryResultEvent value)? queryResult,
    TResult Function(ImportDbEvent value)? importDb,
    TResult Function(ExportDbEvent value)? exportDb,
    TResult Function(DropTable value)? dropTable,
    TResult Function(TableInfoEvent value)? tableInfo,
    TResult Function(ConnectionChangedEvent value)? connectionChanged,
    TResult Function(DisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class DisposeEvent implements SqliteEvent {
  const factory DisposeEvent() = _$DisposeEventImpl;
}
