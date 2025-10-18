///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta =
           meta ??
           TranslationMetadata(
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

  Translations $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => Translations(meta: meta ?? this.$meta);

  // Translations
  late final TranslationsCommonEn common = TranslationsCommonEn._(_root);
  late final TranslationsDatetimeConverterEn datetimeConverter =
      TranslationsDatetimeConverterEn._(_root);
  late final TranslationsNumberConverterEn numberConverter =
      TranslationsNumberConverterEn._(_root);
  late final TranslationsRegexpEn regexp = TranslationsRegexpEn._(_root);
  late final TranslationsJsonFormatterEn jsonFormatter =
      TranslationsJsonFormatterEn._(_root);
  late final TranslationsPercentageCalculatorEn percentageCalculator =
      TranslationsPercentageCalculatorEn._(_root);
  late final TranslationsColorEn color = TranslationsColorEn._(_root);
  late final TranslationsMaterialColorsEn materialColors =
      TranslationsMaterialColorsEn._(_root);
  late final TranslationsHashEn hash = TranslationsHashEn._(_root);
  late final TranslationsSqliteEn sqlite = TranslationsSqliteEn._(_root);
  late final TranslationsUuidGeneratorEn uuidGenerator =
      TranslationsUuidGeneratorEn._(_root);
  late final TranslationsCronEn cron = TranslationsCronEn._(_root);
  late final TranslationsTextDiffEn textDiff = TranslationsTextDiffEn._(_root);
  late final TranslationsQrCodeEn qrCode = TranslationsQrCodeEn._(_root);
}

// Path: common
class TranslationsCommonEn {
  TranslationsCommonEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Input:'
  String get input => 'Input:';

  /// en: 'Output:'
  String get output => 'Output:';

  /// en: 'Clear'
  String get clear => 'Clear';

  /// en: 'Yes'
  String get yes => 'Yes';

  /// en: 'No'
  String get no => 'No';

  /// en: 'Copy'
  String get copy => 'Copy';

  /// en: 'Copied'
  String get copied => 'Copied';

  /// en: '?'
  String get questionMark => '?';

  /// en: '%'
  String get percent => '%';

  /// en: 'Drop file here'
  String get fileDropTitle => 'Drop file here';

  /// en: 'Cancel'
  String get cancel => 'Cancel';

  /// en: 'Confirm'
  String get confirm => 'Confirm';

  /// en: 'Paste'
  String get paste => 'Paste';

  /// en: 'and'
  String get and => 'and';

  /// en: 'on'
  String get on => 'on';

  /// en: 'in'
  String get inWord => 'in';

  /// en: ', '
  String get textSeparator => ', ';

  /// en: 'Save'
  String get save => 'Save';

  late final TranslationsCommonDayOfWeekEn dayOfWeek =
      TranslationsCommonDayOfWeekEn._(_root);
  late final TranslationsCommonMonthsEn months = TranslationsCommonMonthsEn._(
    _root,
  );

  /// en: '(one) {$bytes byte} (other) {$bytes bytes}'
  String bytesCount({required num n, required Object bytes}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        n,
        one: '${bytes} byte',
        other: '${bytes} bytes',
      );
}

// Path: datetimeConverter
class TranslationsDatetimeConverterEn {
  TranslationsDatetimeConverterEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Datetime Converter'
  String get title => 'Datetime Converter';

  late final TranslationsDatetimeConverterInputTypeEn inputType =
      TranslationsDatetimeConverterInputTypeEn._(_root);
  late final TranslationsDatetimeConverterDatetimeFormatEn datetimeFormat =
      TranslationsDatetimeConverterDatetimeFormatEn._(_root);

  /// en: 'Now'
  String get now => 'Now';

  /// en: 'Local time'
  String get local => 'Local time';

  /// en: 'UTC time'
  String get utc => 'UTC time';

  /// en: 'Weekday'
  String get weekday => 'Weekday';

  /// en: 'Week of the year'
  String get weekOfTheYear => 'Week of the year';

  /// en: 'Day of the year'
  String get dayOfTheYear => 'Day of the year';

  /// en: 'Leap year'
  String get leapYear => 'Leap year';

  /// en: 'Date only'
  String get dateOnly => 'Date only';

  /// en: 'Time only'
  String get timeOnly => 'Time only';

  /// en: 'Relative'
  String get relative => 'Relative';

  late final TranslationsDatetimeConverterRelativeFormatEn relativeFormat =
      TranslationsDatetimeConverterRelativeFormatEn._(_root);
}

// Path: numberConverter
class TranslationsNumberConverterEn {
  TranslationsNumberConverterEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Number base converter'
  String get title => 'Number base converter';

  /// en: 'Base 2 (Binary):'
  String get binary => 'Base 2 (Binary):';

  /// en: 'Base 8 (Octal):'
  String get octal => 'Base 8 (Octal):';

  /// en: 'Base 10 (Decimal):'
  String get decimal => 'Base 10 (Decimal):';

  /// en: 'Base 16 (Hex):'
  String get hex => 'Base 16 (Hex):';

  /// en: 'Select base:'
  String get custom => 'Select base:';
}

// Path: regexp
class TranslationsRegexpEn {
  TranslationsRegexpEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'RegExp tester'
  String get title => 'RegExp tester';

  /// en: 'RegExp (e.g. [^0-9])'
  String get regexpHint => 'RegExp (e.g. [^0-9])';

  /// en: 'Test string:'
  String get testStringTitle => 'Test string:';

  /// en: '(one) {$count match} (other) {$count matches}'
  String matchesCount({required num n, required Object count}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        n,
        one: '${count} match',
        other: '${count} matches',
      );

  /// en: 'Match information:'
  String get matchInfoTitle => 'Match information:';

  /// en: 'Match #$position'
  String matchInfoMatch({required Object position}) => 'Match #${position}';

  /// en: 'Group #$position'
  String matchInfoGroup({required Object position}) => 'Group #${position}';

  /// en: '($start-$end)'
  String matchInfoIndexes({required Object start, required Object end}) =>
      '(${start}-${end})';

  /// en: 'No matches found'
  String get matchInfoNothing => 'No matches found';

  late final TranslationsRegexpSettingsEn settings =
      TranslationsRegexpSettingsEn._(_root);
}

// Path: jsonFormatter
class TranslationsJsonFormatterEn {
  TranslationsJsonFormatterEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'JSON Formatter'
  String get title => 'JSON Formatter';

  /// en: '{"key": "value"}'
  String get inputHint => '{"key": "value"}';

  late final TranslationsJsonFormatterJsonFormatEn jsonFormat =
      TranslationsJsonFormatterJsonFormatEn._(_root);

  /// en: 'JSONPath (e.g. \$.order.products[*].title)'
  String get jsonPathHint => 'JSONPath (e.g. \$.order.products[*].title)';
}

// Path: percentageCalculator
class TranslationsPercentageCalculatorEn {
  TranslationsPercentageCalculatorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Percentage Calculator'
  String get title => 'Percentage Calculator';

  late final TranslationsPercentageCalculatorPercentFromValueEn
  percentFromValue = TranslationsPercentageCalculatorPercentFromValueEn._(
    _root,
  );
  late final TranslationsPercentageCalculatorPartOfTotalEn partOfTotal =
      TranslationsPercentageCalculatorPartOfTotalEn._(_root);
}

// Path: color
class TranslationsColorEn {
  TranslationsColorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Color converter'
  String get title => 'Color converter';

  /// en: '#FFFFFF'
  String get inputPlaceholder => '#FFFFFF';

  late final TranslationsColorTitlesEn titles = TranslationsColorTitlesEn._(
    _root,
  );
}

// Path: materialColors
class TranslationsMaterialColorsEn {
  TranslationsMaterialColorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Material Colors'
  String get title => 'Material Colors';

  late final TranslationsMaterialColorsColorsEn colors =
      TranslationsMaterialColorsColorsEn._(_root);
}

// Path: hash
class TranslationsHashEn {
  TranslationsHashEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Hash calculator'
  String get title => 'Hash calculator';

  /// en: 'Load file'
  String get loadFile => 'Load file';

  /// en: 'Drop file'
  String get dropFile => 'Drop file';

  /// en: 'Input any text here'
  String get textInputHint => 'Input any text here';

  late final TranslationsHashHashFormatEn hashFormat =
      TranslationsHashHashFormatEn._(_root);

  /// en: 'Hash of file: $path'
  String hashOfFile({required Object path}) => 'Hash of file: ${path}';
}

// Path: sqlite
class TranslationsSqliteEn {
  TranslationsSqliteEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'SQLite Editor'
  String get title => 'SQLite Editor';

  /// en: 'Run'
  String get run => 'Run';

  /// en: 'Import'
  String get import => 'Import';

  /// en: 'Export'
  String get export => 'Export';

  /// en: 'Drop'
  String get drop => 'Drop';

  /// en: 'Tables'
  String get tables => 'Tables';

  /// en: 'History'
  String get history => 'History';

  late final TranslationsSqliteKOverrideEn kOverride =
      TranslationsSqliteKOverrideEn._(_root);

  /// en: 'Edit'
  String get edit => 'Edit';

  /// en: '$count row affected'
  String rowAffected({required Object count}) => '${count} row affected';
}

// Path: uuidGenerator
class TranslationsUuidGeneratorEn {
  TranslationsUuidGeneratorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'UUID Generator'
  String get title => 'UUID Generator';

  /// en: 'Generate IDs:'
  String get hint => 'Generate IDs:';

  late final TranslationsUuidGeneratorTypesEn types =
      TranslationsUuidGeneratorTypesEn._(_root);

  /// en: 'Namespace:'
  String get namespace => 'Namespace:';

  /// en: 'Name:'
  String get name => 'Name:';

  late final TranslationsUuidGeneratorNamespacesEn namespaces =
      TranslationsUuidGeneratorNamespacesEn._(_root);

  /// en: 'Generate'
  String get generate => 'Generate';

  /// en: 'Lowercase'
  String get lowercase => 'Lowercase';
}

// Path: cron
class TranslationsCronEn {
  TranslationsCronEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Cron Parser'
  String get title => 'Cron Parser';

  /// en: 'Next at:'
  String get nextAt => 'Next at:';

  /// en: '* * * * *'
  String get cronHint => '* * * * *';

  late final TranslationsCronCronFormatEn cronFormat =
      TranslationsCronCronFormatEn._(_root);

  /// en: 'Minutes:'
  String get minutes => 'Minutes:';

  /// en: 'Hours:'
  String get hours => 'Hours:';

  /// en: 'Day-of-month:'
  String get daysOfMonth => 'Day-of-month:';

  /// en: 'Months:'
  String get months => 'Months:';

  /// en: 'Day-of-week:'
  String get daysOfWeek => 'Day-of-week:';

  /// en: '(All)'
  String get all => '(All)';

  late final TranslationsCronErrorsEn errors = TranslationsCronErrorsEn._(
    _root,
  );
}

// Path: textDiff
class TranslationsTextDiffEn {
  TranslationsTextDiffEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Text Diff'
  String get title => 'Text Diff';

  /// en: 'Old text:'
  String get oldInput => 'Old text:';

  /// en: 'New text:'
  String get newInput => 'New text:';
}

// Path: qrCode
class TranslationsQrCodeEn {
  TranslationsQrCodeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'QR Code Generator'
  String get title => 'QR Code Generator';

  /// en: 'Always test a QR code before using it'
  String get testBeforeUse => 'Always test a QR code before using it';

  /// en: 'Text too long for QR code. Max is $max bytes.'
  String errorTooManyBytes({required Object max}) =>
      'Text too long for QR code. Max is ${max} bytes.';

  late final TranslationsQrCodeExportEn export = TranslationsQrCodeExportEn._(
    _root,
  );
  late final TranslationsQrCodeSettingsEn settings =
      TranslationsQrCodeSettingsEn._(_root);
}

// Path: common.dayOfWeek
class TranslationsCommonDayOfWeekEn {
  TranslationsCommonDayOfWeekEn._(this._root);

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
class TranslationsCommonMonthsEn {
  TranslationsCommonMonthsEn._(this._root);

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
class TranslationsDatetimeConverterInputTypeEn {
  TranslationsDatetimeConverterInputTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Seconds since epoch'
  String get sec => 'Seconds since epoch';

  /// en: 'Milliseconds since epoch'
  String get ms => 'Milliseconds since epoch';

  /// en: 'Microseconds since epoch'
  String get us => 'Microseconds since epoch';

  /// en: 'ISO 8601'
  String get iso => 'ISO 8601';
}

// Path: datetimeConverter.datetimeFormat
class TranslationsDatetimeConverterDatetimeFormatEn {
  TranslationsDatetimeConverterDatetimeFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Datetime format:'
  String get hint => 'Datetime format:';

  /// en: 'ISO 8601'
  String get iso => 'ISO 8601';

  /// en: 'RFC 2822'
  String get rfc => 'RFC 2822';
}

// Path: datetimeConverter.relativeFormat
class TranslationsDatetimeConverterRelativeFormatEn {
  TranslationsDatetimeConverterRelativeFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Right now'
  String get rightNow => 'Right now';

  /// en: '${days}d'
  String days({required Object days}) => '${days}d';

  /// en: '${hours}h'
  String hours({required Object hours}) => '${hours}h';

  /// en: '${minutes}m'
  String minutes({required Object minutes}) => '${minutes}m';

  /// en: '${seconds}s'
  String seconds({required Object seconds}) => '${seconds}s';

  /// en: '$str ago'
  String positive({required Object str}) => '${str} ago';

  /// en: 'In $str'
  String negative({required Object str}) => 'In ${str}';
}

// Path: regexp.settings
class TranslationsRegexpSettingsEn {
  TranslationsRegexpSettingsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Global'
  String get global => 'Global';

  /// en: 'Search for all matches'
  String get globalDesc => 'Search for all matches';

  /// en: 'Multiline'
  String get multiline => 'Multiline';

  /// en: '^ and $ match the start/end of each line'
  String get multilineDesc => '^ and \$ match the start/end of each line';

  /// en: 'Case sensitive'
  String get caseSensitive => 'Case sensitive';

  /// en: 'Case sensitive search'
  String get caseSensitiveDesc => 'Case sensitive search';

  /// en: 'Unicode'
  String get unicode => 'Unicode';

  /// en: 'Enable all Unicode features'
  String get unicodeDesc => 'Enable all Unicode features';

  /// en: 'Dot all'
  String get dotAll => 'Dot all';

  /// en: 'Dot matches all characters, including line terminators'
  String get dotAllDesk =>
      'Dot matches all characters,\nincluding line terminators';
}

// Path: jsonFormatter.jsonFormat
class TranslationsJsonFormatterJsonFormatEn {
  TranslationsJsonFormatterJsonFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Minify'
  String get min => 'Minify';

  /// en: '2 spaces'
  String get two => '2 spaces';

  /// en: '4 spaces'
  String get four => '4 spaces';

  /// en: 'Tab'
  String get tab => 'Tab';
}

// Path: percentageCalculator.percentFromValue
class TranslationsPercentageCalculatorPercentFromValueEn {
  TranslationsPercentageCalculatorPercentFromValueEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'What is '
  String get whatIs => 'What is ';

  /// en: ' of '
  String get of => ' of ';
}

// Path: percentageCalculator.partOfTotal
class TranslationsPercentageCalculatorPartOfTotalEn {
  TranslationsPercentageCalculatorPartOfTotalEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: ' is what % of '
  String get isWhat => ' is what % of ';
}

// Path: color.titles
class TranslationsColorTitlesEn {
  TranslationsColorTitlesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'HEX:'
  String get hex => 'HEX:';

  /// en: 'HEX with alpha:'
  String get hexWithAlpha => 'HEX with alpha:';

  /// en: 'RGB:'
  String get rgb => 'RGB:';

  /// en: 'RGBA:'
  String get rgba => 'RGBA:';

  /// en: 'HSL:'
  String get hsl => 'HSL:';

  /// en: 'HSB'
  String get hsb => 'HSB';

  /// en: 'HWB'
  String get hwb => 'HWB';
}

// Path: materialColors.colors
class TranslationsMaterialColorsColorsEn {
  TranslationsMaterialColorsColorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Red'
  String get red => 'Red';

  /// en: 'Pink'
  String get pink => 'Pink';

  /// en: 'Purple'
  String get purple => 'Purple';

  /// en: 'Deep Purple'
  String get deepPurple => 'Deep Purple';

  /// en: 'Indigo'
  String get indigo => 'Indigo';

  /// en: 'Blue'
  String get blue => 'Blue';

  /// en: 'Light Blue'
  String get lightBlue => 'Light Blue';

  /// en: 'Cyan'
  String get cyan => 'Cyan';

  /// en: 'Teal'
  String get teal => 'Teal';

  /// en: 'Green'
  String get green => 'Green';

  /// en: 'Light Green'
  String get lightGreen => 'Light Green';

  /// en: 'Lime'
  String get lime => 'Lime';

  /// en: 'Yellow'
  String get yellow => 'Yellow';

  /// en: 'Amber'
  String get amber => 'Amber';

  /// en: 'Orange'
  String get orange => 'Orange';

  /// en: 'Deep Orange'
  String get deepOrange => 'Deep Orange';

  /// en: 'Brown'
  String get brown => 'Brown';

  /// en: 'Grey'
  String get grey => 'Grey';

  /// en: 'Blue Grey'
  String get blueGrey => 'Blue Grey';
}

// Path: hash.hashFormat
class TranslationsHashHashFormatEn {
  TranslationsHashHashFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'HEX'
  String get hex => 'HEX';

  /// en: 'Base64'
  String get base64 => 'Base64';
}

// Path: sqlite.kOverride
class TranslationsSqliteKOverrideEn {
  TranslationsSqliteKOverrideEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Override current database?'
  String get title => 'Override current database?';

  /// en: 'This action will override your current snapshot. It cannot be undone. Do you want to continue?'
  String get message =>
      'This action will override your current snapshot. It cannot be undone. Do you want to continue?';

  /// en: 'Override'
  String get confirm => 'Override';
}

// Path: uuidGenerator.types
class TranslationsUuidGeneratorTypesEn {
  TranslationsUuidGeneratorTypesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'UUID v1'
  String get uuidV1 => 'UUID v1';

  /// en: 'UUID v4'
  String get uuidV4 => 'UUID v4';

  /// en: 'UUID v5'
  String get uuidV5 => 'UUID v5';
}

// Path: uuidGenerator.namespaces
class TranslationsUuidGeneratorNamespacesEn {
  TranslationsUuidGeneratorNamespacesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'DNS'
  String get dns => 'DNS';

  /// en: 'URL'
  String get url => 'URL';

  /// en: 'OID'
  String get oid => 'OID';

  /// en: 'x500'
  String get x500 => 'x500';

  /// en: 'NIL'
  String get nil => 'NIL';

  /// en: 'MAX'
  String get max => 'MAX';
}

// Path: cron.cronFormat
class TranslationsCronCronFormatEn {
  TranslationsCronCronFormatEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: '“At $str“'
  String atWhatTime({required Object str}) => '“At ${str}“';

  /// en: '“At '
  String get atBegin => '“At ';

  /// en: '“'
  String get atEnd => '“';

  late final TranslationsCronCronFormatMinutesEn minutes =
      TranslationsCronCronFormatMinutesEn._(_root);
  late final TranslationsCronCronFormatHoursEn hours =
      TranslationsCronCronFormatHoursEn._(_root);
  late final TranslationsCronCronFormatDaysEn days =
      TranslationsCronCronFormatDaysEn._(_root);
  late final TranslationsCronCronFormatMonthsEn months =
      TranslationsCronCronFormatMonthsEn._(_root);
  late final TranslationsCronCronFormatDaysOfWeekEn daysOfWeek =
      TranslationsCronCronFormatDaysOfWeekEn._(_root);

  /// en: 'between $from to $to'
  String step({required Object from, required Object to}) =>
      'between ${from} to ${to}';
}

// Path: cron.errors
class TranslationsCronErrorsEn {
  TranslationsCronErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Empty cron part'
  String get empty => 'Empty cron part';

  /// en: 'Something goes wrong'
  String get custom => 'Something goes wrong';

  /// en: 'Value must be $from to $to, but got $value'
  String invalidValue({
    required Object from,
    required Object to,
    required Object value,
  }) => 'Value must be ${from} to ${to}, but got ${value}';

  /// en: 'Range must be in format N-M'
  String get rangeLength => 'Range must be in format N-M';

  /// en: '$from must be less than $to'
  String range({required Object from, required Object to}) =>
      '${from} must be less than ${to}';

  /// en: 'Step must be in format N-M/X, N/X or */X'
  String get stepLength => 'Step must be in format N-M/X, N/X or */X';

  /// en: 'Step must be 1 to $to, but got $value'
  String invalidStep({required Object to, required Object value}) =>
      'Step must be 1 to ${to}, but got ${value}';
}

// Path: qrCode.export
class TranslationsQrCodeExportEn {
  TranslationsQrCodeExportEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Export'
  String get title => 'Export';

  late final TranslationsQrCodeExportExportSizeEn exportSize =
      TranslationsQrCodeExportExportSizeEn._(_root);
  late final TranslationsQrCodeExportExportTypeEn exportType =
      TranslationsQrCodeExportExportTypeEn._(_root);

  /// en: 'Copy'
  String get copy => 'Copy';

  /// en: 'Save'
  String get save => 'Save';
}

// Path: qrCode.settings
class TranslationsQrCodeSettingsEn {
  TranslationsQrCodeSettingsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Settings'
  String get title => 'Settings';

  late final TranslationsQrCodeSettingsErrorCorrectionEn errorCorrection =
      TranslationsQrCodeSettingsErrorCorrectionEn._(_root);
  late final TranslationsQrCodeSettingsShapeStyleEn shapeStyle =
      TranslationsQrCodeSettingsShapeStyleEn._(_root);
  late final TranslationsQrCodeSettingsForegroundColorEn foregroundColor =
      TranslationsQrCodeSettingsForegroundColorEn._(_root);
  late final TranslationsQrCodeSettingsBackgroundColorEn backgroundColor =
      TranslationsQrCodeSettingsBackgroundColorEn._(_root);
}

// Path: cron.cronFormat.minutes
class TranslationsCronCronFormatMinutesEn {
  TranslationsCronCronFormatMinutesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'every minute'
  String get any => 'every minute';

  /// en: 'minute $minute'
  String single({required Object minute}) => 'minute ${minute}';

  /// en: 'every minute from $from to $to'
  String range({required Object from, required Object to}) =>
      'every minute from ${from} to ${to}';

  /// en: '(one) {every minute} (two) {every ${step}nd minutes} (few) {every ${step}rd minutes} (other) {every ${step}th minutes}'
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
class TranslationsCronCronFormatHoursEn {
  TranslationsCronCronFormatHoursEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'hour $hour'
  String single({required Object hour}) => 'hour ${hour}';

  /// en: 'every hour from $from to $to'
  String range({required Object from, required Object to}) =>
      'every hour from ${from} to ${to}';

  /// en: '(one) {every hour} (two) {every ${step}nd hours} (few) {every ${step}rd hours} (other) {every ${step}th hours}'
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
class TranslationsCronCronFormatDaysEn {
  TranslationsCronCronFormatDaysEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'day-of-month $day'
  String single({required Object day}) => 'day-of-month ${day}';

  /// en: 'every day-of-month from $from to $to'
  String range({required Object from, required Object to}) =>
      'every day-of-month from ${from} to ${to}';

  /// en: '(one) {every day-of-month} (two) {every ${step}nd day-of-month} (few) {every ${step}rd day-of-month} (other) {every ${step}th day-of-month}'
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
class TranslationsCronCronFormatMonthsEn {
  TranslationsCronCronFormatMonthsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'from $from to $to'
  String range({required Object from, required Object to}) =>
      'from ${from} to ${to}';

  /// en: '(one) {every month} (two) {every ${step}nd month} (few) {every ${step}rd month} (other) {every ${step}th month}'
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
class TranslationsCronCronFormatDaysOfWeekEn {
  TranslationsCronCronFormatDaysOfWeekEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'every day-of-week from $from to $to'
  String range({required Object from, required Object to}) =>
      'every day-of-week from ${from} to ${to}';

  /// en: '(one) {every day-of-week} (two) {every ${step}nd day-of-week} (few) {every ${step}rd day-of-week} (other) {every ${step}th day-of-week}'
  String step({required num n, required Object step}) =>
      (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
        n,
        one: 'every day-of-week',
        two: 'every ${step}nd day-of-week',
        few: 'every ${step}rd day-of-week',
        other: 'every ${step}th day-of-week',
      );
}

// Path: qrCode.export.exportSize
class TranslationsQrCodeExportExportSizeEn {
  TranslationsQrCodeExportExportSizeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Export size (${px}px)'
  String title({required Object px}) => 'Export size (${px}px)';

  /// en: 'Custom'
  String get custom => 'Custom';

  late final TranslationsQrCodeExportExportSizeDialogEn dialog =
      TranslationsQrCodeExportExportSizeDialogEn._(_root);
}

// Path: qrCode.export.exportType
class TranslationsQrCodeExportExportTypeEn {
  TranslationsQrCodeExportExportTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Export type'
  String get title => 'Export type';

  /// en: 'PNG'
  String get png => 'PNG';

  /// en: 'JPEG'
  String get jpeg => 'JPEG';
}

// Path: qrCode.settings.errorCorrection
class TranslationsQrCodeSettingsErrorCorrectionEn {
  TranslationsQrCodeSettingsErrorCorrectionEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Error correction ($percent)'
  String title({required Object percent}) => 'Error correction (${percent})';

  /// en: 'QR codes can still work even when parts are damaged or dirty because they store backup data. You can choose how much backup data to include - more backup means the code survives more damage but becomes bigger. Use less backup for screens, more backup for printed codes that might get scratched.'
  String get hint =>
      'QR codes can still work even when parts are damaged or dirty because they store backup data.\n\nYou can choose how much backup data to include - more backup means the code survives more damage but becomes bigger.\n\nUse less backup for screens, more backup for printed codes that might get scratched.';
}

// Path: qrCode.settings.shapeStyle
class TranslationsQrCodeSettingsShapeStyleEn {
  TranslationsQrCodeSettingsShapeStyleEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Shape style'
  String get title => 'Shape style';
}

// Path: qrCode.settings.foregroundColor
class TranslationsQrCodeSettingsForegroundColorEn {
  TranslationsQrCodeSettingsForegroundColorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Foreground color'
  String get title => 'Foreground color';
}

// Path: qrCode.settings.backgroundColor
class TranslationsQrCodeSettingsBackgroundColorEn {
  TranslationsQrCodeSettingsBackgroundColorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Background color'
  String get title => 'Background color';
}

// Path: qrCode.export.exportSize.dialog
class TranslationsQrCodeExportExportSizeDialogEn {
  TranslationsQrCodeExportExportSizeDialogEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Export size'
  String get title => 'Export size';

  /// en: 'Enter the size in pixels (px):'
  String get body => 'Enter the size in pixels (px):';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
/// Note: We use a HashMap because Dart seems to be unable to compile large switch statements.
Map<String, dynamic>? _map;

extension on Translations {
  dynamic _flatMapFunction(String path) {
    final map = _map ?? _initFlatMap();
    return map[path];
  }

  /// Initializes the flat map and returns it.
  Map<String, dynamic> _initFlatMap() {
    final map = <String, dynamic>{};
    map['common.input'] = 'Input:';
    map['common.output'] = 'Output:';
    map['common.clear'] = 'Clear';
    map['common.yes'] = 'Yes';
    map['common.no'] = 'No';
    map['common.copy'] = 'Copy';
    map['common.copied'] = 'Copied';
    map['common.questionMark'] = '?';
    map['common.percent'] = '%';
    map['common.fileDropTitle'] = 'Drop file here';
    map['common.cancel'] = 'Cancel';
    map['common.confirm'] = 'Confirm';
    map['common.paste'] = 'Paste';
    map['common.and'] = 'and';
    map['common.on'] = 'on';
    map['common.inWord'] = 'in';
    map['common.textSeparator'] = ', ';
    map['common.save'] = 'Save';
    map['common.dayOfWeek.full.0'] = 'Sunday';
    map['common.dayOfWeek.full.1'] = 'Monday';
    map['common.dayOfWeek.full.2'] = 'Tuesday';
    map['common.dayOfWeek.full.3'] = 'Wednesday';
    map['common.dayOfWeek.full.4'] = 'Thursday';
    map['common.dayOfWeek.full.5'] = 'Friday';
    map['common.dayOfWeek.full.6'] = 'Saturday';
    map['common.dayOfWeek.full.7'] = 'Sunday';
    map['common.months.full.0'] = 'January';
    map['common.months.full.1'] = 'February';
    map['common.months.full.2'] = 'March';
    map['common.months.full.3'] = 'April';
    map['common.months.full.4'] = 'May';
    map['common.months.full.5'] = 'June';
    map['common.months.full.6'] = 'July';
    map['common.months.full.7'] = 'August';
    map['common.months.full.8'] = 'September';
    map['common.months.full.9'] = 'October';
    map['common.months.full.10'] = 'November';
    map['common.months.full.11'] = 'December';
    map['common.bytesCount'] = ({required num n, required Object bytes}) =>
        (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
          n,
          one: '${bytes} byte',
          other: '${bytes} bytes',
        );
    map['datetimeConverter.title'] = 'Datetime Converter';
    map['datetimeConverter.inputType.sec'] = 'Seconds since epoch';
    map['datetimeConverter.inputType.ms'] = 'Milliseconds since epoch';
    map['datetimeConverter.inputType.us'] = 'Microseconds since epoch';
    map['datetimeConverter.inputType.iso'] = 'ISO 8601';
    map['datetimeConverter.datetimeFormat.hint'] = 'Datetime format:';
    map['datetimeConverter.datetimeFormat.iso'] = 'ISO 8601';
    map['datetimeConverter.datetimeFormat.rfc'] = 'RFC 2822';
    map['datetimeConverter.now'] = 'Now';
    map['datetimeConverter.local'] = 'Local time';
    map['datetimeConverter.utc'] = 'UTC time';
    map['datetimeConverter.weekday'] = 'Weekday';
    map['datetimeConverter.weekOfTheYear'] = 'Week of the year';
    map['datetimeConverter.dayOfTheYear'] = 'Day of the year';
    map['datetimeConverter.leapYear'] = 'Leap year';
    map['datetimeConverter.dateOnly'] = 'Date only';
    map['datetimeConverter.timeOnly'] = 'Time only';
    map['datetimeConverter.relative'] = 'Relative';
    map['datetimeConverter.relativeFormat.rightNow'] = 'Right now';
    map['datetimeConverter.relativeFormat.days'] = ({required Object days}) =>
        '${days}d';
    map['datetimeConverter.relativeFormat.hours'] = ({required Object hours}) =>
        '${hours}h';
    map['datetimeConverter.relativeFormat.minutes'] =
        ({required Object minutes}) => '${minutes}m';
    map['datetimeConverter.relativeFormat.seconds'] =
        ({required Object seconds}) => '${seconds}s';
    map['datetimeConverter.relativeFormat.positive'] =
        ({required Object str}) => '${str} ago';
    map['datetimeConverter.relativeFormat.negative'] =
        ({required Object str}) => 'In ${str}';
    map['numberConverter.title'] = 'Number base converter';
    map['numberConverter.binary'] = 'Base 2 (Binary):';
    map['numberConverter.octal'] = 'Base 8 (Octal):';
    map['numberConverter.decimal'] = 'Base 10 (Decimal):';
    map['numberConverter.hex'] = 'Base 16 (Hex):';
    map['numberConverter.custom'] = 'Select base:';
    map['regexp.title'] = 'RegExp tester';
    map['regexp.regexpHint'] = 'RegExp (e.g. [^0-9])';
    map['regexp.testStringTitle'] = 'Test string:';
    map['regexp.matchesCount'] = ({required num n, required Object count}) =>
        (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
          n,
          one: '${count} match',
          other: '${count} matches',
        );
    map['regexp.matchInfoTitle'] = 'Match information:';
    map['regexp.matchInfoMatch'] = ({required Object position}) =>
        'Match #${position}';
    map['regexp.matchInfoGroup'] = ({required Object position}) =>
        'Group #${position}';
    map['regexp.matchInfoIndexes'] =
        ({required Object start, required Object end}) => '(${start}-${end})';
    map['regexp.matchInfoNothing'] = 'No matches found';
    map['regexp.settings.global'] = 'Global';
    map['regexp.settings.globalDesc'] = 'Search for all matches';
    map['regexp.settings.multiline'] = 'Multiline';
    map['regexp.settings.multilineDesc'] =
        '^ and \$ match the start/end of each line';
    map['regexp.settings.caseSensitive'] = 'Case sensitive';
    map['regexp.settings.caseSensitiveDesc'] = 'Case sensitive search';
    map['regexp.settings.unicode'] = 'Unicode';
    map['regexp.settings.unicodeDesc'] = 'Enable all Unicode features';
    map['regexp.settings.dotAll'] = 'Dot all';
    map['regexp.settings.dotAllDesk'] =
        'Dot matches all characters,\nincluding line terminators';
    map['jsonFormatter.title'] = 'JSON Formatter';
    map['jsonFormatter.inputHint'] = '{"key": "value"}';
    map['jsonFormatter.jsonFormat.min'] = 'Minify';
    map['jsonFormatter.jsonFormat.two'] = '2 spaces';
    map['jsonFormatter.jsonFormat.four'] = '4 spaces';
    map['jsonFormatter.jsonFormat.tab'] = 'Tab';
    map['jsonFormatter.jsonPathHint'] =
        'JSONPath (e.g. \$.order.products[*].title)';
    map['percentageCalculator.title'] = 'Percentage Calculator';
    map['percentageCalculator.percentFromValue.whatIs'] = 'What is ';
    map['percentageCalculator.percentFromValue.of'] = ' of ';
    map['percentageCalculator.partOfTotal.isWhat'] = ' is what % of ';
    map['color.title'] = 'Color converter';
    map['color.inputPlaceholder'] = '#FFFFFF';
    map['color.titles.hex'] = 'HEX:';
    map['color.titles.hexWithAlpha'] = 'HEX with alpha:';
    map['color.titles.rgb'] = 'RGB:';
    map['color.titles.rgba'] = 'RGBA:';
    map['color.titles.hsl'] = 'HSL:';
    map['color.titles.hsb'] = 'HSB';
    map['color.titles.hwb'] = 'HWB';
    map['materialColors.title'] = 'Material Colors';
    map['materialColors.colors.red'] = 'Red';
    map['materialColors.colors.pink'] = 'Pink';
    map['materialColors.colors.purple'] = 'Purple';
    map['materialColors.colors.deepPurple'] = 'Deep Purple';
    map['materialColors.colors.indigo'] = 'Indigo';
    map['materialColors.colors.blue'] = 'Blue';
    map['materialColors.colors.lightBlue'] = 'Light Blue';
    map['materialColors.colors.cyan'] = 'Cyan';
    map['materialColors.colors.teal'] = 'Teal';
    map['materialColors.colors.green'] = 'Green';
    map['materialColors.colors.lightGreen'] = 'Light Green';
    map['materialColors.colors.lime'] = 'Lime';
    map['materialColors.colors.yellow'] = 'Yellow';
    map['materialColors.colors.amber'] = 'Amber';
    map['materialColors.colors.orange'] = 'Orange';
    map['materialColors.colors.deepOrange'] = 'Deep Orange';
    map['materialColors.colors.brown'] = 'Brown';
    map['materialColors.colors.grey'] = 'Grey';
    map['materialColors.colors.blueGrey'] = 'Blue Grey';
    map['hash.title'] = 'Hash calculator';
    map['hash.loadFile'] = 'Load file';
    map['hash.dropFile'] = 'Drop file';
    map['hash.textInputHint'] = 'Input any text here';
    map['hash.hashFormat.hex'] = 'HEX';
    map['hash.hashFormat.base64'] = 'Base64';
    map['hash.hashOfFile'] = ({required Object path}) =>
        'Hash of file: ${path}';
    map['sqlite.title'] = 'SQLite Editor';
    map['sqlite.run'] = 'Run';
    map['sqlite.import'] = 'Import';
    map['sqlite.export'] = 'Export';
    map['sqlite.drop'] = 'Drop';
    map['sqlite.tables'] = 'Tables';
    map['sqlite.history'] = 'History';
    map['sqlite.kOverride.title'] = 'Override current database?';
    map['sqlite.kOverride.message'] =
        'This action will override your current snapshot. It cannot be undone. Do you want to continue?';
    map['sqlite.kOverride.confirm'] = 'Override';
    map['sqlite.edit'] = 'Edit';
    map['sqlite.rowAffected'] = ({required Object count}) =>
        '${count} row affected';
    map['uuidGenerator.title'] = 'UUID Generator';
    map['uuidGenerator.hint'] = 'Generate IDs:';
    map['uuidGenerator.types.uuidV1'] = 'UUID v1';
    map['uuidGenerator.types.uuidV4'] = 'UUID v4';
    map['uuidGenerator.types.uuidV5'] = 'UUID v5';
    map['uuidGenerator.namespace'] = 'Namespace:';
    map['uuidGenerator.name'] = 'Name:';
    map['uuidGenerator.namespaces.dns'] = 'DNS';
    map['uuidGenerator.namespaces.url'] = 'URL';
    map['uuidGenerator.namespaces.oid'] = 'OID';
    map['uuidGenerator.namespaces.x500'] = 'x500';
    map['uuidGenerator.namespaces.nil'] = 'NIL';
    map['uuidGenerator.namespaces.max'] = 'MAX';
    map['uuidGenerator.generate'] = 'Generate';
    map['uuidGenerator.lowercase'] = 'Lowercase';
    map['cron.title'] = 'Cron Parser';
    map['cron.nextAt'] = 'Next at:';
    map['cron.cronHint'] = '* * * * *';
    map['cron.cronFormat.atWhatTime'] = ({required Object str}) =>
        '“At ${str}“';
    map['cron.cronFormat.atBegin'] = '“At ';
    map['cron.cronFormat.atEnd'] = '“';
    map['cron.cronFormat.minutes.any'] = 'every minute';
    map['cron.cronFormat.minutes.single'] = ({required Object minute}) =>
        'minute ${minute}';
    map['cron.cronFormat.minutes.range'] =
        ({required Object from, required Object to}) =>
            'every minute from ${from} to ${to}';
    map['cron.cronFormat.minutes.step'] =
        ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every minute',
              two: 'every ${step}nd minutes',
              few: 'every ${step}rd minutes',
              other: 'every ${step}th minutes',
            );
    map['cron.cronFormat.hours.single'] = ({required Object hour}) =>
        'hour ${hour}';
    map['cron.cronFormat.hours.range'] =
        ({required Object from, required Object to}) =>
            'every hour from ${from} to ${to}';
    map['cron.cronFormat.hours.step'] =
        ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every hour',
              two: 'every ${step}nd hours',
              few: 'every ${step}rd hours',
              other: 'every ${step}th hours',
            );
    map['cron.cronFormat.days.single'] = ({required Object day}) =>
        'day-of-month ${day}';
    map['cron.cronFormat.days.range'] =
        ({required Object from, required Object to}) =>
            'every day-of-month from ${from} to ${to}';
    map['cron.cronFormat.days.step'] =
        ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every day-of-month',
              two: 'every ${step}nd day-of-month',
              few: 'every ${step}rd day-of-month',
              other: 'every ${step}th day-of-month',
            );
    map['cron.cronFormat.months.range'] =
        ({required Object from, required Object to}) => 'from ${from} to ${to}';
    map['cron.cronFormat.months.step'] =
        ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every month',
              two: 'every ${step}nd month',
              few: 'every ${step}rd month',
              other: 'every ${step}th month',
            );
    map['cron.cronFormat.daysOfWeek.range'] =
        ({required Object from, required Object to}) =>
            'every day-of-week from ${from} to ${to}';
    map['cron.cronFormat.daysOfWeek.step'] =
        ({required num n, required Object step}) =>
            (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(
              n,
              one: 'every day-of-week',
              two: 'every ${step}nd day-of-week',
              few: 'every ${step}rd day-of-week',
              other: 'every ${step}th day-of-week',
            );
    map['cron.cronFormat.step'] =
        ({required Object from, required Object to}) =>
            'between ${from} to ${to}';
    map['cron.minutes'] = 'Minutes:';
    map['cron.hours'] = 'Hours:';
    map['cron.daysOfMonth'] = 'Day-of-month:';
    map['cron.months'] = 'Months:';
    map['cron.daysOfWeek'] = 'Day-of-week:';
    map['cron.all'] = '(All)';
    map['cron.errors.empty'] = 'Empty cron part';
    map['cron.errors.custom'] = 'Something goes wrong';
    map['cron.errors.invalidValue'] =
        ({required Object from, required Object to, required Object value}) =>
            'Value must be ${from} to ${to}, but got ${value}';
    map['cron.errors.rangeLength'] = 'Range must be in format N-M';
    map['cron.errors.range'] = ({required Object from, required Object to}) =>
        '${from} must be less than ${to}';
    map['cron.errors.stepLength'] = 'Step must be in format N-M/X, N/X or */X';
    map['cron.errors.invalidStep'] =
        ({required Object to, required Object value}) =>
            'Step must be 1 to ${to}, but got ${value}';
    map['textDiff.title'] = 'Text Diff';
    map['textDiff.oldInput'] = 'Old text:';
    map['textDiff.newInput'] = 'New text:';
    map['qrCode.title'] = 'QR Code Generator';
    map['qrCode.testBeforeUse'] = 'Always test a QR code before using it';
    map['qrCode.errorTooManyBytes'] = ({required Object max}) =>
        'Text too long for QR code. Max is ${max} bytes.';
    map['qrCode.export.title'] = 'Export';
    map['qrCode.export.exportSize.title'] = ({required Object px}) =>
        'Export size (${px}px)';
    map['qrCode.export.exportSize.custom'] = 'Custom';
    map['qrCode.export.exportSize.dialog.title'] = 'Export size';
    map['qrCode.export.exportSize.dialog.body'] =
        'Enter the size in pixels (px):';
    map['qrCode.export.exportType.title'] = 'Export type';
    map['qrCode.export.exportType.png'] = 'PNG';
    map['qrCode.export.exportType.jpeg'] = 'JPEG';
    map['qrCode.export.copy'] = 'Copy';
    map['qrCode.export.save'] = 'Save';
    map['qrCode.settings.title'] = 'Settings';
    map['qrCode.settings.errorCorrection.title'] =
        ({required Object percent}) => 'Error correction (${percent})';
    map['qrCode.settings.errorCorrection.hint'] =
        'QR codes can still work even when parts are damaged or dirty because they store backup data.\n\nYou can choose how much backup data to include - more backup means the code survives more damage but becomes bigger.\n\nUse less backup for screens, more backup for printed codes that might get scratched.';
    map['qrCode.settings.shapeStyle.title'] = 'Shape style';
    map['qrCode.settings.foregroundColor.title'] = 'Foreground color';
    map['qrCode.settings.backgroundColor.title'] = 'Background color';

    _map = map;
    return map;
  }
}
