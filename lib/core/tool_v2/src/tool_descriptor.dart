import 'package:meta/meta.dart';

import 'tool_factory.dart';
import 'tool_localization_data.dart';
import 'tool_metadata.dart';

@immutable
final class ToolDescriptor {
  final String id;
  final ToolMetadata metadata;
  final ToolLocalizationData localizationData;
  final ToolFactory factory;

  const ToolDescriptor({
    required this.id,
    required this.metadata,
    required this.localizationData,
    required this.factory,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ToolDescriptor &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}
