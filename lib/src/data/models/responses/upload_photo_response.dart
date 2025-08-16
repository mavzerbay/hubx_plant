import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/src/data/models/responses/user_base_model.dart';

part 'upload_photo_response.g.dart';

@JsonSerializable()
class UploadPhotoResponseModel extends UserBaseModel {
  const UploadPhotoResponseModel({
    required super.id,
    required super.name,
    required super.email,
    required this.photoUrl,
  });

  factory UploadPhotoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UploadPhotoResponseModelFromJson(json);

  final String photoUrl;
}
