import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:window_manager/window_manager.dart';

import 'app.dart';
import 'common/logger/logger.dart';
import 'common/logger/logging_logger.dart';
import 'common/timezone_holder.dart';
import 'i18n/strings.g.dart';

Future<void> main() async {
  try {
    await _preInit();
  } on Object catch (e, s) {
    Log.e('main', 'PreInit failed', e, s);
    rethrow;
  }

  runApp(
    TimezoneHolder(
      timezone: await _initializeTimezone(),
      child: const MiniToolsApp(),
    ),
  );
}

Future<void> _preInit() async {
  Log.init(LoggingLogger());
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  _firaCodeLicense();
  await _configureWindow();
}

Future<void> _configureWindow() async {
  if (kIsWeb) {
    return;
  }

  await WindowManager.instance.ensureInitialized();
  await WindowManager.instance.setMinimumSize(const Size(400, 500));

  if (Platform.isMacOS) {
    await const MacosWindowUtilsConfig().apply();
  } else if (Platform.isWindows) {
    await WindowManager.instance.waitUntilReadyToShow(null, () async {
      await WindowManager.instance.setBackgroundColor(const Color(0xFF111111));
    });
  }
}

Future<tz.Location> _initializeTimezone() async {
  final timezone = await FlutterTimezone.getLocalTimezone();
  tz.initializeTimeZones();
  final location = tz.getLocation(timezone);
  tz.setLocalLocation(location);
  return tz.local;
}

void _firaCodeLicense() {
  LicenseRegistry.addLicense(() async* {
    final licence =
        await rootBundle.loadString('assets/google_fonts/FiraCode-OFL.txt');
    final entry = LicenseEntryWithLineBreaks(['google_fonts'], licence);
    yield entry;
  });
}
