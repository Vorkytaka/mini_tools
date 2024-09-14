import 'package:flutter_test/flutter_test.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mini_tools/i18n/strings.g.dart';
import 'package:mini_tools/tools/number_base_converter.dart';

void main() {
  testWidgets('Inputs update each other', (tester) async {
    await tester.pumpWidget(
      TranslationProvider(
        child: const MacosApp(
          home: MacosWindow(
            child: NumberBaseConverter(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    final finds = find.byType(MacosTextField);
    finds.evaluate();

    // There is exactly 4 fields
    expect(finds, findsExactly(4));

    final firstWidget = tester.widget<MacosTextField>(finds.first);
    final otherWidgets = [
      tester.widget<MacosTextField>(finds.at(1)),
      tester.widget<MacosTextField>(finds.at(2)),
      tester.widget<MacosTextField>(finds.at(3)),
    ];

    expect(firstWidget.controller?.text, isEmpty);
    for (final other in otherWidgets) {
      expect(other.controller?.text, isEmpty);
    }

    await tester.enterText(finds.first, '10101010');
    await tester.pumpAndSettle();

    expect(firstWidget.controller?.text, '10101010');
    for (final other in otherWidgets) {
      expect(other.controller?.text, isNotEmpty);
    }

    await tester.enterText(finds.last, '');
    await tester.pumpAndSettle();

    expect(firstWidget.controller?.text, isEmpty);
    for (final other in otherWidgets) {
      expect(other.controller?.text, isEmpty);
    }
  });
}
