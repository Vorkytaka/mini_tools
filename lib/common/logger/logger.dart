/// Represents the severity level of a log message.
///
/// Used to categorize logs by their importance or purpose.
enum LogLevel {
  /// Detailed information useful during development, such as trace logs.
  verbose,

  /// Diagnostic information helpful for debugging.
  debug,

  /// General operational messages that confirm the app is working as expected.
  info,

  /// Indications of potential problems or important situations that aren't errors.
  warning,

  /// Errors or unexpected conditions that may require attention or crash reporting.
  error,
}

/// Abstract logger interface that defines how logs should be handled.
abstract interface class Logger {
  /// Initialize current Logger system
  void init();

  /// Logs a message with the given [level], [tag], and [message].
  ///
  /// Optionally includes an [exception] and [stacktrace].
  void log(
    LogLevel level,
    String tag,
    String message, [
    Object? exception,
    StackTrace? stacktrace,
  ]);
}

class Log {
  static Logger? _logger;

  const Log._();

  static void init(Logger? logger) {
    _logger = logger;
    _logger?.init();
  }

  static void v(String tag, String message) {
    _log(LogLevel.verbose, tag, message);
  }

  static void d(String tag, String message) {
    _log(LogLevel.debug, tag, message);
  }

  static void i(String tag, String message) {
    _log(LogLevel.info, tag, message);
  }

  static void w(String tag, String message) {
    _log(LogLevel.warning, tag, message);
  }

  static void e(
    String tag,
    String message, [
    Object? exception,
    StackTrace? stacktrace,
  ]) {
    _log(
      LogLevel.error,
      tag,
      message,
      exception,
      stacktrace,
    );
  }

  @pragma('vm:prefer-inline')
  static void _log(
    LogLevel level,
    String tag,
    String message, [
    Object? exception,
    StackTrace? stacktrace,
  ]) {
    _logger?.log(level, tag, message, exception, stacktrace);
  }
}
