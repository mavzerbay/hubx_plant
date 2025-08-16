import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hubx/gen/translations.g.dart';

import 'package:hubx/src/app/network/exceptions/token_exception.dart';
import 'package:hubx/src/data/models/base/base_response.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionTimeout:
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            response: err.response,
            error: TimeoutException(
              'Bağlantı zaman aşımına uğradı. Lütfen tekrar deneyin.',
            ),
          ),
        );
        return;

      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case HttpStatus.unauthorized:
          case HttpStatus.forbidden:
            handler.reject(
              DioException(
                type: DioExceptionType.badResponse,
                requestOptions: err.requestOptions,
                response: err.response,
                error: const TokenException(),
              ),
            );
            return;
          case HttpStatus.badRequest:
            if (err.response?.data != null &&
                err.response?.data is Map<String, dynamic>) {
              final result = BaseResponse.fromJson(
                err.response?.data as Map<String, dynamic>,
              );
              handler.reject(
                DioException(
                  requestOptions: err.requestOptions,
                  error: result,
                ),
              );
              return;
            }
          case HttpStatus.internalServerError:
          case HttpStatus.badGateway:
          case HttpStatus.serviceUnavailable:
          case HttpStatus.gatewayTimeout:
          case HttpStatus.notFound:
            final result =
                err.response?.data != null &&
                    err.response?.data is Map<String, dynamic>
                ? BaseResponse.fromJson(
                    err.response?.data as Map<String, dynamic>,
                  )
                : BaseResponse(
                    response: ResponseModel.failure(
                      message: locale.exception.server,
                    ),
                  );
            handler.reject(
              DioException(
                type: DioExceptionType.badResponse,
                requestOptions: err.requestOptions,
                response: err.response,
                error: result,
              ),
            );

            return;
          case HttpStatus.requestEntityTooLarge:
            handler.reject(
              DioException(
                type: DioExceptionType.badResponse,
                requestOptions: err.requestOptions,
                response: err.response,
                error: BaseResponse(
                  response: ResponseModel(
                    code: HttpStatus.requestEntityTooLarge,
                    message: 'REQUEST_ENTITY_TOO_LARGE',
                  ),
                ),
              ),
            );
            return;
          case 522:
            final result =
                err.response?.data != null &&
                    err.response?.data is Map<String, dynamic>
                ? BaseResponse.fromJson(
                    err.response?.data as Map<String, dynamic>,
                  )
                : BaseResponse(
                    response: ResponseModel.failure(
                      message: locale.exception.server,
                    ),
                  );
            handler.reject(
              DioException(
                type: DioExceptionType.badResponse,
                requestOptions: err.requestOptions,
                response: err.response,
                error: result,
              ),
            );

          default:
            handler.reject(
              DioException(
                type: DioExceptionType.badResponse,
                requestOptions: err.requestOptions,
                error: BaseResponse.fromJson(
                  err.response?.data as Map<String, dynamic>,
                ),
              ),
            );
        }
      case DioExceptionType.cancel:
      case DioExceptionType.badCertificate:
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        if (kDebugMode) {
          if (err.response?.data != null &&
              err.response?.data is Map<String, dynamic>) {
            final result = BaseResponse.fromJson(
              err.response?.data as Map<String, dynamic>,
            );

            handler.next(
              DioException(
                type: err.type,
                requestOptions: err.requestOptions,
                error: result,
              ),
            );
            return;
          }
          if (err.error is SocketException) {
            final socketException = err.error! as SocketException;
            if (socketException.osError != null) {
              handler.reject(
                DioException(
                  type: DioExceptionType.connectionError,
                  requestOptions: err.requestOptions,
                  error: socketException,
                ),
              );
              return;
            }
          }
        }
        return;
    }
    handler.next(err);
  }
}
