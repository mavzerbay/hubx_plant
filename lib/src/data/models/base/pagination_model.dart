import 'package:json_annotation/json_annotation.dart';

part 'pagination_model.g.dart';

@JsonSerializable()
class PaginationModel {
  PaginationModel({
    required this.currentPage,
    required this.totalCount,
    required this.perPage,
    required this.maxPage,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);

  final int currentPage;
  final int totalCount;
  final int perPage;
  final int maxPage;

  Map<String, dynamic> toJson() => _$PaginationModelToJson(this);
}
