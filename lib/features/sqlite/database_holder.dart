import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:sqlite3/sqlite3.dart';

import '../../common/either.dart';

sealed class DatabaseHolderConnection {
  const DatabaseHolderConnection._();
}

final class Disconnect implements DatabaseHolderConnection {
  const Disconnect();
}

sealed class Connected implements DatabaseHolderConnection {
  final Database database;

  const Connected({required this.database});
}

final class InMemory extends Connected {
  const InMemory({required super.database});
}

final class File extends Connected {
  final String path;

  const File({required super.database, required this.path});
}

abstract interface class NewDatabaseHolder {
  Stream<DatabaseHolderConnection> get connection;

  Stream<Database?> get database;

  void disposeDatabase();

  Future<bool> fromPath(String path);

  Either<SqliteException, Iterable<dynamic>> execute(String query);

  ResultSet rawExecute(String query);
}

final class NewDatabaseHolderImpl implements NewDatabaseHolder {
  final _subject = BehaviorSubject<DatabaseHolderConnection>.seeded(
    const Disconnect(),
  );

  @override
  Stream<DatabaseHolderConnection> get connection => _subject.stream;

  @override
  Stream<Database?> get database => _subject.stream.map(_fromConnection);

  Database? _fromConnection(DatabaseHolderConnection conn) => conn.toDatabase;

  @override
  void disposeDatabase() {
    final db = _subject.value.toDatabase;
    if (db != null) {
      db.dispose();
      _subject.add(const Disconnect());
    }
  }

  @override
  Future<bool> fromPath(String path) async {
    final fileConn = sqlite3.open(path);
    final inMemConn = sqlite3.openInMemory();
    try {
      await fileConn.backup(inMemConn, nPage: 1024).drain();
      final conn = File(database: inMemConn, path: path);
      _setDatabase(conn);
      return true;
    } on SqliteException catch (_) {
      inMemConn.dispose();
    } finally {
      fileConn.dispose();
    }
    return false;
  }

  @override
  Either<SqliteException, Iterable> execute(String query) {
    assert(query.isNotEmpty);

    try {
      final database = _getDatabase();
      return Either.right(database.select(query).toList(growable: false));
    } on SqliteException catch (e) {
      return Either.left(e);
    }
  }

  // Can throw [SqliteException]
  @override
  ResultSet rawExecute(String query) {
    final database = _getDatabase();
    return database.select(query);
  }

  void _setDatabase(DatabaseHolderConnection conn) {
    disposeDatabase();
    _subject.add(conn);
  }

  Database _getDatabase() {
    Database? database = _subject.value.toDatabase;
    if (database == null) {
      database = sqlite3.openInMemory();
      _subject.value = InMemory(database: database);
    }
    return database;
  }
}

extension on DatabaseHolderConnection {
  Database? get toDatabase {
    final conn = this;
    return switch (conn) {
      Disconnect() => null,
      InMemory() => conn.database,
      File() => conn.database,
    };
  }
}
