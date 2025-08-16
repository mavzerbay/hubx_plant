import 'dart:convert';
import 'dart:io';

import 'package:hubx/src/app/di/locator.dart';
import 'package:hubx/src/app/network/clients/data_client.dart';
import 'package:hubx/src/data/abstractions/data_service_interface.dart';
import 'package:hubx/src/data/models/responses/index.dart';

class DataService extends IDataService {
  DataService._();

  static final IDataService _instance = DataService._();
  static IDataService get instance => _instance;

  final DataClient _client = locator<DataClient>();

  @override
  Future<CategoryResponseModel?> getCategories() async {
    final categoryResponse = await _client.getCategories();
    // Data string geldiği için böyle bir kod eklenmiştir.
    if (categoryResponse.response.statusCode == HttpStatus.ok) {
      final data = categoryResponse.data;
      if (data is String) {
        return CategoryResponseModel.fromJson(
          jsonDecode(data) as Map<String, dynamic>,
        );
      } else if (data is Map) {
        return CategoryResponseModel.fromJson(
          data as Map<String, dynamic>,
        );
      }
    }
    return null;
  }

  @override
  Future<List<QuestionModel>> getQuestions() async {
    final questionResponse = await _client.getQuestions();
    if (questionResponse.response.statusCode == HttpStatus.ok) {
      final data = questionResponse.data;
      if (data is List) {
        return data
            .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else if (data is String) {
        return (jsonDecode(data) as List)
            .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
            .toList();
      }
    }
    return [];
  }
}
