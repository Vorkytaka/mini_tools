import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:macos_ui/macos_ui.dart';

import 'tools.dart';

final localeTool = Tool(
  titleBuilder: (context) => 'Locale tool',
  icon: Icons.language,
  screenBuilder: (context) => const LocaleTool(),
);

final locales = availableLocalesForDateFormatting.toList()
  ..sort()
  ..map((locale) {
    final splits = locale.split('_');
    final languageCode = splits.first;
    final countryCode = splits.length > 1 ? splits.last : null;
    return Locale(languageCode, countryCode);
  }).toList(growable: false);

class LocaleTool extends StatelessWidget {
  const LocaleTool({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      children: [
        ContentArea(
          builder: (context, controller) => ListView.builder(
            controller: controller,
            itemCount: locales.length,
            itemBuilder: (context, i) => Text(locales[i].toString()),
          ),
        ),
      ],
    );
  }
}
