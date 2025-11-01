import 'package:flutter/widgets.dart';

typedef ToolLocalizationDelegate = String Function(BuildContext context);

final class ToolLocalizationData {
  final ToolLocalizationDelegate titleDelegate;

  const ToolLocalizationData({
    required this.titleDelegate,
  });
}
