import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hubx/src/data/models/base/base_response_model.dart';
import 'package:hubx/src/data/models/requests/index.dart';
import 'package:hubx/src/data/models/responses/index.dart';
import 'package:retrofit/retrofit.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @POST('/user/login')
  Future<BaseResponseModel<UserResponseModel>> login(
    @Body() LoginRequest body,
  );

  @POST('/user/register')
  Future<BaseResponseModel<UserResponseModel>> register(
    @Body() RegisterRequest body,
  );

  @GET('/user/profile')
  Future<BaseResponseModel<UserResponseModel>> profile();

  @MultiPart()
  @POST('/user/upload_photo')
  Future<BaseResponseModel<UploadPhotoResponseModel>> uploadPhoto(
    @Part() File file,
  );
}
