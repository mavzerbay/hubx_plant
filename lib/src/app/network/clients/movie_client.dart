import 'package:dio/dio.dart';
import 'package:hubx/src/data/models/base/base_response_model.dart';
import 'package:hubx/src/data/models/responses/index.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_client.g.dart';

@RestApi()
abstract class MovieClient {
  factory MovieClient(Dio dio, {String baseUrl}) = _MovieClient;

  @GET('/movie/list')
  Future<BaseResponseModel<MovieListResponseModel>> getMovies(
    @Query('page') int page,
  );

  @GET('/movie/favorites')
  Future<BaseResponseModelList<MovieResponseModel>> getFavorites();

  @POST('/movie/favorite/{movieId}')
  Future<BaseResponseModel<MovieFavoriteResponseModel>> toggleFavorite(
    @Path('movieId') String movieId,
  );
}
