import 'package:hubx/src/shared/log_helper.dart';

mixin LogMixin on Object {
  void logD(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    Log.d(
      message,
      exception,
      stackTrace,
    );
  }

  void logI(
    String message, [
    Object? value,
    StackTrace? stackTrace,
  ]) {
    Log.i(
      message,
      value,
      stackTrace,
    );
  }

  void logW(
    String message, [
    Object? value,
    StackTrace? stackTrace,
  ]) {
    Log.w(
      message,
      value,
      stackTrace,
    );
  }

  void logE(
    Object? errorMessage, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    Log.e(
      errorMessage,
      error,
      stackTrace,
    );
  }
}
