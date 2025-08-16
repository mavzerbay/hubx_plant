// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieListResponseModel _$MovieListResponseModelFromJson(
  Map<String, dynamic> json,
) => MovieListResponseModel(
  pagination: PaginationModel.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
  movies:
      (json['movies'] as List<dynamic>?)?.map(
        (e) => MovieResponseModel.fromJson(e as Map<String, dynamic>),
      ) ??
      const [],
);

Map<String, dynamic> _$MovieListResponseModelToJson(
  MovieListResponseModel instance,
) => <String, dynamic>{
  'movies': instance.movies.toList(),
  'pagination': instance.pagination,
};
