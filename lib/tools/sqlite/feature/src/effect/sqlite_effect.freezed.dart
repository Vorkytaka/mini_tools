// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sqlite_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SqliteEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function() updateTables,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() subscribeDb,
    required TResult Function() unsubscribeDb,
    required TResult Function() dropTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function()? updateTables,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? subscribeDb,
    TResult? Function()? unsubscribeDb,
    TResult? Function()? dropTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function()? updateTables,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? subscribeDb,
    TResult Function()? unsubscribeDb,
    TResult Function()? dropTable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEffect value) execute,
    required TResult Function(UpdateTablesEffect value) updateTables,
    required TResult Function(ImportDbEffect value) importDb,
    required TResult Function(ExportDbEffect value) exportDb,
    required TResult Function(SubscribeDbEffect value) subscribeDb,
    required TResult Function(UnsubscribeDbEffect value) unsubscribeDb,
    required TResult Function(DropTableEffect value) dropTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEffect value)? execute,
    TResult? Function(UpdateTablesEffect value)? updateTables,
    TResult? Function(ImportDbEffect value)? importDb,
    TResult? Function(ExportDbEffect value)? exportDb,
    TResult? Function(SubscribeDbEffect value)? subscribeDb,
    TResult? Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult? Function(DropTableEffect value)? dropTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEffect value)? execute,
    TResult Function(UpdateTablesEffect value)? updateTables,
    TResult Function(ImportDbEffect value)? importDb,
    TResult Function(ExportDbEffect value)? exportDb,
    TResult Function(SubscribeDbEffect value)? subscribeDb,
    TResult Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult Function(DropTableEffect value)? dropTable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SqliteEffectCopyWith<$Res> {
  factory $SqliteEffectCopyWith(
          SqliteEffect value, $Res Function(SqliteEffect) then) =
      _$SqliteEffectCopyWithImpl<$Res, SqliteEffect>;
}

/// @nodoc
class _$SqliteEffectCopyWithImpl<$Res, $Val extends SqliteEffect>
    implements $SqliteEffectCopyWith<$Res> {
  _$SqliteEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExecuteEffectImplCopyWith<$Res> {
  factory _$$ExecuteEffectImplCopyWith(
          _$ExecuteEffectImpl value, $Res Function(_$ExecuteEffectImpl) then) =
      __$$ExecuteEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ExecuteEffectImplCopyWithImpl<$Res>
    extends _$SqliteEffectCopyWithImpl<$Res, _$ExecuteEffectImpl>
    implements _$$ExecuteEffectImplCopyWith<$Res> {
  __$$ExecuteEffectImplCopyWithImpl(
      _$ExecuteEffectImpl _value, $Res Function(_$ExecuteEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ExecuteEffectImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExecuteEffectImpl implements ExecuteEffect {
  const _$ExecuteEffectImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SqliteEffect.execute(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecuteEffectImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecuteEffectImplCopyWith<_$ExecuteEffectImpl> get copyWith =>
      __$$ExecuteEffectImplCopyWithImpl<_$ExecuteEffectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function() updateTables,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() subscribeDb,
    required TResult Function() unsubscribeDb,
    required TResult Function() dropTable,
  }) {
    return execute(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function()? updateTables,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? subscribeDb,
    TResult? Function()? unsubscribeDb,
    TResult? Function()? dropTable,
  }) {
    return execute?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function()? updateTables,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? subscribeDb,
    TResult Function()? unsubscribeDb,
    TResult Function()? dropTable,
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
    required TResult Function(ExecuteEffect value) execute,
    required TResult Function(UpdateTablesEffect value) updateTables,
    required TResult Function(ImportDbEffect value) importDb,
    required TResult Function(ExportDbEffect value) exportDb,
    required TResult Function(SubscribeDbEffect value) subscribeDb,
    required TResult Function(UnsubscribeDbEffect value) unsubscribeDb,
    required TResult Function(DropTableEffect value) dropTable,
  }) {
    return execute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEffect value)? execute,
    TResult? Function(UpdateTablesEffect value)? updateTables,
    TResult? Function(ImportDbEffect value)? importDb,
    TResult? Function(ExportDbEffect value)? exportDb,
    TResult? Function(SubscribeDbEffect value)? subscribeDb,
    TResult? Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult? Function(DropTableEffect value)? dropTable,
  }) {
    return execute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEffect value)? execute,
    TResult Function(UpdateTablesEffect value)? updateTables,
    TResult Function(ImportDbEffect value)? importDb,
    TResult Function(ExportDbEffect value)? exportDb,
    TResult Function(SubscribeDbEffect value)? subscribeDb,
    TResult Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult Function(DropTableEffect value)? dropTable,
    required TResult orElse(),
  }) {
    if (execute != null) {
      return execute(this);
    }
    return orElse();
  }
}

abstract class ExecuteEffect implements SqliteEffect {
  const factory ExecuteEffect(final String query) = _$ExecuteEffectImpl;

  String get query;

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExecuteEffectImplCopyWith<_$ExecuteEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTablesEffectImplCopyWith<$Res> {
  factory _$$UpdateTablesEffectImplCopyWith(_$UpdateTablesEffectImpl value,
          $Res Function(_$UpdateTablesEffectImpl) then) =
      __$$UpdateTablesEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateTablesEffectImplCopyWithImpl<$Res>
    extends _$SqliteEffectCopyWithImpl<$Res, _$UpdateTablesEffectImpl>
    implements _$$UpdateTablesEffectImplCopyWith<$Res> {
  __$$UpdateTablesEffectImplCopyWithImpl(_$UpdateTablesEffectImpl _value,
      $Res Function(_$UpdateTablesEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateTablesEffectImpl implements UpdateTablesEffect {
  const _$UpdateTablesEffectImpl();

  @override
  String toString() {
    return 'SqliteEffect.updateTables()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateTablesEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function() updateTables,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() subscribeDb,
    required TResult Function() unsubscribeDb,
    required TResult Function() dropTable,
  }) {
    return updateTables();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function()? updateTables,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? subscribeDb,
    TResult? Function()? unsubscribeDb,
    TResult? Function()? dropTable,
  }) {
    return updateTables?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function()? updateTables,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? subscribeDb,
    TResult Function()? unsubscribeDb,
    TResult Function()? dropTable,
    required TResult orElse(),
  }) {
    if (updateTables != null) {
      return updateTables();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEffect value) execute,
    required TResult Function(UpdateTablesEffect value) updateTables,
    required TResult Function(ImportDbEffect value) importDb,
    required TResult Function(ExportDbEffect value) exportDb,
    required TResult Function(SubscribeDbEffect value) subscribeDb,
    required TResult Function(UnsubscribeDbEffect value) unsubscribeDb,
    required TResult Function(DropTableEffect value) dropTable,
  }) {
    return updateTables(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEffect value)? execute,
    TResult? Function(UpdateTablesEffect value)? updateTables,
    TResult? Function(ImportDbEffect value)? importDb,
    TResult? Function(ExportDbEffect value)? exportDb,
    TResult? Function(SubscribeDbEffect value)? subscribeDb,
    TResult? Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult? Function(DropTableEffect value)? dropTable,
  }) {
    return updateTables?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEffect value)? execute,
    TResult Function(UpdateTablesEffect value)? updateTables,
    TResult Function(ImportDbEffect value)? importDb,
    TResult Function(ExportDbEffect value)? exportDb,
    TResult Function(SubscribeDbEffect value)? subscribeDb,
    TResult Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult Function(DropTableEffect value)? dropTable,
    required TResult orElse(),
  }) {
    if (updateTables != null) {
      return updateTables(this);
    }
    return orElse();
  }
}

abstract class UpdateTablesEffect implements SqliteEffect {
  const factory UpdateTablesEffect() = _$UpdateTablesEffectImpl;
}

/// @nodoc
abstract class _$$ImportDbEffectImplCopyWith<$Res> {
  factory _$$ImportDbEffectImplCopyWith(_$ImportDbEffectImpl value,
          $Res Function(_$ImportDbEffectImpl) then) =
      __$$ImportDbEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ImportDbEffectImplCopyWithImpl<$Res>
    extends _$SqliteEffectCopyWithImpl<$Res, _$ImportDbEffectImpl>
    implements _$$ImportDbEffectImplCopyWith<$Res> {
  __$$ImportDbEffectImplCopyWithImpl(
      _$ImportDbEffectImpl _value, $Res Function(_$ImportDbEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ImportDbEffectImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImportDbEffectImpl implements ImportDbEffect {
  const _$ImportDbEffectImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'SqliteEffect.importDb(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportDbEffectImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportDbEffectImplCopyWith<_$ImportDbEffectImpl> get copyWith =>
      __$$ImportDbEffectImplCopyWithImpl<_$ImportDbEffectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function() updateTables,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() subscribeDb,
    required TResult Function() unsubscribeDb,
    required TResult Function() dropTable,
  }) {
    return importDb(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function()? updateTables,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? subscribeDb,
    TResult? Function()? unsubscribeDb,
    TResult? Function()? dropTable,
  }) {
    return importDb?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function()? updateTables,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? subscribeDb,
    TResult Function()? unsubscribeDb,
    TResult Function()? dropTable,
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
    required TResult Function(ExecuteEffect value) execute,
    required TResult Function(UpdateTablesEffect value) updateTables,
    required TResult Function(ImportDbEffect value) importDb,
    required TResult Function(ExportDbEffect value) exportDb,
    required TResult Function(SubscribeDbEffect value) subscribeDb,
    required TResult Function(UnsubscribeDbEffect value) unsubscribeDb,
    required TResult Function(DropTableEffect value) dropTable,
  }) {
    return importDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEffect value)? execute,
    TResult? Function(UpdateTablesEffect value)? updateTables,
    TResult? Function(ImportDbEffect value)? importDb,
    TResult? Function(ExportDbEffect value)? exportDb,
    TResult? Function(SubscribeDbEffect value)? subscribeDb,
    TResult? Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult? Function(DropTableEffect value)? dropTable,
  }) {
    return importDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEffect value)? execute,
    TResult Function(UpdateTablesEffect value)? updateTables,
    TResult Function(ImportDbEffect value)? importDb,
    TResult Function(ExportDbEffect value)? exportDb,
    TResult Function(SubscribeDbEffect value)? subscribeDb,
    TResult Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult Function(DropTableEffect value)? dropTable,
    required TResult orElse(),
  }) {
    if (importDb != null) {
      return importDb(this);
    }
    return orElse();
  }
}

abstract class ImportDbEffect implements SqliteEffect {
  const factory ImportDbEffect(final String path) = _$ImportDbEffectImpl;

  String get path;

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImportDbEffectImplCopyWith<_$ImportDbEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExportDbEffectImplCopyWith<$Res> {
  factory _$$ExportDbEffectImplCopyWith(_$ExportDbEffectImpl value,
          $Res Function(_$ExportDbEffectImpl) then) =
      __$$ExportDbEffectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ExportDbEffectImplCopyWithImpl<$Res>
    extends _$SqliteEffectCopyWithImpl<$Res, _$ExportDbEffectImpl>
    implements _$$ExportDbEffectImplCopyWith<$Res> {
  __$$ExportDbEffectImplCopyWithImpl(
      _$ExportDbEffectImpl _value, $Res Function(_$ExportDbEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ExportDbEffectImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExportDbEffectImpl implements ExportDbEffect {
  const _$ExportDbEffectImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'SqliteEffect.exportDb(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportDbEffectImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportDbEffectImplCopyWith<_$ExportDbEffectImpl> get copyWith =>
      __$$ExportDbEffectImplCopyWithImpl<_$ExportDbEffectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function() updateTables,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() subscribeDb,
    required TResult Function() unsubscribeDb,
    required TResult Function() dropTable,
  }) {
    return exportDb(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function()? updateTables,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? subscribeDb,
    TResult? Function()? unsubscribeDb,
    TResult? Function()? dropTable,
  }) {
    return exportDb?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function()? updateTables,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? subscribeDb,
    TResult Function()? unsubscribeDb,
    TResult Function()? dropTable,
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
    required TResult Function(ExecuteEffect value) execute,
    required TResult Function(UpdateTablesEffect value) updateTables,
    required TResult Function(ImportDbEffect value) importDb,
    required TResult Function(ExportDbEffect value) exportDb,
    required TResult Function(SubscribeDbEffect value) subscribeDb,
    required TResult Function(UnsubscribeDbEffect value) unsubscribeDb,
    required TResult Function(DropTableEffect value) dropTable,
  }) {
    return exportDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEffect value)? execute,
    TResult? Function(UpdateTablesEffect value)? updateTables,
    TResult? Function(ImportDbEffect value)? importDb,
    TResult? Function(ExportDbEffect value)? exportDb,
    TResult? Function(SubscribeDbEffect value)? subscribeDb,
    TResult? Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult? Function(DropTableEffect value)? dropTable,
  }) {
    return exportDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEffect value)? execute,
    TResult Function(UpdateTablesEffect value)? updateTables,
    TResult Function(ImportDbEffect value)? importDb,
    TResult Function(ExportDbEffect value)? exportDb,
    TResult Function(SubscribeDbEffect value)? subscribeDb,
    TResult Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult Function(DropTableEffect value)? dropTable,
    required TResult orElse(),
  }) {
    if (exportDb != null) {
      return exportDb(this);
    }
    return orElse();
  }
}

abstract class ExportDbEffect implements SqliteEffect {
  const factory ExportDbEffect(final String path) = _$ExportDbEffectImpl;

  String get path;

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportDbEffectImplCopyWith<_$ExportDbEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscribeDbEffectImplCopyWith<$Res> {
  factory _$$SubscribeDbEffectImplCopyWith(_$SubscribeDbEffectImpl value,
          $Res Function(_$SubscribeDbEffectImpl) then) =
      __$$SubscribeDbEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeDbEffectImplCopyWithImpl<$Res>
    extends _$SqliteEffectCopyWithImpl<$Res, _$SubscribeDbEffectImpl>
    implements _$$SubscribeDbEffectImplCopyWith<$Res> {
  __$$SubscribeDbEffectImplCopyWithImpl(_$SubscribeDbEffectImpl _value,
      $Res Function(_$SubscribeDbEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubscribeDbEffectImpl implements SubscribeDbEffect {
  const _$SubscribeDbEffectImpl();

  @override
  String toString() {
    return 'SqliteEffect.subscribeDb()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubscribeDbEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function() updateTables,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() subscribeDb,
    required TResult Function() unsubscribeDb,
    required TResult Function() dropTable,
  }) {
    return subscribeDb();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function()? updateTables,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? subscribeDb,
    TResult? Function()? unsubscribeDb,
    TResult? Function()? dropTable,
  }) {
    return subscribeDb?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function()? updateTables,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? subscribeDb,
    TResult Function()? unsubscribeDb,
    TResult Function()? dropTable,
    required TResult orElse(),
  }) {
    if (subscribeDb != null) {
      return subscribeDb();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEffect value) execute,
    required TResult Function(UpdateTablesEffect value) updateTables,
    required TResult Function(ImportDbEffect value) importDb,
    required TResult Function(ExportDbEffect value) exportDb,
    required TResult Function(SubscribeDbEffect value) subscribeDb,
    required TResult Function(UnsubscribeDbEffect value) unsubscribeDb,
    required TResult Function(DropTableEffect value) dropTable,
  }) {
    return subscribeDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEffect value)? execute,
    TResult? Function(UpdateTablesEffect value)? updateTables,
    TResult? Function(ImportDbEffect value)? importDb,
    TResult? Function(ExportDbEffect value)? exportDb,
    TResult? Function(SubscribeDbEffect value)? subscribeDb,
    TResult? Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult? Function(DropTableEffect value)? dropTable,
  }) {
    return subscribeDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEffect value)? execute,
    TResult Function(UpdateTablesEffect value)? updateTables,
    TResult Function(ImportDbEffect value)? importDb,
    TResult Function(ExportDbEffect value)? exportDb,
    TResult Function(SubscribeDbEffect value)? subscribeDb,
    TResult Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult Function(DropTableEffect value)? dropTable,
    required TResult orElse(),
  }) {
    if (subscribeDb != null) {
      return subscribeDb(this);
    }
    return orElse();
  }
}

abstract class SubscribeDbEffect implements SqliteEffect {
  const factory SubscribeDbEffect() = _$SubscribeDbEffectImpl;
}

/// @nodoc
abstract class _$$UnsubscribeDbEffectImplCopyWith<$Res> {
  factory _$$UnsubscribeDbEffectImplCopyWith(_$UnsubscribeDbEffectImpl value,
          $Res Function(_$UnsubscribeDbEffectImpl) then) =
      __$$UnsubscribeDbEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnsubscribeDbEffectImplCopyWithImpl<$Res>
    extends _$SqliteEffectCopyWithImpl<$Res, _$UnsubscribeDbEffectImpl>
    implements _$$UnsubscribeDbEffectImplCopyWith<$Res> {
  __$$UnsubscribeDbEffectImplCopyWithImpl(_$UnsubscribeDbEffectImpl _value,
      $Res Function(_$UnsubscribeDbEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnsubscribeDbEffectImpl implements UnsubscribeDbEffect {
  const _$UnsubscribeDbEffectImpl();

  @override
  String toString() {
    return 'SqliteEffect.unsubscribeDb()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsubscribeDbEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function() updateTables,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() subscribeDb,
    required TResult Function() unsubscribeDb,
    required TResult Function() dropTable,
  }) {
    return unsubscribeDb();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function()? updateTables,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? subscribeDb,
    TResult? Function()? unsubscribeDb,
    TResult? Function()? dropTable,
  }) {
    return unsubscribeDb?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function()? updateTables,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? subscribeDb,
    TResult Function()? unsubscribeDb,
    TResult Function()? dropTable,
    required TResult orElse(),
  }) {
    if (unsubscribeDb != null) {
      return unsubscribeDb();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExecuteEffect value) execute,
    required TResult Function(UpdateTablesEffect value) updateTables,
    required TResult Function(ImportDbEffect value) importDb,
    required TResult Function(ExportDbEffect value) exportDb,
    required TResult Function(SubscribeDbEffect value) subscribeDb,
    required TResult Function(UnsubscribeDbEffect value) unsubscribeDb,
    required TResult Function(DropTableEffect value) dropTable,
  }) {
    return unsubscribeDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEffect value)? execute,
    TResult? Function(UpdateTablesEffect value)? updateTables,
    TResult? Function(ImportDbEffect value)? importDb,
    TResult? Function(ExportDbEffect value)? exportDb,
    TResult? Function(SubscribeDbEffect value)? subscribeDb,
    TResult? Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult? Function(DropTableEffect value)? dropTable,
  }) {
    return unsubscribeDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEffect value)? execute,
    TResult Function(UpdateTablesEffect value)? updateTables,
    TResult Function(ImportDbEffect value)? importDb,
    TResult Function(ExportDbEffect value)? exportDb,
    TResult Function(SubscribeDbEffect value)? subscribeDb,
    TResult Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult Function(DropTableEffect value)? dropTable,
    required TResult orElse(),
  }) {
    if (unsubscribeDb != null) {
      return unsubscribeDb(this);
    }
    return orElse();
  }
}

abstract class UnsubscribeDbEffect implements SqliteEffect {
  const factory UnsubscribeDbEffect() = _$UnsubscribeDbEffectImpl;
}

/// @nodoc
abstract class _$$DropTableEffectImplCopyWith<$Res> {
  factory _$$DropTableEffectImplCopyWith(_$DropTableEffectImpl value,
          $Res Function(_$DropTableEffectImpl) then) =
      __$$DropTableEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DropTableEffectImplCopyWithImpl<$Res>
    extends _$SqliteEffectCopyWithImpl<$Res, _$DropTableEffectImpl>
    implements _$$DropTableEffectImplCopyWith<$Res> {
  __$$DropTableEffectImplCopyWithImpl(
      _$DropTableEffectImpl _value, $Res Function(_$DropTableEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqliteEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DropTableEffectImpl implements DropTableEffect {
  const _$DropTableEffectImpl();

  @override
  String toString() {
    return 'SqliteEffect.dropTable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DropTableEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) execute,
    required TResult Function() updateTables,
    required TResult Function(String path) importDb,
    required TResult Function(String path) exportDb,
    required TResult Function() subscribeDb,
    required TResult Function() unsubscribeDb,
    required TResult Function() dropTable,
  }) {
    return dropTable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? execute,
    TResult? Function()? updateTables,
    TResult? Function(String path)? importDb,
    TResult? Function(String path)? exportDb,
    TResult? Function()? subscribeDb,
    TResult? Function()? unsubscribeDb,
    TResult? Function()? dropTable,
  }) {
    return dropTable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? execute,
    TResult Function()? updateTables,
    TResult Function(String path)? importDb,
    TResult Function(String path)? exportDb,
    TResult Function()? subscribeDb,
    TResult Function()? unsubscribeDb,
    TResult Function()? dropTable,
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
    required TResult Function(ExecuteEffect value) execute,
    required TResult Function(UpdateTablesEffect value) updateTables,
    required TResult Function(ImportDbEffect value) importDb,
    required TResult Function(ExportDbEffect value) exportDb,
    required TResult Function(SubscribeDbEffect value) subscribeDb,
    required TResult Function(UnsubscribeDbEffect value) unsubscribeDb,
    required TResult Function(DropTableEffect value) dropTable,
  }) {
    return dropTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExecuteEffect value)? execute,
    TResult? Function(UpdateTablesEffect value)? updateTables,
    TResult? Function(ImportDbEffect value)? importDb,
    TResult? Function(ExportDbEffect value)? exportDb,
    TResult? Function(SubscribeDbEffect value)? subscribeDb,
    TResult? Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult? Function(DropTableEffect value)? dropTable,
  }) {
    return dropTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExecuteEffect value)? execute,
    TResult Function(UpdateTablesEffect value)? updateTables,
    TResult Function(ImportDbEffect value)? importDb,
    TResult Function(ExportDbEffect value)? exportDb,
    TResult Function(SubscribeDbEffect value)? subscribeDb,
    TResult Function(UnsubscribeDbEffect value)? unsubscribeDb,
    TResult Function(DropTableEffect value)? dropTable,
    required TResult orElse(),
  }) {
    if (dropTable != null) {
      return dropTable(this);
    }
    return orElse();
  }
}

abstract class DropTableEffect implements SqliteEffect {
  const factory DropTableEffect() = _$DropTableEffectImpl;
}
