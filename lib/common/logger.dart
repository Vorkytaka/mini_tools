import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart' as l;

enum LoggerLevel {
  verbose,
  debug,
  info,
  warning,
  error,
}

extension on LoggerLevel {
  l.Level get toLevel {
    return switch (this) {
      LoggerLevel.verbose => l.Level.FINE,
      LoggerLevel.debug => l.Level.CONFIG,
      LoggerLevel.info => l.Level.INFO,
      LoggerLevel.warning => l.Level.WARNING,
      LoggerLevel.error => l.Level.SEVERE,
    };
  }
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
    _log(LoggerLevel.verbose, tag, message);
  }

  static void d(String tag, String message) {
    _log(LoggerLevel.debug, tag, message);
  }

  static void i(String tag, String message) {
    _log(LoggerLevel.info, tag, message);
  }

  static void w(String tag, String message) {
    _log(LoggerLevel.warning, tag, message);
  }

  static void e(
    String tag,
    String message, [
    Object? exception,
    StackTrace? stacktrace,
  ]) {
    _log(
      LoggerLevel.error,
      tag,
      message,
      exception,
      stacktrace,
    );
  }

  @pragma('vm:prefer-inline')
  static void _log(
    LoggerLevel level,
    String tag,
    String message, [
    Object? exception,
    StackTrace? stacktrace,
  ]) {
    final logger = l.Logger(tag);
    logger.log(level.toLevel, message, exception, stacktrace);
  }
}
