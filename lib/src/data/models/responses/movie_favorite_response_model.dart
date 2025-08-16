import 'package:hubx/src/data/models/responses/movie_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_favorite_response_model.g.dart';

@JsonSerializable()
class MovieFavoriteResponseModel {
  const MovieFavoriteResponseModel({
    required this.movie,
    required this.action,
  });

  factory MovieFavoriteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieFavoriteResponseModelFromJson(json);

  final MovieResponseModel movie;
  final MovieFavoriteActionEnum action;
}

@JsonEnum()
enum MovieFavoriteActionEnum {
  favorited,
  unfavorited,
}
