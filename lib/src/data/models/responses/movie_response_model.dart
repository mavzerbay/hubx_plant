import 'package:json_annotation/json_annotation.dart';

part 'movie_response_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class MovieResponseModel {
  MovieResponseModel({
    this.id,
    this.title,
    this.year,
    this.rated,
    this.released,
    this.runtime,
    this.genre,
    this.director,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.country,
    this.awards,
    this.poster,
    this.metascore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbID,
    this.type,
    this.response,
    this.images,
    this.comingSoon,
    this.isFavorite = false,
  });

  factory MovieResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  final String? title;
  final String? year;
  final String? rated;
  final String? released;
  final String? runtime;
  final String? genre;
  final String? director;
  final String? writer;
  final String? actors;
  final String? plot;
  final String? language;
  final String? country;
  final String? awards;
  final String? poster;
  final String? metascore;
  @JsonKey(name: 'imdbRating')
  final String? imdbRating;
  @JsonKey(name: 'imdbVotes')
  final String? imdbVotes;
  @JsonKey(name: 'imdbID')
  final String? imdbID;
  final String? type;
  final String? response;
  final List<String>? images;
  final bool? comingSoon;
  @JsonKey(name: 'isFavorite')
  final bool isFavorite;

  Map<String, dynamic> toJson() => _$MovieResponseModelToJson(this);
}
