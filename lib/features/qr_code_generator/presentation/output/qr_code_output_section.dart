import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

import '../../../../i18n/strings.g.dart';
import 'qr_code_export_section.dart';
import 'qr_code_settings_section.dart';

enum QrCodeOutputSection { export, settings }

extension QrCodeOutputSectionUI on QrCodeOutputSection {
  String format(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      QrCodeOutputSection.export => t.qrCode.export.title,
      QrCodeOutputSection.settings => t.qrCode.settings.title,
    };
  }

  Widget get widgetPage => switch (this) {
    QrCodeOutputSection.export => const QrCodeExportSection(),
    QrCodeOutputSection.settings => const QrCodeSettingsSection(),
  };
}

class QrCodeOutputSectionWidget extends StatefulWidget {
  const QrCodeOutputSectionWidget({super.key});

  @override
  State<QrCodeOutputSectionWidget> createState() =>
      _QrCodeOutputSectionWidgetState();
}

class _QrCodeOutputSectionWidgetState extends State<QrCodeOutputSectionWidget> {
  final _controller = MacosTabController(
    length: QrCodeOutputSection.values.length,
  );
  QrCodeOutputSection _selectedPage = QrCodeOutputSection.export;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        _selectedPage = QrCodeOutputSection.values[_controller.index];
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(child: MacosPulldownMenuDivider()),
            MacosSegmentedControl(
              tabs: [
                for (final page in QrCodeOutputSection.values)
                  MacosTab(label: page.format(context)),
              ],
              controller: _controller,
            ),
            const Expanded(child: MacosPulldownMenuDivider()),
          ],
        ),
        const SizedBox(height: 8),
        Expanded(child: _selectedPage.widgetPage),
      ],
    );
  }
}
