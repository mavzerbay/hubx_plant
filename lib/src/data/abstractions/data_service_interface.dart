import 'package:hubx/src/data/models/responses/index.dart';

abstract class IDataService {
  Future<List<QuestionModel>> getQuestions();
  Future<CategoryResponseModel?> getCategories();
}
