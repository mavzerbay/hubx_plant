import 'package:hubx/src/data/models/base/base_response.dart';

class BaseResponseModel<T> extends BaseResponse {
  BaseResponseModel({required super.response, this.data});

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json, [
    T Function(Map<String, Object?>)? decoder,
  ]) => BaseResponseModel<T>(
    response:
        json['response'] != null && json['response'] is Map<String, dynamic>
        ? ResponseModel.fromJson(json['response'] as Map<String, dynamic>)
        : ResponseModel.failure(),
    data: json['data'] != null && decoder != null && T != Null
        ? json['data'] is Map
              ? decoder(json['data'] as Map<String, dynamic>)
              : json['data'] as T?
        : null,
  );

  factory BaseResponseModel.failure() => BaseResponseModel<T>(
    response: ResponseModel.failure(),
  );

  @override
  Map<String, dynamic> toJson([Object? Function(T item)? encoder]) => {
    'response': response.toJson(),
    'data': data != null && encoder != null ? encoder(data as T) : data,
  };

  final T? data;

  @override
  bool get isSuccess =>
      response.code >= 200 && response.code < 300 && data != null;
}

class BaseResponseModelList<T> extends BaseResponse {
  BaseResponseModelList({
    required super.response,
    this.data = const [],
  });

  factory BaseResponseModelList.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, Object?>) decoder,
  ) => BaseResponseModelList<T>(
    response:
        json['response'] != null && json['response'] is Map<String, dynamic>
        ? ResponseModel.fromJson(json['response'] as Map<String, dynamic>)
        : ResponseModel.failure(),
    data: json['data'] != null && json['data'] is List
        ? (json['data'] as List)
              .map((e) => decoder(e as Map<String, Object?>))
              .toList()
        : [],
  );

  final Iterable<T> data;

  @override
  Map<String, dynamic> toJson([Object? Function(T item)? encoder]) => {
    'response': response.toJson(),
    'data': encoder != null ? encoder(data as T) : data,
  };
}
