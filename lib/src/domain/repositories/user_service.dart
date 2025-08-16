import 'dart:io';

import 'package:hubx/src/app/di/locator.dart';
import 'package:hubx/src/app/network/clients/user_client.dart';
import 'package:hubx/src/data/abstractions/user_service_interface.dart';
import 'package:hubx/src/data/models/base/base_response_model.dart';
import 'package:hubx/src/data/models/requests/index.dart';
import 'package:hubx/src/data/models/responses/index.dart';

class UserService extends IUserService {
  // Avoid self instance
  UserService._();
  static final IUserService _instance = UserService._();
  static IUserService get instance => _instance;

  final UserClient _client = locator<UserClient>();

  @override
  Future<BaseResponseModel<UserResponseModel>> login(LoginRequest request) {
    return _client.login(request);
  }

  @override
  Future<BaseResponseModel<UserResponseModel>> register(
    RegisterRequest request,
  ) {
    return _client.register(request);
  }

  @override
  Future<BaseResponseModel<UserResponseModel>> profile() {
    return _client.profile();
  }

  @override
  Future<BaseResponseModel<UploadPhotoResponseModel>> uploadPhoto(File file) {
    return _client.uploadPhoto(file);
  }
}
