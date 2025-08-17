import 'package:json_annotation/json_annotation.dart';

part 'question_model.g.dart';

@JsonSerializable()
class QuestionModel {
  QuestionModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUri,
    required this.uri,
    required this.order,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  final int id;
  final String title;
  final String subtitle;
  @JsonKey(name: 'image_uri')
  final String imageUri;
  final String uri;
  final int order;

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}
