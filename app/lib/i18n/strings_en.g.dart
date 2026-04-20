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

  /// en: 'Unix Timestamp (sec)'
  String get unixTimestamp => 'Unix Timestamp (sec)';

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
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
  dynamic _flatMapFunction(String path) {
    return _flatMapFunction$0(path);
  }

  dynamic _flatMapFunction$0(String path) {
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
      case 'common.copied':
        return 'Copied';
      case 'common.questionMark':
        return '?';
      case 'common.percent':
        return '%';
      case 'common.fileDropTitle':
        return 'Drop file here';
      case 'common.cancel':
        return 'Cancel';
      case 'common.confirm':
        return 'Confirm';
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
      case 'datetimeConverter.unixTimestamp':
        return 'Unix Timestamp (sec)';
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
      case 'sqlite.kOverride.title':
        return 'Override current database?';
      case 'sqlite.kOverride.message':
        return 'This action will override your current snapshot. It cannot be undone. Do you want to continue?';
      case 'sqlite.kOverride.confirm':
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
        return ({
          required Object from,
          required Object to,
          required Object value,
        }) => 'Value must be ${from} to ${to}, but got ${value}';
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
      case 'qrCode.testBeforeUse':
        return 'Always test a QR code before using it';
      case 'qrCode.errorTooManyBytes':
        return ({required Object max}) =>
            'Text too long for QR code. Max is ${max} bytes.';
      case 'qrCode.export.title':
        return 'Export';
      case 'qrCode.export.exportSize.title':
        return ({required Object px}) => 'Export size (${px}px)';
      case 'qrCode.export.exportSize.custom':
        return 'Custom';
      case 'qrCode.export.exportSize.dialog.title':
        return 'Export size';
      case 'qrCode.export.exportSize.dialog.body':
        return 'Enter the size in pixels (px):';
      case 'qrCode.export.exportType.title':
        return 'Export type';
      case 'qrCode.export.exportType.png':
        return 'PNG';
      case 'qrCode.export.exportType.jpeg':
        return 'JPEG';
      case 'qrCode.export.copy':
        return 'Copy';
      case 'qrCode.export.save':
        return 'Save';
      case 'qrCode.settings.title':
        return 'Settings';
      case 'qrCode.settings.errorCorrection.title':
        return ({required Object percent}) => 'Error correction (${percent})';
      case 'qrCode.settings.errorCorrection.hint':
        return 'QR codes can still work even when parts are damaged or dirty because they store backup data.\n\nYou can choose how much backup data to include - more backup means the code survives more damage but becomes bigger.\n\nUse less backup for screens, more backup for printed codes that might get scratched.';
      case 'qrCode.settings.shapeStyle.title':
        return 'Shape style';
      case 'qrCode.settings.foregroundColor.title':
        return 'Foreground color';
      case 'qrCode.settings.backgroundColor.title':
        return 'Background color';
      default:
        return null;
    }
  }
}
