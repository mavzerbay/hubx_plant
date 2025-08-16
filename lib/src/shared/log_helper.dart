import 'package:talker_flutter/talker_flutter.dart';

/// Utility class for logging messages using Talker.
class Log {
  const Log._();

  static final Talker _talker = TalkerFlutter.init(
    settings: TalkerSettings(),
  );

  static Talker get talker => _talker;

  static void d(
    dynamic message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.debug(
      message,
      exception,
      stackTrace,
    );
  }

  static void e(
    Object? errorMessage, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.error(
      errorMessage,
      exception,
      stackTrace,
    );
  }

  static void i(
    dynamic message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.info(
      message,
      exception,
      stackTrace,
    );
  }

  static void w(
    dynamic message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.warning(
      message,
      exception,
      stackTrace,
    );
  }

  static void custom(
    dynamic message, {
    LogLevel logLevel = LogLevel.debug,
    Object? exception,
    StackTrace? stackTrace,
    AnsiPen? pen,
  }) {
    _talker.log(
      message,
      logLevel: logLevel,
      exception: exception,
      stackTrace: stackTrace,
      pen: pen,
    );
  }
}
