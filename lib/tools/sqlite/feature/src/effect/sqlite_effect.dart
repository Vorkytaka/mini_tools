import 'package:freezed_annotation/freezed_annotation.dart';

part 'sqlite_effect.freezed.dart';

@immutable
@freezed
sealed class SqliteEffect {
  const factory SqliteEffect.execute(String query) = ExecuteEffect;

  const factory SqliteEffect.updateTables() = UpdateTablesEffect;

  const factory SqliteEffect.importDb(String path) = ImportDbEffect;

  const factory SqliteEffect.exportDb(String path) = ExportDbEffect;

  const factory SqliteEffect.subscribeDb() = SubscribeDbEffect;

  const factory SqliteEffect.unsubscribeDb() = UnsubscribeDbEffect;

  const factory SqliteEffect.dropTable() = DropTableEffect;
}
