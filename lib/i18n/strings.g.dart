/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 103
///
/// Built on 2024-12-20 at 21:25 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
  en(languageCode: 'en', build: Translations.build);

  const AppLocale(
      {required this.languageCode,
      this.scriptCode,
      this.countryCode,
      required this.build}); // ignore: unused_element

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;
  @override
  final TranslationBuilder<AppLocale, Translations> build;

  /// Gets current instance managed by [LocaleSettings].
  Translations get translations =>
      LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider
    extends BaseTranslationProvider<AppLocale, Translations> {
  TranslationProvider({required super.child})
      : super(settings: LocaleSettings.instance);

  static InheritedLocaleData<AppLocale, Translations> of(
          BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
  Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings
    extends BaseFlutterLocaleSettings<AppLocale, Translations> {
  LocaleSettings._() : super(utils: AppLocaleUtils.instance);

  static final instance = LocaleSettings._();

  // static aliases (checkout base methods for documentation)
  static AppLocale get currentLocale => instance.currentLocale;
  static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
  static AppLocale setLocale(AppLocale locale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale setLocaleRaw(String rawLocale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleRaw(rawLocale,
          listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale useDeviceLocale() => instance.useDeviceLocale();
  @Deprecated('Use [AppLocaleUtils.supportedLocales]')
  static List<Locale> get supportedLocales => instance.supportedLocales;
  @Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]')
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
  static void setPluralResolver(
          {String? language,
          AppLocale? locale,
          PluralResolver? cardinalResolver,
          PluralResolver? ordinalResolver}) =>
      instance.setPluralResolver(
        language: language,
        locale: locale,
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      );
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
  AppLocaleUtils._()
      : super(baseLocale: _baseLocale, locales: AppLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
  static AppLocale parseLocaleParts(
          {required String languageCode,
          String? scriptCode,
          String? countryCode}) =>
      instance.parseLocaleParts(
          languageCode: languageCode,
          scriptCode: scriptCode,
          countryCode: countryCode);
  static AppLocale findDeviceLocale() => instance.findDeviceLocale();
  static List<Locale> get supportedLocales => instance.supportedLocales;
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.en,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  // Translations
  late final _StringsCommonEn common = _StringsCommonEn._(_root);
  late final _StringsUnixTimestampEn unixTimestamp =
      _StringsUnixTimestampEn._(_root);
  late final _StringsNumberConverterEn numberConverter =
      _StringsNumberConverterEn._(_root);
  late final _StringsRegexpEn regexp = _StringsRegexpEn._(_root);
  late final _StringsJsonFormatterEn jsonFormatter =
      _StringsJsonFormatterEn._(_root);
  late final _StringsPercentageCalculatorEn percentageCalculator =
      _StringsPercentageCalculatorEn._(_root);
  late final _StringsColorEn color = _StringsColorEn._(_root);
  late final _StringsMaterialColorsEn materialColors =
      _StringsMaterialColorsEn._(_root);
  late final _StringsHashEn hash = _StringsHashEn._(_root);
  late final _StringsSqliteEn sqlite = _StringsSqliteEn._(_root);
}

// Path: common
class _StringsCommonEn {
  _StringsCommonEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get input => 'Input:';
  String get output => 'Output:';
  String get clear => 'Clear';
  String get yes => 'Yes';
  String get no => 'No';
  String get copy => 'Copy';
  String get questionMark => '?';
  String get percent => '%';
  String get fileDropTitle => 'Drop file here';
  String get cancel => 'Cancel';
  String get paste => 'Paste';
}

// Path: unixTimestamp
class _StringsUnixTimestampEn {
  _StringsUnixTimestampEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Unix timestamp';
  late final _StringsUnixTimestampInputTypeEn inputType =
      _StringsUnixTimestampInputTypeEn._(_root);
  late final _StringsUnixTimestampDatetimeFormatEn datetimeFormat =
      _StringsUnixTimestampDatetimeFormatEn._(_root);
  String get now => 'Now';
  String get local => 'Local time';
  String get utc => 'UTC time';
  String get weekday => 'Weekday';
  String get weekOfTheYear => 'Week of the year';
  String get dayOfTheYear => 'Day of the year';
  String get leapYear => 'Leap year';
  String get dateOnly => 'Date only';
  String get timeOnly => 'Time only';
}

// Path: numberConverter
class _StringsNumberConverterEn {
  _StringsNumberConverterEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Number base converter';
  String get binary => 'Base 2 (Binary):';
  String get octal => 'Base 8 (Octal):';
  String get decimal => 'Base 10 (Decimal):';
  String get hex => 'Base 16 (Hex):';
}

// Path: regexp
class _StringsRegexpEn {
  _StringsRegexpEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'RegExp tester';
  String get regexpHint => 'RegExp (e.g. [^0-9])';
  String get testStringTitle => 'Test string:';
  String matchesCount({required num n, required Object count}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        n,
        one: '${count} match',
        other: '${count} matches',
      );
  String get matchInfoTitle => 'Match information:';
  String get matchInfoNumber => '#';
  String get matchInfoValue => 'Match';
  String get matchInfoPosition => 'Position';
  String get matchInfoNothing => 'Nothing found';
}

// Path: jsonFormatter
class _StringsJsonFormatterEn {
  _StringsJsonFormatterEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'JSON Formatter';
  String get inputHint => '{"key": "value"}';
  late final _StringsJsonFormatterJsonFormatEn jsonFormat =
      _StringsJsonFormatterJsonFormatEn._(_root);
  String get jsonPathHint => 'JSONPath (e.g. \$.order.products[*].title)';
}

// Path: percentageCalculator
class _StringsPercentageCalculatorEn {
  _StringsPercentageCalculatorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Percentage Calculator';
  late final _StringsPercentageCalculatorPercentFromValueEn percentFromValue =
      _StringsPercentageCalculatorPercentFromValueEn._(_root);
  late final _StringsPercentageCalculatorPartOfTotalEn partOfTotal =
      _StringsPercentageCalculatorPartOfTotalEn._(_root);
}

// Path: color
class _StringsColorEn {
  _StringsColorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Color converter';
  String get inputPlaceholder => '#FFFFFF';
  late final _StringsColorTitlesEn titles = _StringsColorTitlesEn._(_root);
}

// Path: materialColors
class _StringsMaterialColorsEn {
  _StringsMaterialColorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Material Colors';
  late final _StringsMaterialColorsColorsEn colors =
      _StringsMaterialColorsColorsEn._(_root);
}

// Path: hash
class _StringsHashEn {
  _StringsHashEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Hash calculator';
  String get loadFile => 'Load file';
  String get dropFile => 'Drop file';
  String get textInputHint => 'Input any text here';
  String bytesCount({required Object n}) => '${n} bytes';
  late final _StringsHashHashFormatEn hashFormat =
      _StringsHashHashFormatEn._(_root);
  String hashOfFile({required Object path}) => 'Hash of file: ${path}';
}

// Path: sqlite
class _StringsSqliteEn {
  _StringsSqliteEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'SQLite Editor';
  String get run => 'Run';
  String get import => 'Import';
  String get export => 'Export';
  String get drop => 'Drop';
  String get tables => 'Tables';
  String get history => 'History';
  late final _StringsSqliteOverrideEn override =
      _StringsSqliteOverrideEn._(_root);
  String get edit => 'Edit';
  String rowAffected({required Object count}) => '${count} row affected';
}

// Path: unixTimestamp.inputType
class _StringsUnixTimestampInputTypeEn {
  _StringsUnixTimestampInputTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get sec => 'Seconds since epoch';
  String get ms => 'Milliseconds since epoch';
  String get us => 'Microseconds since epoch';
  String get iso => 'ISO 8601';
}

// Path: unixTimestamp.datetimeFormat
class _StringsUnixTimestampDatetimeFormatEn {
  _StringsUnixTimestampDatetimeFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get hint => 'Datetime format:';
  String get iso => 'ISO 8601';
  String get rfc => 'RFC 2822';
}

// Path: jsonFormatter.jsonFormat
class _StringsJsonFormatterJsonFormatEn {
  _StringsJsonFormatterJsonFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get min => 'Minify';
  String get two => '2 spaces';
  String get four => '4 spaces';
  String get tab => 'Tab';
}

// Path: percentageCalculator.percentFromValue
class _StringsPercentageCalculatorPercentFromValueEn {
  _StringsPercentageCalculatorPercentFromValueEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get whatIs => 'What is ';
  String get of => ' of ';
}

// Path: percentageCalculator.partOfTotal
class _StringsPercentageCalculatorPartOfTotalEn {
  _StringsPercentageCalculatorPartOfTotalEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get isWhat => ' is what % of ';
}

// Path: color.titles
class _StringsColorTitlesEn {
  _StringsColorTitlesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get hex => 'HEX:';
  String get hexWithAlpha => 'HEX with alpha:';
  String get rgb => 'RGB:';
  String get rgba => 'RGBA:';
  String get hsl => 'HSL:';
  String get hsb => 'HSB';
  String get hwb => 'HWB';
}

// Path: materialColors.colors
class _StringsMaterialColorsColorsEn {
  _StringsMaterialColorsColorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get red => 'Red';
  String get pink => 'Pink';
  String get purple => 'Purple';
  String get deepPurple => 'Deep Purple';
  String get indigo => 'Indigo';
  String get blue => 'Blue';
  String get lightBlue => 'Light Blue';
  String get cyan => 'Cyan';
  String get teal => 'Teal';
  String get green => 'Green';
  String get lightGreen => 'Light Green';
  String get lime => 'Lime';
  String get yellow => 'Yellow';
  String get amber => 'Amber';
  String get orange => 'Orange';
  String get deepOrange => 'Deep Orange';
  String get brown => 'Brown';
  String get grey => 'Grey';
  String get blueGrey => 'Blue Grey';
}

// Path: hash.hashFormat
class _StringsHashHashFormatEn {
  _StringsHashHashFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get hex => 'HEX';
  String get base64 => 'Base64';
}

// Path: sqlite.override
class _StringsSqliteOverrideEn {
  _StringsSqliteOverrideEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Override current database?';
  String get message =>
      'This action will override your current snapshot. It cannot be undone. Do you want to continue?';
  String get confirm => 'Override';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.input':
        return 'Input:';
      case 'common.output':
        return 'Output:';
      case 'common.clear':
        return 'Clear';
      case 'common.yes':
        return 'Yes';
      case 'common.no':
        return 'No';
      case 'common.copy':
        return 'Copy';
      case 'common.questionMark':
        return '?';
      case 'common.percent':
        return '%';
      case 'common.fileDropTitle':
        return 'Drop file here';
      case 'common.cancel':
        return 'Cancel';
      case 'common.paste':
        return 'Paste';
      case 'unixTimestamp.title':
        return 'Unix timestamp';
      case 'unixTimestamp.inputType.sec':
        return 'Seconds since epoch';
      case 'unixTimestamp.inputType.ms':
        return 'Milliseconds since epoch';
      case 'unixTimestamp.inputType.us':
        return 'Microseconds since epoch';
      case 'unixTimestamp.inputType.iso':
        return 'ISO 8601';
      case 'unixTimestamp.datetimeFormat.hint':
        return 'Datetime format:';
      case 'unixTimestamp.datetimeFormat.iso':
        return 'ISO 8601';
      case 'unixTimestamp.datetimeFormat.rfc':
        return 'RFC 2822';
      case 'unixTimestamp.now':
        return 'Now';
      case 'unixTimestamp.local':
        return 'Local time';
      case 'unixTimestamp.utc':
        return 'UTC time';
      case 'unixTimestamp.weekday':
        return 'Weekday';
      case 'unixTimestamp.weekOfTheYear':
        return 'Week of the year';
      case 'unixTimestamp.dayOfTheYear':
        return 'Day of the year';
      case 'unixTimestamp.leapYear':
        return 'Leap year';
      case 'unixTimestamp.dateOnly':
        return 'Date only';
      case 'unixTimestamp.timeOnly':
        return 'Time only';
      case 'numberConverter.title':
        return 'Number base converter';
      case 'numberConverter.binary':
        return 'Base 2 (Binary):';
      case 'numberConverter.octal':
        return 'Base 8 (Octal):';
      case 'numberConverter.decimal':
        return 'Base 10 (Decimal):';
      case 'numberConverter.hex':
        return 'Base 16 (Hex):';
      case 'regexp.title':
        return 'RegExp tester';
      case 'regexp.regexpHint':
        return 'RegExp (e.g. [^0-9])';
      case 'regexp.testStringTitle':
        return 'Test string:';
      case 'regexp.matchesCount':
        return ({required num n, required Object count}) =>
            (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
              n,
              one: '${count} match',
              other: '${count} matches',
            );
      case 'regexp.matchInfoTitle':
        return 'Match information:';
      case 'regexp.matchInfoNumber':
        return '#';
      case 'regexp.matchInfoValue':
        return 'Match';
      case 'regexp.matchInfoPosition':
        return 'Position';
      case 'regexp.matchInfoNothing':
        return 'Nothing found';
      case 'jsonFormatter.title':
        return 'JSON Formatter';
      case 'jsonFormatter.inputHint':
        return '{"key": "value"}';
      case 'jsonFormatter.jsonFormat.min':
        return 'Minify';
      case 'jsonFormatter.jsonFormat.two':
        return '2 spaces';
      case 'jsonFormatter.jsonFormat.four':
        return '4 spaces';
      case 'jsonFormatter.jsonFormat.tab':
        return 'Tab';
      case 'jsonFormatter.jsonPathHint':
        return 'JSONPath (e.g. \$.order.products[*].title)';
      case 'percentageCalculator.title':
        return 'Percentage Calculator';
      case 'percentageCalculator.percentFromValue.whatIs':
        return 'What is ';
      case 'percentageCalculator.percentFromValue.of':
        return ' of ';
      case 'percentageCalculator.partOfTotal.isWhat':
        return ' is what % of ';
      case 'color.title':
        return 'Color converter';
      case 'color.inputPlaceholder':
        return '#FFFFFF';
      case 'color.titles.hex':
        return 'HEX:';
      case 'color.titles.hexWithAlpha':
        return 'HEX with alpha:';
      case 'color.titles.rgb':
        return 'RGB:';
      case 'color.titles.rgba':
        return 'RGBA:';
      case 'color.titles.hsl':
        return 'HSL:';
      case 'color.titles.hsb':
        return 'HSB';
      case 'color.titles.hwb':
        return 'HWB';
      case 'materialColors.title':
        return 'Material Colors';
      case 'materialColors.colors.red':
        return 'Red';
      case 'materialColors.colors.pink':
        return 'Pink';
      case 'materialColors.colors.purple':
        return 'Purple';
      case 'materialColors.colors.deepPurple':
        return 'Deep Purple';
      case 'materialColors.colors.indigo':
        return 'Indigo';
      case 'materialColors.colors.blue':
        return 'Blue';
      case 'materialColors.colors.lightBlue':
        return 'Light Blue';
      case 'materialColors.colors.cyan':
        return 'Cyan';
      case 'materialColors.colors.teal':
        return 'Teal';
      case 'materialColors.colors.green':
        return 'Green';
      case 'materialColors.colors.lightGreen':
        return 'Light Green';
      case 'materialColors.colors.lime':
        return 'Lime';
      case 'materialColors.colors.yellow':
        return 'Yellow';
      case 'materialColors.colors.amber':
        return 'Amber';
      case 'materialColors.colors.orange':
        return 'Orange';
      case 'materialColors.colors.deepOrange':
        return 'Deep Orange';
      case 'materialColors.colors.brown':
        return 'Brown';
      case 'materialColors.colors.grey':
        return 'Grey';
      case 'materialColors.colors.blueGrey':
        return 'Blue Grey';
      case 'hash.title':
        return 'Hash calculator';
      case 'hash.loadFile':
        return 'Load file';
      case 'hash.dropFile':
        return 'Drop file';
      case 'hash.textInputHint':
        return 'Input any text here';
      case 'hash.bytesCount':
        return ({required Object n}) => '${n} bytes';
      case 'hash.hashFormat.hex':
        return 'HEX';
      case 'hash.hashFormat.base64':
        return 'Base64';
      case 'hash.hashOfFile':
        return ({required Object path}) => 'Hash of file: ${path}';
      case 'sqlite.title':
        return 'SQLite Editor';
      case 'sqlite.run':
        return 'Run';
      case 'sqlite.import':
        return 'Import';
      case 'sqlite.export':
        return 'Export';
      case 'sqlite.drop':
        return 'Drop';
      case 'sqlite.tables':
        return 'Tables';
      case 'sqlite.history':
        return 'History';
      case 'sqlite.override.title':
        return 'Override current database?';
      case 'sqlite.override.message':
        return 'This action will override your current snapshot. It cannot be undone. Do you want to continue?';
      case 'sqlite.override.confirm':
        return 'Override';
      case 'sqlite.edit':
        return 'Edit';
      case 'sqlite.rowAffected':
        return ({required Object count}) => '${count} row affected';
      default:
        return null;
    }
  }
}
