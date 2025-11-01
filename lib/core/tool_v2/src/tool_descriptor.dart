import 'tool_factory.dart';
import 'tool_localization_data.dart';
import 'tool_metadata.dart';

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
}
