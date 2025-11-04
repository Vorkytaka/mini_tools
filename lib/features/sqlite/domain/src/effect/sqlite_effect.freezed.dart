// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sqlite_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SqliteEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SqliteEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SqliteEffect()';
}


}

/// @nodoc
class $SqliteEffectCopyWith<$Res>  {
$SqliteEffectCopyWith(SqliteEffect _, $Res Function(SqliteEffect) __);
}


/// Adds pattern-matching-related methods to [SqliteEffect].
extension SqliteEffectPatterns on SqliteEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExecuteEffect value)?  execute,TResult Function( UpdateTablesEffect value)?  updateTables,TResult Function( ImportDbEffect value)?  importDb,TResult Function( ExportDbEffect value)?  exportDb,TResult Function( SubscribeDbEffect value)?  subscribeDb,TResult Function( UnsubscribeDbEffect value)?  unsubscribeDb,TResult Function( DropTableEffect value)?  dropTable,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExecuteEffect() when execute != null:
return execute(_that);case UpdateTablesEffect() when updateTables != null:
return updateTables(_that);case ImportDbEffect() when importDb != null:
return importDb(_that);case ExportDbEffect() when exportDb != null:
return exportDb(_that);case SubscribeDbEffect() when subscribeDb != null:
return subscribeDb(_that);case UnsubscribeDbEffect() when unsubscribeDb != null:
return unsubscribeDb(_that);case DropTableEffect() when dropTable != null:
return dropTable(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExecuteEffect value)  execute,required TResult Function( UpdateTablesEffect value)  updateTables,required TResult Function( ImportDbEffect value)  importDb,required TResult Function( ExportDbEffect value)  exportDb,required TResult Function( SubscribeDbEffect value)  subscribeDb,required TResult Function( UnsubscribeDbEffect value)  unsubscribeDb,required TResult Function( DropTableEffect value)  dropTable,}){
final _that = this;
switch (_that) {
case ExecuteEffect():
return execute(_that);case UpdateTablesEffect():
return updateTables(_that);case ImportDbEffect():
return importDb(_that);case ExportDbEffect():
return exportDb(_that);case SubscribeDbEffect():
return subscribeDb(_that);case UnsubscribeDbEffect():
return unsubscribeDb(_that);case DropTableEffect():
return dropTable(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExecuteEffect value)?  execute,TResult? Function( UpdateTablesEffect value)?  updateTables,TResult? Function( ImportDbEffect value)?  importDb,TResult? Function( ExportDbEffect value)?  exportDb,TResult? Function( SubscribeDbEffect value)?  subscribeDb,TResult? Function( UnsubscribeDbEffect value)?  unsubscribeDb,TResult? Function( DropTableEffect value)?  dropTable,}){
final _that = this;
switch (_that) {
case ExecuteEffect() when execute != null:
return execute(_that);case UpdateTablesEffect() when updateTables != null:
return updateTables(_that);case ImportDbEffect() when importDb != null:
return importDb(_that);case ExportDbEffect() when exportDb != null:
return exportDb(_that);case SubscribeDbEffect() when subscribeDb != null:
return subscribeDb(_that);case UnsubscribeDbEffect() when unsubscribeDb != null:
return unsubscribeDb(_that);case DropTableEffect() when dropTable != null:
return dropTable(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  execute,TResult Function()?  updateTables,TResult Function( String path)?  importDb,TResult Function( String path)?  exportDb,TResult Function()?  subscribeDb,TResult Function()?  unsubscribeDb,TResult Function()?  dropTable,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExecuteEffect() when execute != null:
return execute(_that.query);case UpdateTablesEffect() when updateTables != null:
return updateTables();case ImportDbEffect() when importDb != null:
return importDb(_that.path);case ExportDbEffect() when exportDb != null:
return exportDb(_that.path);case SubscribeDbEffect() when subscribeDb != null:
return subscribeDb();case UnsubscribeDbEffect() when unsubscribeDb != null:
return unsubscribeDb();case DropTableEffect() when dropTable != null:
return dropTable();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  execute,required TResult Function()  updateTables,required TResult Function( String path)  importDb,required TResult Function( String path)  exportDb,required TResult Function()  subscribeDb,required TResult Function()  unsubscribeDb,required TResult Function()  dropTable,}) {final _that = this;
switch (_that) {
case ExecuteEffect():
return execute(_that.query);case UpdateTablesEffect():
return updateTables();case ImportDbEffect():
return importDb(_that.path);case ExportDbEffect():
return exportDb(_that.path);case SubscribeDbEffect():
return subscribeDb();case UnsubscribeDbEffect():
return unsubscribeDb();case DropTableEffect():
return dropTable();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  execute,TResult? Function()?  updateTables,TResult? Function( String path)?  importDb,TResult? Function( String path)?  exportDb,TResult? Function()?  subscribeDb,TResult? Function()?  unsubscribeDb,TResult? Function()?  dropTable,}) {final _that = this;
switch (_that) {
case ExecuteEffect() when execute != null:
return execute(_that.query);case UpdateTablesEffect() when updateTables != null:
return updateTables();case ImportDbEffect() when importDb != null:
return importDb(_that.path);case ExportDbEffect() when exportDb != null:
return exportDb(_that.path);case SubscribeDbEffect() when subscribeDb != null:
return subscribeDb();case UnsubscribeDbEffect() when unsubscribeDb != null:
return unsubscribeDb();case DropTableEffect() when dropTable != null:
return dropTable();case _:
  return null;

}
}

}

/// @nodoc


class ExecuteEffect implements SqliteEffect {
  const ExecuteEffect(this.query);
  

 final  String query;

/// Create a copy of SqliteEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExecuteEffectCopyWith<ExecuteEffect> get copyWith => _$ExecuteEffectCopyWithImpl<ExecuteEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExecuteEffect&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SqliteEffect.execute(query: $query)';
}


}

/// @nodoc
abstract mixin class $ExecuteEffectCopyWith<$Res> implements $SqliteEffectCopyWith<$Res> {
  factory $ExecuteEffectCopyWith(ExecuteEffect value, $Res Function(ExecuteEffect) _then) = _$ExecuteEffectCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$ExecuteEffectCopyWithImpl<$Res>
    implements $ExecuteEffectCopyWith<$Res> {
  _$ExecuteEffectCopyWithImpl(this._self, this._then);

  final ExecuteEffect _self;
  final $Res Function(ExecuteEffect) _then;

/// Create a copy of SqliteEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(ExecuteEffect(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateTablesEffect implements SqliteEffect {
  const UpdateTablesEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTablesEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SqliteEffect.updateTables()';
}


}




/// @nodoc


class ImportDbEffect implements SqliteEffect {
  const ImportDbEffect(this.path);
  

 final  String path;

/// Create a copy of SqliteEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportDbEffectCopyWith<ImportDbEffect> get copyWith => _$ImportDbEffectCopyWithImpl<ImportDbEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportDbEffect&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'SqliteEffect.importDb(path: $path)';
}


}

/// @nodoc
abstract mixin class $ImportDbEffectCopyWith<$Res> implements $SqliteEffectCopyWith<$Res> {
  factory $ImportDbEffectCopyWith(ImportDbEffect value, $Res Function(ImportDbEffect) _then) = _$ImportDbEffectCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$ImportDbEffectCopyWithImpl<$Res>
    implements $ImportDbEffectCopyWith<$Res> {
  _$ImportDbEffectCopyWithImpl(this._self, this._then);

  final ImportDbEffect _self;
  final $Res Function(ImportDbEffect) _then;

/// Create a copy of SqliteEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(ImportDbEffect(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ExportDbEffect implements SqliteEffect {
  const ExportDbEffect(this.path);
  

 final  String path;

/// Create a copy of SqliteEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExportDbEffectCopyWith<ExportDbEffect> get copyWith => _$ExportDbEffectCopyWithImpl<ExportDbEffect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExportDbEffect&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'SqliteEffect.exportDb(path: $path)';
}


}

/// @nodoc
abstract mixin class $ExportDbEffectCopyWith<$Res> implements $SqliteEffectCopyWith<$Res> {
  factory $ExportDbEffectCopyWith(ExportDbEffect value, $Res Function(ExportDbEffect) _then) = _$ExportDbEffectCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$ExportDbEffectCopyWithImpl<$Res>
    implements $ExportDbEffectCopyWith<$Res> {
  _$ExportDbEffectCopyWithImpl(this._self, this._then);

  final ExportDbEffect _self;
  final $Res Function(ExportDbEffect) _then;

/// Create a copy of SqliteEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(ExportDbEffect(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubscribeDbEffect implements SqliteEffect {
  const SubscribeDbEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscribeDbEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SqliteEffect.subscribeDb()';
}


}




/// @nodoc


class UnsubscribeDbEffect implements SqliteEffect {
  const UnsubscribeDbEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnsubscribeDbEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SqliteEffect.unsubscribeDb()';
}


}




/// @nodoc


class DropTableEffect implements SqliteEffect {
  const DropTableEffect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DropTableEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SqliteEffect.dropTable()';
}


}




// dart format on
