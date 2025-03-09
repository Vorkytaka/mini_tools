part of 'json_formatter_screen.dart';

extension on JsonOutputFormat {
  String format(BuildContext context) {
    final t = Translations.of(context);

    switch (this) {
      case JsonOutputFormat.min:
        return t.jsonFormatter.jsonFormat.min;
      case JsonOutputFormat.two:
        return t.jsonFormatter.jsonFormat.two;
      case JsonOutputFormat.four:
        return t.jsonFormatter.jsonFormat.four;
      case JsonOutputFormat.tab:
        return t.jsonFormatter.jsonFormat.tab;
    }
  }
}
