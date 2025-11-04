import 'package:flutter/widgets.dart';

final class ToolMetadata {
  final IconData icon;

  /// Whether the tool is available for use.
  ///
  /// E.g., some tools may only be available in debug mode or on specific platforms.
  final bool isAvailable;

  const ToolMetadata({required this.icon, required this.isAvailable});
}
