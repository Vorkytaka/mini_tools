// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sqlite_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SqliteMsg {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SqliteMsg);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SqliteMsg()';
}


}

/// @nodoc
class $SqliteMsgCopyWith<$Res>  {
$SqliteMsgCopyWith(SqliteMsg _, $Res Function(SqliteMsg) __);
}


/// Adds pattern-matching-related methods to [SqliteMsg].
extension SqliteMsgPatterns on SqliteMsg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExecuteMsg value)?  execute,TResult Function( QueryResultMsg value)?  queryResult,TResult Function( ImportDbMsg value)?  importDb,TResult Function( ExportDbMsg value)?  exportDb,TResult Function( DropTableMsg value)?  dropTable,TResult Function( TableInfoMsg value)?  tableInfo,TResult Function( ConnectionChangedMsg value)?  connectionChanged,TResult Function( DisposeMsg value)?  dispose,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExecuteMsg() when execute != null:
return execute(_that);case QueryResultMsg() when queryResult != null:
return queryResult(_that);case ImportDbMsg() when importDb != null:
return importDb(_that);case ExportDbMsg() when exportDb != null:
return exportDb(_that);case DropTableMsg() when dropTable != null:
return dropTable(_that);case TableInfoMsg() when tableInfo != null:
return tableInfo(_that);case ConnectionChangedMsg() when connectionChanged != null:
return connectionChanged(_that);case DisposeMsg() when dispose != null:
return dispose(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExecuteMsg value)  execute,required TResult Function( QueryResultMsg value)  queryResult,required TResult Function( ImportDbMsg value)  importDb,required TResult Function( ExportDbMsg value)  exportDb,required TResult Function( DropTableMsg value)  dropTable,required TResult Function( TableInfoMsg value)  tableInfo,required TResult Function( ConnectionChangedMsg value)  connectionChanged,required TResult Function( DisposeMsg value)  dispose,}){
final _that = this;
switch (_that) {
case ExecuteMsg():
return execute(_that);case QueryResultMsg():
return queryResult(_that);case ImportDbMsg():
return importDb(_that);case ExportDbMsg():
return exportDb(_that);case DropTableMsg():
return dropTable(_that);case TableInfoMsg():
return tableInfo(_that);case ConnectionChangedMsg():
return connectionChanged(_that);case DisposeMsg():
return dispose(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExecuteMsg value)?  execute,TResult? Function( QueryResultMsg value)?  queryResult,TResult? Function( ImportDbMsg value)?  importDb,TResult? Function( ExportDbMsg value)?  exportDb,TResult? Function( DropTableMsg value)?  dropTable,TResult? Function( TableInfoMsg value)?  tableInfo,TResult? Function( ConnectionChangedMsg value)?  connectionChanged,TResult? Function( DisposeMsg value)?  dispose,}){
final _that = this;
switch (_that) {
case ExecuteMsg() when execute != null:
return execute(_that);case QueryResultMsg() when queryResult != null:
return queryResult(_that);case ImportDbMsg() when importDb != null:
return importDb(_that);case ExportDbMsg() when exportDb != null:
return exportDb(_that);case DropTableMsg() when dropTable != null:
return dropTable(_that);case TableInfoMsg() when tableInfo != null:
return tableInfo(_that);case ConnectionChangedMsg() when connectionChanged != null:
return connectionChanged(_that);case DisposeMsg() when dispose != null:
return dispose(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  execute,TResult Function( Result result)?  queryResult,TResult Function( String path)?  importDb,TResult Function( String path)?  exportDb,TResult Function()?  dropTable,TResult Function( List<TableInfo> tables)?  tableInfo,TResult Function( DatabaseConnection connection)?  connectionChanged,TResult Function()?  dispose,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExecuteMsg() when execute != null:
return execute(_that.query);case QueryResultMsg() when queryResult != null:
return queryResult(_that.result);case ImportDbMsg() when importDb != null:
return importDb(_that.path);case ExportDbMsg() when exportDb != null:
return exportDb(_that.path);case DropTableMsg() when dropTable != null:
return dropTable();case TableInfoMsg() when tableInfo != null:
return tableInfo(_that.tables);case ConnectionChangedMsg() when connectionChanged != null:
return connectionChanged(_that.connection);case DisposeMsg() when dispose != null:
return dispose();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  execute,required TResult Function( Result result)  queryResult,required TResult Function( String path)  importDb,required TResult Function( String path)  exportDb,required TResult Function()  dropTable,required TResult Function( List<TableInfo> tables)  tableInfo,required TResult Function( DatabaseConnection connection)  connectionChanged,required TResult Function()  dispose,}) {final _that = this;
switch (_that) {
case ExecuteMsg():
return execute(_that.query);case QueryResultMsg():
return queryResult(_that.result);case ImportDbMsg():
return importDb(_that.path);case ExportDbMsg():
return exportDb(_that.path);case DropTableMsg():
return dropTable();case TableInfoMsg():
return tableInfo(_that.tables);case ConnectionChangedMsg():
return connectionChanged(_that.connection);case DisposeMsg():
return dispose();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  execute,TResult? Function( Result result)?  queryResult,TResult? Function( String path)?  importDb,TResult? Function( String path)?  exportDb,TResult? Function()?  dropTable,TResult? Function( List<TableInfo> tables)?  tableInfo,TResult? Function( DatabaseConnection connection)?  connectionChanged,TResult? Function()?  dispose,}) {final _that = this;
switch (_that) {
case ExecuteMsg() when execute != null:
return execute(_that.query);case QueryResultMsg() when queryResult != null:
return queryResult(_that.result);case ImportDbMsg() when importDb != null:
return importDb(_that.path);case ExportDbMsg() when exportDb != null:
return exportDb(_that.path);case DropTableMsg() when dropTable != null:
return dropTable();case TableInfoMsg() when tableInfo != null:
return tableInfo(_that.tables);case ConnectionChangedMsg() when connectionChanged != null:
return connectionChanged(_that.connection);case DisposeMsg() when dispose != null:
return dispose();case _:
  return null;

}
}

}

/// @nodoc


class ExecuteMsg implements SqliteMsg {
  const ExecuteMsg(this.query);
  

 final  String query;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExecuteMsgCopyWith<ExecuteMsg> get copyWith => _$ExecuteMsgCopyWithImpl<ExecuteMsg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExecuteMsg&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SqliteMsg.execute(query: $query)';
}


}

/// @nodoc
abstract mixin class $ExecuteMsgCopyWith<$Res> implements $SqliteMsgCopyWith<$Res> {
  factory $ExecuteMsgCopyWith(ExecuteMsg value, $Res Function(ExecuteMsg) _then) = _$ExecuteMsgCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$ExecuteMsgCopyWithImpl<$Res>
    implements $ExecuteMsgCopyWith<$Res> {
  _$ExecuteMsgCopyWithImpl(this._self, this._then);

  final ExecuteMsg _self;
  final $Res Function(ExecuteMsg) _then;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(ExecuteMsg(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class QueryResultMsg implements SqliteMsg {
  const QueryResultMsg(this.result);
  

 final  Result result;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryResultMsgCopyWith<QueryResultMsg> get copyWith => _$QueryResultMsgCopyWithImpl<QueryResultMsg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryResultMsg&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'SqliteMsg.queryResult(result: $result)';
}


}

/// @nodoc
abstract mixin class $QueryResultMsgCopyWith<$Res> implements $SqliteMsgCopyWith<$Res> {
  factory $QueryResultMsgCopyWith(QueryResultMsg value, $Res Function(QueryResultMsg) _then) = _$QueryResultMsgCopyWithImpl;
@useResult
$Res call({
 Result result
});


$ResultCopyWith<$Res> get result;

}
/// @nodoc
class _$QueryResultMsgCopyWithImpl<$Res>
    implements $QueryResultMsgCopyWith<$Res> {
  _$QueryResultMsgCopyWithImpl(this._self, this._then);

  final QueryResultMsg _self;
  final $Res Function(QueryResultMsg) _then;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(QueryResultMsg(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Result,
  ));
}

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultCopyWith<$Res> get result {
  
  return $ResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

/// @nodoc


class ImportDbMsg implements SqliteMsg {
  const ImportDbMsg(this.path);
  

 final  String path;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportDbMsgCopyWith<ImportDbMsg> get copyWith => _$ImportDbMsgCopyWithImpl<ImportDbMsg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportDbMsg&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'SqliteMsg.importDb(path: $path)';
}


}

/// @nodoc
abstract mixin class $ImportDbMsgCopyWith<$Res> implements $SqliteMsgCopyWith<$Res> {
  factory $ImportDbMsgCopyWith(ImportDbMsg value, $Res Function(ImportDbMsg) _then) = _$ImportDbMsgCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$ImportDbMsgCopyWithImpl<$Res>
    implements $ImportDbMsgCopyWith<$Res> {
  _$ImportDbMsgCopyWithImpl(this._self, this._then);

  final ImportDbMsg _self;
  final $Res Function(ImportDbMsg) _then;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(ImportDbMsg(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ExportDbMsg implements SqliteMsg {
  const ExportDbMsg(this.path);
  

 final  String path;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExportDbMsgCopyWith<ExportDbMsg> get copyWith => _$ExportDbMsgCopyWithImpl<ExportDbMsg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExportDbMsg&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'SqliteMsg.exportDb(path: $path)';
}


}

/// @nodoc
abstract mixin class $ExportDbMsgCopyWith<$Res> implements $SqliteMsgCopyWith<$Res> {
  factory $ExportDbMsgCopyWith(ExportDbMsg value, $Res Function(ExportDbMsg) _then) = _$ExportDbMsgCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$ExportDbMsgCopyWithImpl<$Res>
    implements $ExportDbMsgCopyWith<$Res> {
  _$ExportDbMsgCopyWithImpl(this._self, this._then);

  final ExportDbMsg _self;
  final $Res Function(ExportDbMsg) _then;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(ExportDbMsg(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DropTableMsg implements SqliteMsg {
  const DropTableMsg();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DropTableMsg);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SqliteMsg.dropTable()';
}


}




/// @nodoc


class TableInfoMsg implements SqliteMsg {
  const TableInfoMsg(final  List<TableInfo> tables): _tables = tables;
  

 final  List<TableInfo> _tables;
 List<TableInfo> get tables {
  if (_tables is EqualUnmodifiableListView) return _tables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tables);
}


/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TableInfoMsgCopyWith<TableInfoMsg> get copyWith => _$TableInfoMsgCopyWithImpl<TableInfoMsg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TableInfoMsg&&const DeepCollectionEquality().equals(other._tables, _tables));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tables));

@override
String toString() {
  return 'SqliteMsg.tableInfo(tables: $tables)';
}


}

/// @nodoc
abstract mixin class $TableInfoMsgCopyWith<$Res> implements $SqliteMsgCopyWith<$Res> {
  factory $TableInfoMsgCopyWith(TableInfoMsg value, $Res Function(TableInfoMsg) _then) = _$TableInfoMsgCopyWithImpl;
@useResult
$Res call({
 List<TableInfo> tables
});




}
/// @nodoc
class _$TableInfoMsgCopyWithImpl<$Res>
    implements $TableInfoMsgCopyWith<$Res> {
  _$TableInfoMsgCopyWithImpl(this._self, this._then);

  final TableInfoMsg _self;
  final $Res Function(TableInfoMsg) _then;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tables = null,}) {
  return _then(TableInfoMsg(
null == tables ? _self._tables : tables // ignore: cast_nullable_to_non_nullable
as List<TableInfo>,
  ));
}


}

/// @nodoc


class ConnectionChangedMsg implements SqliteMsg {
  const ConnectionChangedMsg(this.connection);
  

 final  DatabaseConnection connection;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionChangedMsgCopyWith<ConnectionChangedMsg> get copyWith => _$ConnectionChangedMsgCopyWithImpl<ConnectionChangedMsg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionChangedMsg&&(identical(other.connection, connection) || other.connection == connection));
}


@override
int get hashCode => Object.hash(runtimeType,connection);

@override
String toString() {
  return 'SqliteMsg.connectionChanged(connection: $connection)';
}


}

/// @nodoc
abstract mixin class $ConnectionChangedMsgCopyWith<$Res> implements $SqliteMsgCopyWith<$Res> {
  factory $ConnectionChangedMsgCopyWith(ConnectionChangedMsg value, $Res Function(ConnectionChangedMsg) _then) = _$ConnectionChangedMsgCopyWithImpl;
@useResult
$Res call({
 DatabaseConnection connection
});


$DatabaseConnectionCopyWith<$Res> get connection;

}
/// @nodoc
class _$ConnectionChangedMsgCopyWithImpl<$Res>
    implements $ConnectionChangedMsgCopyWith<$Res> {
  _$ConnectionChangedMsgCopyWithImpl(this._self, this._then);

  final ConnectionChangedMsg _self;
  final $Res Function(ConnectionChangedMsg) _then;

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? connection = null,}) {
  return _then(ConnectionChangedMsg(
null == connection ? _self.connection : connection // ignore: cast_nullable_to_non_nullable
as DatabaseConnection,
  ));
}

/// Create a copy of SqliteMsg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DatabaseConnectionCopyWith<$Res> get connection {
  
  return $DatabaseConnectionCopyWith<$Res>(_self.connection, (value) {
    return _then(_self.copyWith(connection: value));
  });
}
}

/// @nodoc


class DisposeMsg implements SqliteMsg {
  const DisposeMsg();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisposeMsg);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SqliteMsg.dispose()';
}


}




// dart format on
