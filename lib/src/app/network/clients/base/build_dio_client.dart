import 'package:dio/dio.dart';
import 'package:hubx/src/app/network/interceptors/error_interceptor.dart';
import 'package:hubx/src/app/network/interceptors/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Dio buildDioClient(String base) {
  final dio = Dio(
    BaseOptions(
      baseUrl: base,
      contentType: 'application/json',
    ),
  );

  dio.interceptors.addAll([
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
    ),
    TokenInterceptor.instance,
    ErrorInterceptor(),
  ]);

  return dio;
}
