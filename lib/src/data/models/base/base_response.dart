class BaseResponse {
  BaseResponse({required this.response});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _BaseResponseImpl.fromJson(json);

  Map<String, dynamic> toJson() => <String, dynamic>{
    'code': response.code,
    'message': response.message,
  };

  final ResponseModel response;

  bool get isSuccess => response.code >= 200 && response.code < 300;
}

class _BaseResponseImpl extends BaseResponse {
  _BaseResponseImpl({required super.response});

  factory _BaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _BaseResponseImpl(
        response: ResponseModel.fromJson(
          json['response'] as Map<String, dynamic>,
        ),
      );

  @override
  String toString() {
    return 'BaseResponse{code: ${response.code}, message: ${response.message}}';
  }
}

class ResponseModel {
  ResponseModel({required this.code, required this.message});

  ResponseModel.success() : code = 200, message = 'Success';
  ResponseModel.failure({this.message = 'Failure'}) : code = 400;

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      code: json['code'] as int,
      message: json['message'] as String,
    );
  }

  final int code;
  final String message;

  Map<String, dynamic> toJson() => {
    'code': code,
    'message': message,
  };
}
