import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart' as l;

import 'logger.dart';

final class LoggingLogger implements Logger {
  @override
  void init() {
    l.Logger.root.level = kDebugMode ? l.Level.ALL : l.Level.WARNING;
    l.Logger.root.onRecord.listen((record) {
      if (kDebugMode) {
        print(
            '${record.level.toLoggerLevel.name[0].toUpperCase()}/${record.loggerName}: ${record.message}');
      }
    });
  }

  @override
  void log(
    LogLevel level,
    String tag,
    String message, [
    Object? exception,
    StackTrace? stacktrace,
  ]) {
    final logger = l.Logger(tag);
    logger.log(level.toLevel, message, exception, stacktrace);
  }
}

extension on LogLevel {
  l.Level get toLevel {
    return switch (this) {
      LogLevel.verbose => l.Level.FINE,
      LogLevel.debug => l.Level.CONFIG,
      LogLevel.info => l.Level.INFO,
      LogLevel.warning => l.Level.WARNING,
      LogLevel.error => l.Level.SEVERE,
    };
  }
}

extension on l.Level {
  LogLevel get toLoggerLevel {
    if (value <= l.Level.FINE.value) {
      return LogLevel.verbose;
    } else if (value <= l.Level.CONFIG.value) {
      return LogLevel.debug;
    } else if (value <= l.Level.INFO.value) {
      return LogLevel.info;
    } else if (value <= l.Level.WARNING.value) {
      return LogLevel.warning;
    }
    return LogLevel.error;
  }
}
