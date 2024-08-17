import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';

/// This method initializes macos_window_utils and styles the window.
Future<void> _configureMacosWindowUtils() async {
  const config = MacosWindowUtilsConfig();
  await config.apply();
}

Future<void> _configureWindows() async {
  await windowManager.waitUntilReadyToShow(null, () async {
    await windowManager.setBackgroundColor(const Color(0xFF111111));
  });
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  if (kIsWeb) {
    // do nothing
  } else if (Platform.isMacOS) {
    await _configureMacosWindowUtils();
  } else if (Platform.isWindows) {
    await _configureWindows();
  }

  // const windowOptions = WindowOptions(
  // size: Size(800, 600),
  // center: true,
  // backgroundColor: Colors.white,
  // skipTaskbar: false,
  // titleBarStyle: TitleBarStyle.normal,
  // );
  // await windowManager.waitUntilReadyToShow(windowOptions, () async {
  //   await windowManager.show();
  //   await windowManager.focus();
  // });

  runApp(const App());
}
