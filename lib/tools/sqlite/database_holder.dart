import 'dart:async';

import 'package:sqlite3/sqlite3.dart';

import '../../common/either.dart';

abstract interface class DatabaseHolder {
  static DatabaseHolder factory() => DatabaseHolderImpl();

  Stream<Database?> get databaseStream;

  Stream<bool> get isConnectedStream;

  Database get database;

  bool get isConnected;

  void setDatabase(Database database);

  void disposeDatabase();

  Future<void> setDatabaseFromPath(String path);

  Either<SqliteException, Iterable<dynamic>> execute(String query);
}

class DatabaseHolderImpl implements DatabaseHolder {
  Database? _database;
  final _streamController = StreamController<Database?>.broadcast();

  DatabaseHolderImpl();

  @override
  Stream<Database?> get databaseStream => _streamController.stream;

  @override
  Stream<bool> get isConnectedStream =>
      _streamController.stream.map((db) => db != null);

  @override
  Database get database {
    if (_database == null) {
      setDatabase(sqlite3.openInMemory());
    }
    return _database!;
  }

  @override
  bool get isConnected => _database != null;

  @override
  Future<void> setDatabaseFromPath(String path) async {
    final fileConn = sqlite3.open(path);
    final inMemConn = sqlite3.openInMemory();
    try {
      await fileConn.backup(inMemConn, nPage: 1024).drain();
      setDatabase(inMemConn);
    } on SqliteException catch (_) {
      inMemConn.dispose();
    } finally {
      fileConn.dispose();
    }
  }

  @override
  void setDatabase(Database database) {
    if (_database != null) {
      disposeDatabase();
    }
    _database = database;
    _streamController.add(_database);
  }

  @override
  void disposeDatabase() {
    _database?.dispose();
    _database = null;
    _streamController.add(null);
  }

  @override
  Either<SqliteException, Iterable> execute(String query) {
    assert(query.isNotEmpty);

    try {
      return Either.right(database.select(query).toList(growable: false));
    } on SqliteException catch (e) {
      return Either.left(e);
    }
  }
}
