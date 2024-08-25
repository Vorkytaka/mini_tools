import 'package:flutter_test/flutter_test.dart';
import 'package:mini_tools/i18n/strings.g.dart';

void main() {
  group('i18n', () {
    test('Should compile', () {
      // The following test will fail if the i18n file is either not compiled
      // or there are compile-time errors.
      expect(AppLocale.en.build().common.yes, 'Yes');
    });
  });
}
