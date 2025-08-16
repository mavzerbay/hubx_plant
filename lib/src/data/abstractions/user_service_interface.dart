import 'dart:io';

import 'package:hubx/src/data/models/base/base_response_model.dart';
import 'package:hubx/src/data/models/requests/index.dart';

import 'package:hubx/src/data/models/responses/index.dart';

abstract class IUserService {
  Future<BaseResponseModel<UserResponseModel>> login(LoginRequest request);
  Future<BaseResponseModel<UserResponseModel>> register(
    RegisterRequest request,
  );
  Future<BaseResponseModel<UserResponseModel>> profile();
  Future<BaseResponseModel<UploadPhotoResponseModel>> uploadPhoto(File file);
}
