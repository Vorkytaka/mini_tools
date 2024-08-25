/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 22
///
/// Built on 2024-08-25 at 00:07 UTC

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

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
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
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
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
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
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
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsCommonEn common = _StringsCommonEn._(_root);
	late final _StringsUnixTimestampEn unixTimestamp = _StringsUnixTimestampEn._(_root);
}

// Path: common
class _StringsCommonEn {
	_StringsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get input => 'Input:';
	String get clear => 'Clear';
	String get yes => 'Yes';
	String get no => 'No';
	String get copy => 'Copy';
}

// Path: unixTimestamp
class _StringsUnixTimestampEn {
	_StringsUnixTimestampEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Unix timestamp';
	late final _StringsUnixTimestampInputTypeEn inputType = _StringsUnixTimestampInputTypeEn._(_root);
	late final _StringsUnixTimestampDatetimeFormatEn datetimeFormat = _StringsUnixTimestampDatetimeFormatEn._(_root);
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.input': return 'Input:';
			case 'common.clear': return 'Clear';
			case 'common.yes': return 'Yes';
			case 'common.no': return 'No';
			case 'common.copy': return 'Copy';
			case 'unixTimestamp.title': return 'Unix timestamp';
			case 'unixTimestamp.inputType.sec': return 'Seconds since epoch';
			case 'unixTimestamp.inputType.ms': return 'Milliseconds since epoch';
			case 'unixTimestamp.inputType.us': return 'Microseconds since epoch';
			case 'unixTimestamp.inputType.iso': return 'ISO 8601';
			case 'unixTimestamp.datetimeFormat.hint': return 'Datetime format:';
			case 'unixTimestamp.datetimeFormat.iso': return 'ISO 8601';
			case 'unixTimestamp.datetimeFormat.rfc': return 'RFC 2822';
			case 'unixTimestamp.now': return 'Now';
			case 'unixTimestamp.local': return 'Local time';
			case 'unixTimestamp.utc': return 'UTC time';
			case 'unixTimestamp.weekday': return 'Weekday';
			case 'unixTimestamp.weekOfTheYear': return 'Week of the year';
			case 'unixTimestamp.dayOfTheYear': return 'Day of the year';
			case 'unixTimestamp.leapYear': return 'Leap year';
			case 'unixTimestamp.dateOnly': return 'Date only';
			case 'unixTimestamp.timeOnly': return 'Time only';
			default: return null;
		}
	}
}
