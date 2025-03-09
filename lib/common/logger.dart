import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart' as l;

enum LoggerLevel {
  verbose,
  debug,
  info,
  warning,
  error,
}

extension on l.Level {
  LoggerLevel get toLoggerLevel {
    if (value <= l.Level.FINE.value) {
      return LoggerLevel.verbose;
    } else if (value <= l.Level.CONFIG.value) {
      return LoggerLevel.debug;
    } else if (value <= l.Level.INFO.value) {
      return LoggerLevel.info;
    } else if (value <= l.Level.WARNING.value) {
      return LoggerLevel.warning;
    }
    return LoggerLevel.error;
  }
}

class Logger {
  const Logger._();

  static void init() {
    l.Logger.root.level = kDebugMode ? l.Level.ALL : l.Level.WARNING;
    l.Logger.root.onRecord.listen((record) {
      if (kDebugMode) {
        print(
            '${record.level.toLoggerLevel.name[0].toUpperCase()}/${record.loggerName}: ${record.message}');
      }
    });
  }

  static void v(String tag, String message) {
    final logger = _getLogger(tag);
    logger.fine(message);
  }

  static void d(String tag, String message) {
    final logger = _getLogger(tag);
    logger.config(message);
  }

  static void i(String tag, String message) {
    final logger = _getLogger(tag);
    logger.info(message);
  }

  static void w(String tag, String message) {
    final logger = _getLogger(tag);
    logger.warning(message);
  }

  static void e(
    String tag,
    String message, [
    Object? exception,
    StackTrace? stacktrace,
  ]) {
    final logger = _getLogger(tag);
    logger.severe(
      message,
      exception,
      stacktrace,
    );
  }

  @pragma('vm:prefer-inline')
  static l.Logger _getLogger(String tag) => l.Logger(tag);
}
