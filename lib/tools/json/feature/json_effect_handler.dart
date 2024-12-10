part of 'json_feature.dart';

const _kIsolateThreshold = 50 * 1024;

extension on JsonOutputFormat {
  JsonEncoder get encoder {
    switch (this) {
      case JsonOutputFormat.min:
        return const JsonEncoder();
      case JsonOutputFormat.two:
        return const JsonEncoder.withIndent('  ');
      case JsonOutputFormat.four:
        return const JsonEncoder.withIndent('    ');
      case JsonOutputFormat.tab:
        return const JsonEncoder.withIndent('\t');
    }
  }
}

final class JsonEffectHandler
    extends AsyncEffectHandler<JsonEffect, JsonEvent> {
  const JsonEffectHandler();

  @override
  Future<void> handle(JsonEffect effect, MsgEmitter<JsonEvent> emit) {
    switch (effect) {
      case FormatOutputEffect():
        return _formatOutputHandle(effect, emit);
    }
  }

  static Future<void> _formatOutputHandle(
    FormatOutputEffect effect,
    MsgEmitter<JsonEvent> emit,
  ) async {
    final input = effect.input;
    final format = effect.format;
    final jsonPath = effect.jsonPath;

    final String? outputJson;
    if (input.length <= _kIsolateThreshold) {
      outputJson = _formatJson(input, format, jsonPath);
    } else {
      outputJson =
          await Isolate.run(() => _formatJson(input, format, jsonPath));
    }

    if (outputJson != null) {
      emit(OutputUpdateEvent(outputJson));
    }
  }

  static String? _formatJson(
    String input,
    JsonOutputFormat format,
    JsonPath? jsonPath,
  ) {
    try {
      dynamic json = jsonDecode(input);
      if (jsonPath != null) {
        json = jsonPath.read(json).map((e) => e.value).toList(growable: false);
      }
      final encoder = format.encoder;
      return encoder.convert(json);
    } on Exception catch (_) {
      return null;
    }
  }
}
