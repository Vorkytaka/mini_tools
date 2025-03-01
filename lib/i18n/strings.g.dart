/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 222
///
/// Built on 2025-03-01 at 10:57 UTC

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
  late final _StringsDatetimeConverterEn datetimeConverter =
      _StringsDatetimeConverterEn._(_root);
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
  late final _StringsUuidGeneratorEn uuidGenerator =
      _StringsUuidGeneratorEn._(_root);
  late final _StringsCronEn cron = _StringsCronEn._(_root);
  late final _StringsTextDiffEn textDiff = _StringsTextDiffEn._(_root);
  late final _StringsQrCodeEn qrCode = _StringsQrCodeEn._(_root);
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
  String get and => 'and';
  String get on => 'on';
  String get inWord => 'in';
  String get textSeparator => ', ';
  String get save => 'Save';
  late final _StringsCommonDayOfWeekEn dayOfWeek =
      _StringsCommonDayOfWeekEn._(_root);
  late final _StringsCommonMonthsEn months = _StringsCommonMonthsEn._(_root);
  String bytesCount({required num n, required Object bytes}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        n,
        one: '${bytes} byte',
        other: '${bytes} bytes',
      );
}

// Path: datetimeConverter
class _StringsDatetimeConverterEn {
  _StringsDatetimeConverterEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Datetime Converter';
  late final _StringsDatetimeConverterInputTypeEn inputType =
      _StringsDatetimeConverterInputTypeEn._(_root);
  late final _StringsDatetimeConverterDatetimeFormatEn datetimeFormat =
      _StringsDatetimeConverterDatetimeFormatEn._(_root);
  String get now => 'Now';
  String get local => 'Local time';
  String get utc => 'UTC time';
  String get weekday => 'Weekday';
  String get weekOfTheYear => 'Week of the year';
  String get dayOfTheYear => 'Day of the year';
  String get leapYear => 'Leap year';
  String get dateOnly => 'Date only';
  String get timeOnly => 'Time only';
  String get relative => 'Relative';
  late final _StringsDatetimeConverterRelativeFormatEn relativeFormat =
      _StringsDatetimeConverterRelativeFormatEn._(_root);
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
  String get custom => 'Select base:';
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
  String matchInfoMatch({required Object position}) => 'Match #${position}';
  String matchInfoGroup({required Object position}) => 'Group #${position}';
  String matchInfoIndexes({required Object start, required Object end}) =>
      '(${start}-${end})';
  String get matchInfoNothing => 'No matches found';
  late final _StringsRegexpSettingsEn settings =
      _StringsRegexpSettingsEn._(_root);
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

// Path: uuidGenerator
class _StringsUuidGeneratorEn {
  _StringsUuidGeneratorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'UUID Generator';
  String get hint => 'Generate IDs:';
  late final _StringsUuidGeneratorTypesEn types =
      _StringsUuidGeneratorTypesEn._(_root);
  String get namespace => 'Namespace:';
  String get name => 'Name:';
  late final _StringsUuidGeneratorNamespacesEn namespaces =
      _StringsUuidGeneratorNamespacesEn._(_root);
  String get generate => 'Generate';
  String get lowercase => 'Lowercase';
}

// Path: cron
class _StringsCronEn {
  _StringsCronEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Cron Parser';
  String get nextAt => 'Next at:';
  String get cronHint => '* * * * *';
  late final _StringsCronCronFormatEn cronFormat =
      _StringsCronCronFormatEn._(_root);
  String get minutes => 'Minutes:';
  String get hours => 'Hours:';
  String get daysOfMonth => 'Day-of-month:';
  String get months => 'Months:';
  String get daysOfWeek => 'Day-of-week:';
  String get all => '(All)';
  late final _StringsCronErrorsEn errors = _StringsCronErrorsEn._(_root);
}

// Path: textDiff
class _StringsTextDiffEn {
  _StringsTextDiffEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Text Diff';
  String get oldInput => 'Old text:';
  String get newInput => 'New text:';
}

// Path: qrCode
class _StringsQrCodeEn {
  _StringsQrCodeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'QR Code Generator';
  late final _StringsQrCodeCorrectionLevelEn correctionLevel =
      _StringsQrCodeCorrectionLevelEn._(_root);
  String get testBeforeUse => 'Always test a QR code before using it';
}

// Path: common.dayOfWeek
class _StringsCommonDayOfWeekEn {
  _StringsCommonDayOfWeekEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  List<String> get full => [
        'Sunday',
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Sunday',
      ];
}

// Path: common.months
class _StringsCommonMonthsEn {
  _StringsCommonMonthsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  List<String> get full => [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
      ];
}

// Path: datetimeConverter.inputType
class _StringsDatetimeConverterInputTypeEn {
  _StringsDatetimeConverterInputTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get sec => 'Seconds since epoch';
  String get ms => 'Milliseconds since epoch';
  String get us => 'Microseconds since epoch';
  String get iso => 'ISO 8601';
}

// Path: datetimeConverter.datetimeFormat
class _StringsDatetimeConverterDatetimeFormatEn {
  _StringsDatetimeConverterDatetimeFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get hint => 'Datetime format:';
  String get iso => 'ISO 8601';
  String get rfc => 'RFC 2822';
}

// Path: datetimeConverter.relativeFormat
class _StringsDatetimeConverterRelativeFormatEn {
  _StringsDatetimeConverterRelativeFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get rightNow => 'Right now';
  String days({required Object days}) => '${days}d';
  String hours({required Object hours}) => '${hours}h';
  String minutes({required Object minutes}) => '${minutes}m';
  String seconds({required Object seconds}) => '${seconds}s';
  String positive({required Object str}) => '${str} ago';
  String negative({required Object str}) => 'In ${str}';
}

// Path: regexp.settings
class _StringsRegexpSettingsEn {
  _StringsRegexpSettingsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get global => 'Global';
  String get globalDesc => 'Search for all matches';
  String get multiline => 'Multiline';
  String get multilineDesc => '^ and \$ match the start/end of each line';
  String get caseSensitive => 'Case sensitive';
  String get caseSensitiveDesc => 'Case sensitive search';
  String get unicode => 'Unicode';
  String get unicodeDesc => 'Enable all Unicode features';
  String get dotAll => 'Dot all';
  String get dotAllDesk =>
      'Dot matches all characters,\nincluding line terminators';
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

// Path: uuidGenerator.types
class _StringsUuidGeneratorTypesEn {
  _StringsUuidGeneratorTypesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get uuidV1 => 'UUID v1';
  String get uuidV4 => 'UUID v4';
  String get uuidV5 => 'UUID v5';
}

// Path: uuidGenerator.namespaces
class _StringsUuidGeneratorNamespacesEn {
  _StringsUuidGeneratorNamespacesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get dns => 'DNS';
  String get url => 'URL';
  String get oid => 'OID';
  String get x500 => 'x500';
  String get nil => 'NIL';
  String get max => 'MAX';
}

// Path: cron.cronFormat
class _StringsCronCronFormatEn {
  _StringsCronCronFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String atWhatTime({required Object str}) => '“At ${str}“';
  String get atBegin => '“At ';
  String get atEnd => '“';
  late final _StringsCronCronFormatMinutesEn minutes =
      _StringsCronCronFormatMinutesEn._(_root);
  late final _StringsCronCronFormatHoursEn hours =
      _StringsCronCronFormatHoursEn._(_root);
  late final _StringsCronCronFormatDaysEn days =
      _StringsCronCronFormatDaysEn._(_root);
  late final _StringsCronCronFormatMonthsEn months =
      _StringsCronCronFormatMonthsEn._(_root);
  late final _StringsCronCronFormatDaysOfWeekEn daysOfWeek =
      _StringsCronCronFormatDaysOfWeekEn._(_root);
  String step({required Object from, required Object to}) =>
      'between ${from} to ${to}';
}

// Path: cron.errors
class _StringsCronErrorsEn {
  _StringsCronErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get empty => 'Empty cron part';
  String get custom => 'Something goes wrong';
  String invalidValue(
          {required Object from, required Object to, required Object value}) =>
      'Value must be ${from} to ${to}, but got ${value}';
  String get rangeLength => 'Range must be in format N-M';
  String range({required Object from, required Object to}) =>
      '${from} must be less than ${to}';
  String get stepLength => 'Step must be in format N-M/X, N/X or */X';
  String invalidStep({required Object to, required Object value}) =>
      'Step must be 1 to ${to}, but got ${value}';
}

// Path: qrCode.correctionLevel
class _StringsQrCodeCorrectionLevelEn {
  _StringsQrCodeCorrectionLevelEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Error Correction';
  String get l => 'L (7%)';
  String get m => 'M (15%)';
  String get q => 'Q (25%)';
  String get h => 'H (30%)';
}

// Path: cron.cronFormat.minutes
class _StringsCronCronFormatMinutesEn {
  _StringsCronCronFormatMinutesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get any => 'every minute';
  String single({required Object minute}) => 'minute ${minute}';
  String range({required Object from, required Object to}) =>
      'every minute from ${from} to ${to}';
  String step({required num n, required Object step}) =>
      (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
        n,
        one: 'every minute',
        two: 'every ${step}nd minutes',
        few: 'every ${step}rd minutes',
        other: 'every ${step}th minutes',
      );
}

// Path: cron.cronFormat.hours
class _StringsCronCronFormatHoursEn {
  _StringsCronCronFormatHoursEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String single({required Object hour}) => 'hour ${hour}';
  String range({required Object from, required Object to}) =>
      'every hour from ${from} to ${to}';
  String step({required num n, required Object step}) =>
      (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
        n,
        one: 'every hour',
        two: 'every ${step}nd hours',
        few: 'every ${step}rd hours',
        other: 'every ${step}th hours',
      );
}

// Path: cron.cronFormat.days
class _StringsCronCronFormatDaysEn {
  _StringsCronCronFormatDaysEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String single({required Object day}) => 'day-of-month ${day}';
  String range({required Object from, required Object to}) =>
      'every day-of-month from ${from} to ${to}';
  String step({required num n, required Object step}) =>
      (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
        n,
        one: 'every day-of-month',
        two: 'every ${step}nd day-of-month',
        few: 'every ${step}rd day-of-month',
        other: 'every ${step}th day-of-month',
      );
}

// Path: cron.cronFormat.months
class _StringsCronCronFormatMonthsEn {
  _StringsCronCronFormatMonthsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String range({required Object from, required Object to}) =>
      'from ${from} to ${to}';
  String step({required num n, required Object step}) =>
      (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
        n,
        one: 'every month',
        two: 'every ${step}nd month',
        few: 'every ${step}rd month',
        other: 'every ${step}th month',
      );
}

// Path: cron.cronFormat.daysOfWeek
class _StringsCronCronFormatDaysOfWeekEn {
  _StringsCronCronFormatDaysOfWeekEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String range({required Object from, required Object to}) =>
      'every day-of-week from ${from} to ${to}';
  String step({required num n, required Object step}) =>
      (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
        n,
        one: 'every day-of-week',
        two: 'every ${step}nd day-of-week',
        few: 'every ${step}rd day-of-week',
        other: 'every ${step}th day-of-week',
      );
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
      case 'common.and':
        return 'and';
      case 'common.on':
        return 'on';
      case 'common.inWord':
        return 'in';
      case 'common.textSeparator':
        return ', ';
      case 'common.save':
        return 'Save';
      case 'common.dayOfWeek.full.0':
        return 'Sunday';
      case 'common.dayOfWeek.full.1':
        return 'Monday';
      case 'common.dayOfWeek.full.2':
        return 'Tuesday';
      case 'common.dayOfWeek.full.3':
        return 'Wednesday';
      case 'common.dayOfWeek.full.4':
        return 'Thursday';
      case 'common.dayOfWeek.full.5':
        return 'Friday';
      case 'common.dayOfWeek.full.6':
        return 'Saturday';
      case 'common.dayOfWeek.full.7':
        return 'Sunday';
      case 'common.months.full.0':
        return 'January';
      case 'common.months.full.1':
        return 'February';
      case 'common.months.full.2':
        return 'March';
      case 'common.months.full.3':
        return 'April';
      case 'common.months.full.4':
        return 'May';
      case 'common.months.full.5':
        return 'June';
      case 'common.months.full.6':
        return 'July';
      case 'common.months.full.7':
        return 'August';
      case 'common.months.full.8':
        return 'September';
      case 'common.months.full.9':
        return 'October';
      case 'common.months.full.10':
        return 'November';
      case 'common.months.full.11':
        return 'December';
      case 'common.bytesCount':
        return ({required num n, required Object bytes}) =>
            (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
              n,
              one: '${bytes} byte',
              other: '${bytes} bytes',
            );
      case 'datetimeConverter.title':
        return 'Datetime Converter';
      case 'datetimeConverter.inputType.sec':
        return 'Seconds since epoch';
      case 'datetimeConverter.inputType.ms':
        return 'Milliseconds since epoch';
      case 'datetimeConverter.inputType.us':
        return 'Microseconds since epoch';
      case 'datetimeConverter.inputType.iso':
        return 'ISO 8601';
      case 'datetimeConverter.datetimeFormat.hint':
        return 'Datetime format:';
      case 'datetimeConverter.datetimeFormat.iso':
        return 'ISO 8601';
      case 'datetimeConverter.datetimeFormat.rfc':
        return 'RFC 2822';
      case 'datetimeConverter.now':
        return 'Now';
      case 'datetimeConverter.local':
        return 'Local time';
      case 'datetimeConverter.utc':
        return 'UTC time';
      case 'datetimeConverter.weekday':
        return 'Weekday';
      case 'datetimeConverter.weekOfTheYear':
        return 'Week of the year';
      case 'datetimeConverter.dayOfTheYear':
        return 'Day of the year';
      case 'datetimeConverter.leapYear':
        return 'Leap year';
      case 'datetimeConverter.dateOnly':
        return 'Date only';
      case 'datetimeConverter.timeOnly':
        return 'Time only';
      case 'datetimeConverter.relative':
        return 'Relative';
      case 'datetimeConverter.relativeFormat.rightNow':
        return 'Right now';
      case 'datetimeConverter.relativeFormat.days':
        return ({required Object days}) => '${days}d';
      case 'datetimeConverter.relativeFormat.hours':
        return ({required Object hours}) => '${hours}h';
      case 'datetimeConverter.relativeFormat.minutes':
        return ({required Object minutes}) => '${minutes}m';
      case 'datetimeConverter.relativeFormat.seconds':
        return ({required Object seconds}) => '${seconds}s';
      case 'datetimeConverter.relativeFormat.positive':
        return ({required Object str}) => '${str} ago';
      case 'datetimeConverter.relativeFormat.negative':
        return ({required Object str}) => 'In ${str}';
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
      case 'numberConverter.custom':
        return 'Select base:';
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
      case 'regexp.matchInfoMatch':
        return ({required Object position}) => 'Match #${position}';
      case 'regexp.matchInfoGroup':
        return ({required Object position}) => 'Group #${position}';
      case 'regexp.matchInfoIndexes':
        return ({required Object start, required Object end}) =>
            '(${start}-${end})';
      case 'regexp.matchInfoNothing':
        return 'No matches found';
      case 'regexp.settings.global':
        return 'Global';
      case 'regexp.settings.globalDesc':
        return 'Search for all matches';
      case 'regexp.settings.multiline':
        return 'Multiline';
      case 'regexp.settings.multilineDesc':
        return '^ and \$ match the start/end of each line';
      case 'regexp.settings.caseSensitive':
        return 'Case sensitive';
      case 'regexp.settings.caseSensitiveDesc':
        return 'Case sensitive search';
      case 'regexp.settings.unicode':
        return 'Unicode';
      case 'regexp.settings.unicodeDesc':
        return 'Enable all Unicode features';
      case 'regexp.settings.dotAll':
        return 'Dot all';
      case 'regexp.settings.dotAllDesk':
        return 'Dot matches all characters,\nincluding line terminators';
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
      case 'uuidGenerator.title':
        return 'UUID Generator';
      case 'uuidGenerator.hint':
        return 'Generate IDs:';
      case 'uuidGenerator.types.uuidV1':
        return 'UUID v1';
      case 'uuidGenerator.types.uuidV4':
        return 'UUID v4';
      case 'uuidGenerator.types.uuidV5':
        return 'UUID v5';
      case 'uuidGenerator.namespace':
        return 'Namespace:';
      case 'uuidGenerator.name':
        return 'Name:';
      case 'uuidGenerator.namespaces.dns':
        return 'DNS';
      case 'uuidGenerator.namespaces.url':
        return 'URL';
      case 'uuidGenerator.namespaces.oid':
        return 'OID';
      case 'uuidGenerator.namespaces.x500':
        return 'x500';
      case 'uuidGenerator.namespaces.nil':
        return 'NIL';
      case 'uuidGenerator.namespaces.max':
        return 'MAX';
      case 'uuidGenerator.generate':
        return 'Generate';
      case 'uuidGenerator.lowercase':
        return 'Lowercase';
      case 'cron.title':
        return 'Cron Parser';
      case 'cron.nextAt':
        return 'Next at:';
      case 'cron.cronHint':
        return '* * * * *';
      case 'cron.cronFormat.atWhatTime':
        return ({required Object str}) => '“At ${str}“';
      case 'cron.cronFormat.atBegin':
        return '“At ';
      case 'cron.cronFormat.atEnd':
        return '“';
      case 'cron.cronFormat.minutes.any':
        return 'every minute';
      case 'cron.cronFormat.minutes.single':
        return ({required Object minute}) => 'minute ${minute}';
      case 'cron.cronFormat.minutes.range':
        return ({required Object from, required Object to}) =>
            'every minute from ${from} to ${to}';
      case 'cron.cronFormat.minutes.step':
        return ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every minute',
              two: 'every ${step}nd minutes',
              few: 'every ${step}rd minutes',
              other: 'every ${step}th minutes',
            );
      case 'cron.cronFormat.hours.single':
        return ({required Object hour}) => 'hour ${hour}';
      case 'cron.cronFormat.hours.range':
        return ({required Object from, required Object to}) =>
            'every hour from ${from} to ${to}';
      case 'cron.cronFormat.hours.step':
        return ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every hour',
              two: 'every ${step}nd hours',
              few: 'every ${step}rd hours',
              other: 'every ${step}th hours',
            );
      case 'cron.cronFormat.days.single':
        return ({required Object day}) => 'day-of-month ${day}';
      case 'cron.cronFormat.days.range':
        return ({required Object from, required Object to}) =>
            'every day-of-month from ${from} to ${to}';
      case 'cron.cronFormat.days.step':
        return ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every day-of-month',
              two: 'every ${step}nd day-of-month',
              few: 'every ${step}rd day-of-month',
              other: 'every ${step}th day-of-month',
            );
      case 'cron.cronFormat.months.range':
        return ({required Object from, required Object to}) =>
            'from ${from} to ${to}';
      case 'cron.cronFormat.months.step':
        return ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every month',
              two: 'every ${step}nd month',
              few: 'every ${step}rd month',
              other: 'every ${step}th month',
            );
      case 'cron.cronFormat.daysOfWeek.range':
        return ({required Object from, required Object to}) =>
            'every day-of-week from ${from} to ${to}';
      case 'cron.cronFormat.daysOfWeek.step':
        return ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every day-of-week',
              two: 'every ${step}nd day-of-week',
              few: 'every ${step}rd day-of-week',
              other: 'every ${step}th day-of-week',
            );
      case 'cron.cronFormat.step':
        return ({required Object from, required Object to}) =>
            'between ${from} to ${to}';
      case 'cron.minutes':
        return 'Minutes:';
      case 'cron.hours':
        return 'Hours:';
      case 'cron.daysOfMonth':
        return 'Day-of-month:';
      case 'cron.months':
        return 'Months:';
      case 'cron.daysOfWeek':
        return 'Day-of-week:';
      case 'cron.all':
        return '(All)';
      case 'cron.errors.empty':
        return 'Empty cron part';
      case 'cron.errors.custom':
        return 'Something goes wrong';
      case 'cron.errors.invalidValue':
        return (
                {required Object from,
                required Object to,
                required Object value}) =>
            'Value must be ${from} to ${to}, but got ${value}';
      case 'cron.errors.rangeLength':
        return 'Range must be in format N-M';
      case 'cron.errors.range':
        return ({required Object from, required Object to}) =>
            '${from} must be less than ${to}';
      case 'cron.errors.stepLength':
        return 'Step must be in format N-M/X, N/X or */X';
      case 'cron.errors.invalidStep':
        return ({required Object to, required Object value}) =>
            'Step must be 1 to ${to}, but got ${value}';
      case 'textDiff.title':
        return 'Text Diff';
      case 'textDiff.oldInput':
        return 'Old text:';
      case 'textDiff.newInput':
        return 'New text:';
      case 'qrCode.title':
        return 'QR Code Generator';
      case 'qrCode.correctionLevel.title':
        return 'Error Correction';
      case 'qrCode.correctionLevel.l':
        return 'L (7%)';
      case 'qrCode.correctionLevel.m':
        return 'M (15%)';
      case 'qrCode.correctionLevel.q':
        return 'Q (25%)';
      case 'qrCode.correctionLevel.h':
        return 'H (30%)';
      case 'qrCode.testBeforeUse':
        return 'Always test a QR code before using it';
      default:
        return null;
    }
  }
}
