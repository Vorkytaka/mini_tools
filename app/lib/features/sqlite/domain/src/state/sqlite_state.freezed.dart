// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sqlite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SqliteState {

 DatabaseConnection get connection; List<Result> get results; List<TableInfo> get tables;
/// Create a copy of SqliteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SqliteStateCopyWith<SqliteState> get copyWith => _$SqliteStateCopyWithImpl<SqliteState>(this as SqliteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SqliteState&&(identical(other.connection, connection) || other.connection == connection)&&const DeepCollectionEquality().equals(other.results, results)&&const DeepCollectionEquality().equals(other.tables, tables));
}


@override
int get hashCode => Object.hash(runtimeType,connection,const DeepCollectionEquality().hash(results),const DeepCollectionEquality().hash(tables));

@override
String toString() {
  return 'SqliteState(connection: $connection, results: $results, tables: $tables)';
}


}

/// @nodoc
abstract mixin class $SqliteStateCopyWith<$Res>  {
  factory $SqliteStateCopyWith(SqliteState value, $Res Function(SqliteState) _then) = _$SqliteStateCopyWithImpl;
@useResult
$Res call({
 DatabaseConnection connection, List<Result> results, List<TableInfo> tables
});


$DatabaseConnectionCopyWith<$Res> get connection;

}
/// @nodoc
class _$SqliteStateCopyWithImpl<$Res>
    implements $SqliteStateCopyWith<$Res> {
  _$SqliteStateCopyWithImpl(this._self, this._then);

  final SqliteState _self;
  final $Res Function(SqliteState) _then;

/// Create a copy of SqliteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connection = null,Object? results = null,Object? tables = null,}) {
  return _then(_self.copyWith(
connection: null == connection ? _self.connection : connection // ignore: cast_nullable_to_non_nullable
as DatabaseConnection,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Result>,tables: null == tables ? _self.tables : tables // ignore: cast_nullable_to_non_nullable
as List<TableInfo>,
  ));
}
/// Create a copy of SqliteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DatabaseConnectionCopyWith<$Res> get connection {
  
  return $DatabaseConnectionCopyWith<$Res>(_self.connection, (value) {
    return _then(_self.copyWith(connection: value));
  });
}
}


/// Adds pattern-matching-related methods to [SqliteState].
extension SqliteStatePatterns on SqliteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SqliteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SqliteState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SqliteState value)  $default,){
final _that = this;
switch (_that) {
case _SqliteState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SqliteState value)?  $default,){
final _that = this;
switch (_that) {
case _SqliteState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DatabaseConnection connection,  List<Result> results,  List<TableInfo> tables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SqliteState() when $default != null:
return $default(_that.connection,_that.results,_that.tables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DatabaseConnection connection,  List<Result> results,  List<TableInfo> tables)  $default,) {final _that = this;
switch (_that) {
case _SqliteState():
return $default(_that.connection,_that.results,_that.tables);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DatabaseConnection connection,  List<Result> results,  List<TableInfo> tables)?  $default,) {final _that = this;
switch (_that) {
case _SqliteState() when $default != null:
return $default(_that.connection,_that.results,_that.tables);case _:
  return null;

}
}

}

/// @nodoc


class _SqliteState implements SqliteState {
  const _SqliteState({required this.connection, required final  List<Result> results, required final  List<TableInfo> tables}): _results = results,_tables = tables;
  

@override final  DatabaseConnection connection;
 final  List<Result> _results;
@override List<Result> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

 final  List<TableInfo> _tables;
@override List<TableInfo> get tables {
  if (_tables is EqualUnmodifiableListView) return _tables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tables);
}


/// Create a copy of SqliteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SqliteStateCopyWith<_SqliteState> get copyWith => __$SqliteStateCopyWithImpl<_SqliteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SqliteState&&(identical(other.connection, connection) || other.connection == connection)&&const DeepCollectionEquality().equals(other._results, _results)&&const DeepCollectionEquality().equals(other._tables, _tables));
}


@override
int get hashCode => Object.hash(runtimeType,connection,const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_tables));

@override
String toString() {
  return 'SqliteState(connection: $connection, results: $results, tables: $tables)';
}


}

/// @nodoc
abstract mixin class _$SqliteStateCopyWith<$Res> implements $SqliteStateCopyWith<$Res> {
  factory _$SqliteStateCopyWith(_SqliteState value, $Res Function(_SqliteState) _then) = __$SqliteStateCopyWithImpl;
@override @useResult
$Res call({
 DatabaseConnection connection, List<Result> results, List<TableInfo> tables
});


@override $DatabaseConnectionCopyWith<$Res> get connection;

}
/// @nodoc
class __$SqliteStateCopyWithImpl<$Res>
    implements _$SqliteStateCopyWith<$Res> {
  __$SqliteStateCopyWithImpl(this._self, this._then);

  final _SqliteState _self;
  final $Res Function(_SqliteState) _then;

/// Create a copy of SqliteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connection = null,Object? results = null,Object? tables = null,}) {
  return _then(_SqliteState(
connection: null == connection ? _self.connection : connection // ignore: cast_nullable_to_non_nullable
as DatabaseConnection,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Result>,tables: null == tables ? _self._tables : tables // ignore: cast_nullable_to_non_nullable
as List<TableInfo>,
  ));
}

/// Create a copy of SqliteState
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
mixin _$DatabaseConnection {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatabaseConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatabaseConnection()';
}


}

/// @nodoc
class $DatabaseConnectionCopyWith<$Res>  {
$DatabaseConnectionCopyWith(DatabaseConnection _, $Res Function(DatabaseConnection) __);
}


/// Adds pattern-matching-related methods to [DatabaseConnection].
extension DatabaseConnectionPatterns on DatabaseConnection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Disconnected value)?  disconnect,TResult Function( InMemoryConnection value)?  inMemory,TResult Function( FileConnection value)?  file,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Disconnected() when disconnect != null:
return disconnect(_that);case InMemoryConnection() when inMemory != null:
return inMemory(_that);case FileConnection() when file != null:
return file(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Disconnected value)  disconnect,required TResult Function( InMemoryConnection value)  inMemory,required TResult Function( FileConnection value)  file,}){
final _that = this;
switch (_that) {
case Disconnected():
return disconnect(_that);case InMemoryConnection():
return inMemory(_that);case FileConnection():
return file(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Disconnected value)?  disconnect,TResult? Function( InMemoryConnection value)?  inMemory,TResult? Function( FileConnection value)?  file,}){
final _that = this;
switch (_that) {
case Disconnected() when disconnect != null:
return disconnect(_that);case InMemoryConnection() when inMemory != null:
return inMemory(_that);case FileConnection() when file != null:
return file(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  disconnect,TResult Function()?  inMemory,TResult Function( String folder,  String name)?  file,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Disconnected() when disconnect != null:
return disconnect();case InMemoryConnection() when inMemory != null:
return inMemory();case FileConnection() when file != null:
return file(_that.folder,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  disconnect,required TResult Function()  inMemory,required TResult Function( String folder,  String name)  file,}) {final _that = this;
switch (_that) {
case Disconnected():
return disconnect();case InMemoryConnection():
return inMemory();case FileConnection():
return file(_that.folder,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  disconnect,TResult? Function()?  inMemory,TResult? Function( String folder,  String name)?  file,}) {final _that = this;
switch (_that) {
case Disconnected() when disconnect != null:
return disconnect();case InMemoryConnection() when inMemory != null:
return inMemory();case FileConnection() when file != null:
return file(_that.folder,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class Disconnected implements DatabaseConnection {
  const Disconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Disconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatabaseConnection.disconnect()';
}


}




/// @nodoc


class InMemoryConnection implements DatabaseConnection {
  const InMemoryConnection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InMemoryConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatabaseConnection.inMemory()';
}


}




/// @nodoc


class FileConnection implements DatabaseConnection {
  const FileConnection({required this.folder, required this.name});
  

 final  String folder;
 final  String name;

/// Create a copy of DatabaseConnection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileConnectionCopyWith<FileConnection> get copyWith => _$FileConnectionCopyWithImpl<FileConnection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileConnection&&(identical(other.folder, folder) || other.folder == folder)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,folder,name);

@override
String toString() {
  return 'DatabaseConnection.file(folder: $folder, name: $name)';
}


}

/// @nodoc
abstract mixin class $FileConnectionCopyWith<$Res> implements $DatabaseConnectionCopyWith<$Res> {
  factory $FileConnectionCopyWith(FileConnection value, $Res Function(FileConnection) _then) = _$FileConnectionCopyWithImpl;
@useResult
$Res call({
 String folder, String name
});




}
/// @nodoc
class _$FileConnectionCopyWithImpl<$Res>
    implements $FileConnectionCopyWith<$Res> {
  _$FileConnectionCopyWithImpl(this._self, this._then);

  final FileConnection _self;
  final $Res Function(FileConnection) _then;

/// Create a copy of DatabaseConnection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? folder = null,Object? name = null,}) {
  return _then(FileConnection(
folder: null == folder ? _self.folder : folder // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Result {

 String get query; DateTime get datetime;
/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultCopyWith<Result> get copyWith => _$ResultCopyWithImpl<Result>(this as Result, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result&&(identical(other.query, query) || other.query == query)&&(identical(other.datetime, datetime) || other.datetime == datetime));
}


@override
int get hashCode => Object.hash(runtimeType,query,datetime);

@override
String toString() {
  return 'Result(query: $query, datetime: $datetime)';
}


}

/// @nodoc
abstract mixin class $ResultCopyWith<$Res>  {
  factory $ResultCopyWith(Result value, $Res Function(Result) _then) = _$ResultCopyWithImpl;
@useResult
$Res call({
 String query, DateTime datetime
});




}
/// @nodoc
class _$ResultCopyWithImpl<$Res>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._self, this._then);

  final Result _self;
  final $Res Function(Result) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? datetime = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,datetime: null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Result].
extension ResultPatterns on Result {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResultSuccess value)?  success,TResult Function( ResultFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResultSuccess() when success != null:
return success(_that);case ResultFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResultSuccess value)  success,required TResult Function( ResultFailure value)  failure,}){
final _that = this;
switch (_that) {
case ResultSuccess():
return success(_that);case ResultFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResultSuccess value)?  success,TResult? Function( ResultFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ResultSuccess() when success != null:
return success(_that);case ResultFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query,  DateTime datetime,  Iterable<dynamic> result)?  success,TResult Function( String query,  DateTime datetime,  String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResultSuccess() when success != null:
return success(_that.query,_that.datetime,_that.result);case ResultFailure() when failure != null:
return failure(_that.query,_that.datetime,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query,  DateTime datetime,  Iterable<dynamic> result)  success,required TResult Function( String query,  DateTime datetime,  String error)  failure,}) {final _that = this;
switch (_that) {
case ResultSuccess():
return success(_that.query,_that.datetime,_that.result);case ResultFailure():
return failure(_that.query,_that.datetime,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query,  DateTime datetime,  Iterable<dynamic> result)?  success,TResult? Function( String query,  DateTime datetime,  String error)?  failure,}) {final _that = this;
switch (_that) {
case ResultSuccess() when success != null:
return success(_that.query,_that.datetime,_that.result);case ResultFailure() when failure != null:
return failure(_that.query,_that.datetime,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ResultSuccess implements Result {
  const ResultSuccess({required this.query, required this.datetime, required this.result});
  

@override final  String query;
@override final  DateTime datetime;
 final  Iterable<dynamic> result;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultSuccessCopyWith<ResultSuccess> get copyWith => _$ResultSuccessCopyWithImpl<ResultSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultSuccess&&(identical(other.query, query) || other.query == query)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&const DeepCollectionEquality().equals(other.result, result));
}


@override
int get hashCode => Object.hash(runtimeType,query,datetime,const DeepCollectionEquality().hash(result));

@override
String toString() {
  return 'Result.success(query: $query, datetime: $datetime, result: $result)';
}


}

/// @nodoc
abstract mixin class $ResultSuccessCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory $ResultSuccessCopyWith(ResultSuccess value, $Res Function(ResultSuccess) _then) = _$ResultSuccessCopyWithImpl;
@override @useResult
$Res call({
 String query, DateTime datetime, Iterable<dynamic> result
});




}
/// @nodoc
class _$ResultSuccessCopyWithImpl<$Res>
    implements $ResultSuccessCopyWith<$Res> {
  _$ResultSuccessCopyWithImpl(this._self, this._then);

  final ResultSuccess _self;
  final $Res Function(ResultSuccess) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? datetime = null,Object? result = null,}) {
  return _then(ResultSuccess(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,datetime: null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Iterable<dynamic>,
  ));
}


}

/// @nodoc


class ResultFailure implements Result {
  const ResultFailure({required this.query, required this.datetime, required this.error});
  

@override final  String query;
@override final  DateTime datetime;
 final  String error;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultFailureCopyWith<ResultFailure> get copyWith => _$ResultFailureCopyWithImpl<ResultFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultFailure&&(identical(other.query, query) || other.query == query)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,query,datetime,error);

@override
String toString() {
  return 'Result.failure(query: $query, datetime: $datetime, error: $error)';
}


}

/// @nodoc
abstract mixin class $ResultFailureCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory $ResultFailureCopyWith(ResultFailure value, $Res Function(ResultFailure) _then) = _$ResultFailureCopyWithImpl;
@override @useResult
$Res call({
 String query, DateTime datetime, String error
});




}
/// @nodoc
class _$ResultFailureCopyWithImpl<$Res>
    implements $ResultFailureCopyWith<$Res> {
  _$ResultFailureCopyWithImpl(this._self, this._then);

  final ResultFailure _self;
  final $Res Function(ResultFailure) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? datetime = null,Object? error = null,}) {
  return _then(ResultFailure(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,datetime: null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TableInfo {

 String get name; List<ColumnInfo> get columns;
/// Create a copy of TableInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TableInfoCopyWith<TableInfo> get copyWith => _$TableInfoCopyWithImpl<TableInfo>(this as TableInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TableInfo&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.columns, columns));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(columns));

@override
String toString() {
  return 'TableInfo(name: $name, columns: $columns)';
}


}

/// @nodoc
abstract mixin class $TableInfoCopyWith<$Res>  {
  factory $TableInfoCopyWith(TableInfo value, $Res Function(TableInfo) _then) = _$TableInfoCopyWithImpl;
@useResult
$Res call({
 String name, List<ColumnInfo> columns
});




}
/// @nodoc
class _$TableInfoCopyWithImpl<$Res>
    implements $TableInfoCopyWith<$Res> {
  _$TableInfoCopyWithImpl(this._self, this._then);

  final TableInfo _self;
  final $Res Function(TableInfo) _then;

/// Create a copy of TableInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? columns = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,columns: null == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as List<ColumnInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [TableInfo].
extension TableInfoPatterns on TableInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TableInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TableInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TableInfo value)  $default,){
final _that = this;
switch (_that) {
case _TableInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TableInfo value)?  $default,){
final _that = this;
switch (_that) {
case _TableInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<ColumnInfo> columns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TableInfo() when $default != null:
return $default(_that.name,_that.columns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<ColumnInfo> columns)  $default,) {final _that = this;
switch (_that) {
case _TableInfo():
return $default(_that.name,_that.columns);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<ColumnInfo> columns)?  $default,) {final _that = this;
switch (_that) {
case _TableInfo() when $default != null:
return $default(_that.name,_that.columns);case _:
  return null;

}
}

}

/// @nodoc


class _TableInfo implements TableInfo {
  const _TableInfo({required this.name, required final  List<ColumnInfo> columns}): _columns = columns;
  

@override final  String name;
 final  List<ColumnInfo> _columns;
@override List<ColumnInfo> get columns {
  if (_columns is EqualUnmodifiableListView) return _columns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_columns);
}


/// Create a copy of TableInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TableInfoCopyWith<_TableInfo> get copyWith => __$TableInfoCopyWithImpl<_TableInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TableInfo&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._columns, _columns));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_columns));

@override
String toString() {
  return 'TableInfo(name: $name, columns: $columns)';
}


}

/// @nodoc
abstract mixin class _$TableInfoCopyWith<$Res> implements $TableInfoCopyWith<$Res> {
  factory _$TableInfoCopyWith(_TableInfo value, $Res Function(_TableInfo) _then) = __$TableInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, List<ColumnInfo> columns
});




}
/// @nodoc
class __$TableInfoCopyWithImpl<$Res>
    implements _$TableInfoCopyWith<$Res> {
  __$TableInfoCopyWithImpl(this._self, this._then);

  final _TableInfo _self;
  final $Res Function(_TableInfo) _then;

/// Create a copy of TableInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? columns = null,}) {
  return _then(_TableInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,columns: null == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<ColumnInfo>,
  ));
}


}

/// @nodoc
mixin _$ColumnInfo {

 String get name; String get type; bool get pk;
/// Create a copy of ColumnInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColumnInfoCopyWith<ColumnInfo> get copyWith => _$ColumnInfoCopyWithImpl<ColumnInfo>(this as ColumnInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColumnInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.pk, pk) || other.pk == pk));
}


@override
int get hashCode => Object.hash(runtimeType,name,type,pk);

@override
String toString() {
  return 'ColumnInfo(name: $name, type: $type, pk: $pk)';
}


}

/// @nodoc
abstract mixin class $ColumnInfoCopyWith<$Res>  {
  factory $ColumnInfoCopyWith(ColumnInfo value, $Res Function(ColumnInfo) _then) = _$ColumnInfoCopyWithImpl;
@useResult
$Res call({
 String name, String type, bool pk
});




}
/// @nodoc
class _$ColumnInfoCopyWithImpl<$Res>
    implements $ColumnInfoCopyWith<$Res> {
  _$ColumnInfoCopyWithImpl(this._self, this._then);

  final ColumnInfo _self;
  final $Res Function(ColumnInfo) _then;

/// Create a copy of ColumnInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? pk = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,pk: null == pk ? _self.pk : pk // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ColumnInfo].
extension ColumnInfoPatterns on ColumnInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ColumnInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ColumnInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ColumnInfo value)  $default,){
final _that = this;
switch (_that) {
case _ColumnInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ColumnInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ColumnInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String type,  bool pk)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ColumnInfo() when $default != null:
return $default(_that.name,_that.type,_that.pk);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String type,  bool pk)  $default,) {final _that = this;
switch (_that) {
case _ColumnInfo():
return $default(_that.name,_that.type,_that.pk);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String type,  bool pk)?  $default,) {final _that = this;
switch (_that) {
case _ColumnInfo() when $default != null:
return $default(_that.name,_that.type,_that.pk);case _:
  return null;

}
}

}

/// @nodoc


class _ColumnInfo implements ColumnInfo {
  const _ColumnInfo({required this.name, required this.type, required this.pk});
  

@override final  String name;
@override final  String type;
@override final  bool pk;

/// Create a copy of ColumnInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColumnInfoCopyWith<_ColumnInfo> get copyWith => __$ColumnInfoCopyWithImpl<_ColumnInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColumnInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.pk, pk) || other.pk == pk));
}


@override
int get hashCode => Object.hash(runtimeType,name,type,pk);

@override
String toString() {
  return 'ColumnInfo(name: $name, type: $type, pk: $pk)';
}


}

/// @nodoc
abstract mixin class _$ColumnInfoCopyWith<$Res> implements $ColumnInfoCopyWith<$Res> {
  factory _$ColumnInfoCopyWith(_ColumnInfo value, $Res Function(_ColumnInfo) _then) = __$ColumnInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, String type, bool pk
});




}
/// @nodoc
class __$ColumnInfoCopyWithImpl<$Res>
    implements _$ColumnInfoCopyWith<$Res> {
  __$ColumnInfoCopyWithImpl(this._self, this._then);

  final _ColumnInfo _self;
  final $Res Function(_ColumnInfo) _then;

/// Create a copy of ColumnInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? pk = null,}) {
  return _then(_ColumnInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,pk: null == pk ? _self.pk : pk // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
