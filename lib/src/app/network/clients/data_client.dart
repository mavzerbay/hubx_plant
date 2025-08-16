import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'data_client.g.dart';

@RestApi()
abstract class DataClient {
  factory DataClient(Dio dio, {String baseUrl}) = _DataClient;

  @GET('/getQuestions')
  Future<HttpResponse<dynamic>> getQuestions();

  @GET('/getCategories')
  Future<HttpResponse<dynamic>> getCategories();
}
