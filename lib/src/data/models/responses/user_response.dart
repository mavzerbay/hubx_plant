import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/src/data/models/responses/user_base_model.dart';
import 'package:hubx/src/domain/entities/index.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponseModel extends UserBaseModel {
  const UserResponseModel({
    required super.id,
    required super.name,
    required super.email,
    required this.token,
    this.photoUrl,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  final String token;
  final String? photoUrl;

  @override
  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      photoUrl: photoUrl,
    );
  }
}
