import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/sql.dart';

import '../../common/code_themes.dart';
import '../../common/either.dart';
import '../../common/file_drop_widget.dart';
import '../../common/macos_code_editor.dart';
import '../../common/text_styles.dart';
import '../../i18n/strings.g.dart';
import '../tools.dart';
import 'sqlite_bloc.dart';

final sqliteTool = Tool(
  titleBuilder: (context) => Translations.of(context).sqlite.title,
  icon: Icons.table_chart,
  screenBuilder: (context) => BlocProvider(
    create: (context) => SqliteCubit()..init(),
    child: const SqliteTool(),
  ),
);

class SqliteTool extends StatefulWidget {
  const SqliteTool({super.key});

  @override
  State<SqliteTool> createState() => _SqliteToolState();
}

class _SqliteToolState extends State<SqliteTool> {
  final _queryController = CodeLineEditingController();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FileDropWidget(
      onFileDropped: (file) {
        if (file != null) {
          context.read<SqliteCubit>().importDatabase(file);
        }
      },
      child: MacosScaffold(
        toolBar: ToolBar(
          title: Text(t.sqlite.title),
          centerTitle: true,
        ),
        children: [
          ContentArea(
            builder: (context, controller) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Wrap(
                    runSpacing: 8,
                    spacing: 8,
                    children: [
                      _RunButton(
                        onTap: () {
                          final query = _queryController.text;
                          if (query.isNotEmpty) {
                            context.read<SqliteCubit>().execute(query);
                          }
                        },
                      ),
                      const _ImportDatabaseButton(),
                      const _ExportDatabaseButton(),
                      const _DropDatabaseButton(),
                    ],
                  ),
                ),
                Flexible(
                  child: MacosCodeEditor(
                    controller: _queryController,
                    style: MacosCodeEditor.defaultStyle(
                      context,
                      codeTheme: CodeHighlightTheme(
                        languages: {
                          'sql': CodeHighlightThemeMode(mode: langSql)
                        },
                        theme: CodeThemes.monokai(TextStyles.firaCode),
                      ),
                    ),
                    indicatorBuilder: MacosCodeEditor.defaultIndicatorBuilder,
                  ),
                ),
                ResizablePane(
                  builder: (context, controller) => _History(
                    controller: controller,
                    onItemEdit: _onItemEdit,
                  ),
                  minSize: 200,
                  resizableSide: ResizableSide.top,
                  startSize: 200,
                ),
              ],
            ),
          ),
          ResizablePane(
            builder: (context, controller) => _TableInfoWidget(
              controller: controller,
            ),
            minSize: 240,
            resizableSide: ResizableSide.left,
            startSize: 240,
            isResizable: false,
          ),
        ],
      ),
    );
  }

  void _onItemEdit(String query) {
    _queryController.text = query;
  }
}

class _DropDatabaseButton extends StatelessWidget {
  const _DropDatabaseButton();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return BlocBuilder<SqliteCubit, SqliteState>(
      buildWhen: (prev, curr) => prev.databaseStatus != curr.databaseStatus,
      builder: (context, state) => PushButton(
        onPressed: state.databaseStatus == SqliteDatabaseStatus.connected
            ? () => context.read<SqliteCubit>().dropTable()
            : null,
        controlSize: ControlSize.regular,
        secondary: true,
        child: Text(t.sqlite.drop),
      ),
    );
  }
}

class _TableInfoWidget extends StatelessWidget {
  final ScrollController? controller;

  const _TableInfoWidget({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return BlocBuilder<SqliteCubit, SqliteState>(
      buildWhen: (prev, curr) => prev.tablesInfo != curr.tablesInfo,
      builder: (context, state) {
        return ListView.separated(
          controller: controller,
          itemCount: state.tablesInfo.length,
          padding: const EdgeInsets.all(8),
          separatorBuilder: (context, i) => const SizedBox(height: 8),
          itemBuilder: (context, i) {
            final info = state.tablesInfo[i];
            return Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              color: theme.helpButtonTheme.color,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: theme.dividerColor),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      info.name,
                      style: theme.typography.title3.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const MacosPulldownMenuDivider(),
                    for (final column in info.columns)
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: column.name),
                            TextSpan(
                              text: ' (${column.type}) ',
                              style: theme.typography.caption2,
                            ),
                            if (column.pk)
                              const WidgetSpan(
                                child: Icon(Icons.key, size: 12),
                              ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _History extends StatelessWidget {
  final ScrollController? controller;
  final ValueChanged<String> onItemEdit;

  const _History({
    required this.onItemEdit,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SqliteCubit, SqliteState>(builder: (context, state) {
      return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        controller: controller,
        itemCount: state.history.length,
        separatorBuilder: (context, _) => const SizedBox(height: 8),
        itemBuilder: (context, i) => _HistoryItem(
          result: state.history[i],
          onEdit: onItemEdit,
        ),
      );
    });
  }
}

class _HistoryItem extends StatelessWidget {
  final QueryResult result;
  final ValueChanged<String> onEdit;

  const _HistoryItem({
    required this.result,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    final showResult = result.result.fold(
      ifLeft: (_) => true,
      ifRight: (result) => result.isNotEmpty,
    );

    return Card(
      margin: EdgeInsets.zero,
      color: theme.helpButtonTheme.color,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.dividerColor),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _RunButton(
                  onTap: () {
                    context.read<SqliteCubit>().execute(result.query);
                  },
                ),
                const SizedBox(width: 8),
                PushButton(
                  onPressed: () => onEdit(result.query),
                  controlSize: ControlSize.regular,
                  secondary: true,
                  child: const _IconTextWidget(
                    icon: Icon(Icons.edit),
                    text: Text('Edit'),
                  ),
                ),
                const Spacer(),
                Text(
                  formatDateTime(result.datetime),
                  style: theme.typography.caption2,
                ),
              ],
            ),
            const MacosPulldownMenuDivider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(result.query)),
                if(showResult) ...[
                  const SizedBox(width: 8),
                  Expanded(child: _Result(result: result.result)),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  static String formatDateTime(DateTime dateTime) {
    // Получаем компоненты даты и времени
    final year = dateTime.year;
    final month = dateTime.month;
    final day = dateTime.day;
    final hour = dateTime.hour;
    final minute = dateTime.minute;
    final second = dateTime.second;

    // Преобразуем компоненты в строку и добавляем ведущие нули там, где это необходимо
    final formattedMonth = month.toString().padLeft(2, '0');
    final formattedDay = day.toString().padLeft(2, '0');
    final formattedHour = hour.toString().padLeft(2, '0');
    final formattedMinute = minute.toString().padLeft(2, '0');
    final formattedSecond = second.toString().padLeft(2, '0');

    // Собираем строку в нужном формате
    return '$year-$formattedMonth-$formattedDay $formattedHour:$formattedMinute:$formattedSecond';
  }
}

class _Result extends StatelessWidget {
  final Either<String, Iterable<dynamic>> result;

  const _Result({
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return result.fold(
      ifLeft: (exc) => DefaultTextStyle.merge(
        style: TextStyle(color: theme.colorScheme.error),
        child: Text(exc),
      ),
      ifRight: (result) => Text('${result.length} rows affected'),
    );
  }
}

class _ExportDatabaseButton extends StatelessWidget {
  const _ExportDatabaseButton();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return BlocBuilder<SqliteCubit, SqliteState>(
      builder: (context, state) {
        return PushButton(
          onPressed: state.databaseStatus == SqliteDatabaseStatus.connected
              ? () async {
                  final cubit = context.read<SqliteCubit>();
                  final path = await FilePicker.platform.saveFile(
                    fileName: state.fileInfo?.name ?? 'database.sqlite3',
                    initialDirectory: state.fileInfo?.folder,
                  );
                  if (path != null) {
                    cubit.exportDatabase(path);
                  }
                }
              : null,
          controlSize: ControlSize.regular,
          secondary: true,
          child: _IconTextWidget(
            icon: const Icon(Icons.upgrade),
            text: Text(t.sqlite.export),
          ),
        );
      },
    );
  }
}

class _ImportDatabaseButton extends StatelessWidget {
  const _ImportDatabaseButton();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return PushButton(
      onPressed: () => onTap(context: context),
      controlSize: ControlSize.regular,
      secondary: true,
      child: _IconTextWidget(
        icon: const Icon(Icons.publish),
        text: Text(t.sqlite.import),
      ),
    );
  }

  static Future<void> onTap({required BuildContext context}) async {
    final cubit = context.read<SqliteCubit>();
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.isSinglePick && result.xFiles.isNotEmpty) {
      if (context.mounted &&
          cubit.state.databaseStatus == SqliteDatabaseStatus.connected) {
        final confirm = await confirmOverride(context: context);
        if (!confirm) {
          return;
        }
      }
      await cubit.importDatabase(result.xFiles.first);
    }
  }

  static Future<bool> confirmOverride({required BuildContext context}) {
    return showMacosAlertDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        final t = Translations.of(context);

        return MacosAlertDialog(
          appIcon: const Text(
            '🤔',
            style: TextStyle(fontSize: 40),
          ),
          title: Text(t.sqlite.override.title),
          message: Text(t.sqlite.override.message),
          primaryButton: PushButton(
            onPressed: () => Navigator.of(context).pop(true),
            controlSize: ControlSize.large,
            child: Text(t.sqlite.override.confirm),
          ),
          secondaryButton: PushButton(
            onPressed: () => Navigator.of(context).pop(),
            controlSize: ControlSize.large,
            secondary: true,
            child: Text(t.common.cancel),
          ),
        );
      },
    ).then((confirm) => confirm ?? false);
  }
}

class _IconTextWidget extends StatelessWidget {
  final Widget? icon;
  final Widget text;

  const _IconTextWidget({
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = DefaultTextStyle.of(context).style;
    final iconStyle = IconThemeData(
      color: textStyle.color,
      size: textStyle.fontSize,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (icon != null) ...[
          IconTheme.merge(
            data: iconStyle,
            child: icon!,
          ),
          const SizedBox(width: 4),
        ],
        text,
        if (icon != null) const SizedBox(width: 2),
      ],
    );
  }
}

class _RunButton extends StatelessWidget {
  final VoidCallback onTap;

  const _RunButton({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PushButton(
      onPressed: onTap,
      controlSize: ControlSize.regular,
      child: const _IconTextWidget(
        icon: Icon(Icons.play_arrow),
        text: Text('Run'),
      ),
    );
  }
}
