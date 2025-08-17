import 'package:json_annotation/json_annotation.dart';

part 'category_response_model.g.dart';

@JsonSerializable()
class CategoryModel {
  CategoryModel({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.title,
    required this.rank,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  final int id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final String title;
  final int rank;
  final CategoryImage image;
}

@JsonSerializable()
class CategoryImage {
  CategoryImage({
    required this.id,
    required this.name,
    required this.width,
    required this.height,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.provider,
    required this.createdAt,
    required this.updatedAt,
    this.alternativeText,
    this.caption,
    this.formats,
    this.previewUrl,
    this.providerMetadata,
  });

  factory CategoryImage.fromJson(Map<String, dynamic> json) =>
      _$CategoryImageFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryImageToJson(this);

  final int id;
  final String name;
  final String? alternativeText;
  final String? caption;
  final int width;
  final int height;
  final dynamic formats;
  final String hash;
  final String ext;
  final String mime;
  final double size;
  final String url;
  final String? previewUrl;
  final String provider;
  @JsonKey(name: 'provider_metadata')
  final dynamic providerMetadata;
  final DateTime createdAt;
  final DateTime updatedAt;
}

@JsonSerializable()
class CategoryResponseModel {
  CategoryResponseModel({
    required this.data,
    required this.meta,
  });

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryResponseModelToJson(this);

  final List<CategoryModel> data;
  final CategoryMeta meta;
}

@JsonSerializable()
class CategoryMeta {
  CategoryMeta({required this.pagination});

  factory CategoryMeta.fromJson(Map<String, dynamic> json) =>
      _$CategoryMetaFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryMetaToJson(this);

  final CategoryPagination pagination;
}

@JsonSerializable()
class CategoryPagination {
  CategoryPagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory CategoryPagination.fromJson(Map<String, dynamic> json) =>
      _$CategoryPaginationFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryPaginationToJson(this);

  final int page;
  final int pageSize;
  final int pageCount;
  final int total;
}
