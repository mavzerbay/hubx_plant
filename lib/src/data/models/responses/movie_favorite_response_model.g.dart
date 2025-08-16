// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_favorite_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieFavoriteResponseModel _$MovieFavoriteResponseModelFromJson(
  Map<String, dynamic> json,
) => MovieFavoriteResponseModel(
  movie: MovieResponseModel.fromJson(json['movie'] as Map<String, dynamic>),
  action: $enumDecode(_$MovieFavoriteActionEnumEnumMap, json['action']),
);

Map<String, dynamic> _$MovieFavoriteResponseModelToJson(
  MovieFavoriteResponseModel instance,
) => <String, dynamic>{
  'movie': instance.movie,
  'action': _$MovieFavoriteActionEnumEnumMap[instance.action]!,
};

const _$MovieFavoriteActionEnumEnumMap = {
  MovieFavoriteActionEnum.favorited: 'favorited',
  MovieFavoriteActionEnum.unfavorited: 'unfavorited',
};
