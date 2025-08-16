import 'package:json_annotation/json_annotation.dart';

part 'user_base_model.g.dart';

@JsonSerializable()
class UserBaseModel {
  const UserBaseModel({
    required this.id,
    required this.name,
    required this.email,
  });

  factory UserBaseModel.fromJson(Map<String, dynamic> json) =>
      _$UserBaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserBaseModelToJson(this);

  final String id;
  final String name;
  final String email;
}
