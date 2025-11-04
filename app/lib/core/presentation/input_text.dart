import 'package:flutter/widgets.dart';

import '../../i18n/strings.g.dart';

class InputText extends StatelessWidget {
  const InputText({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Text(t.common.input);
  }
}
