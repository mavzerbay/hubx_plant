import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/src/data/models/base/pagination_model.dart';
import 'package:hubx/src/data/models/responses/index.dart';

part 'movie_list_response_model.g.dart';

@JsonSerializable()
class MovieListResponseModel {
  const MovieListResponseModel({
    required this.pagination,
    this.movies = const [],
  });

  factory MovieListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieListResponseModelFromJson(json);

  final Iterable<MovieResponseModel> movies;
  final PaginationModel pagination;
}
