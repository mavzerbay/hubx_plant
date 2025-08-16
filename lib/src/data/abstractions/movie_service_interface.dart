import 'package:hubx/src/data/models/base/base_response_model.dart';
import 'package:hubx/src/data/models/responses/index.dart';

abstract class IMovieService {
  Future<BaseResponseModel<MovieListResponseModel>> getMovies({
    int page = 1,
  });
  Future<BaseResponseModelList<MovieResponseModel>> getFavorites();
  Future<BaseResponseModel<MovieFavoriteResponseModel>> toggleFavorite(
    String movieId,
  );
}
