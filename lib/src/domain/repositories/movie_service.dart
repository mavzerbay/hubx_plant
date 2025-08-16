import 'package:hubx/src/app/di/locator.dart';
import 'package:hubx/src/app/network/clients/movie_client.dart';
import 'package:hubx/src/data/abstractions/movie_service_interface.dart';
import 'package:hubx/src/data/models/base/base_response_model.dart';
import 'package:hubx/src/data/models/responses/index.dart';

class MovieService extends IMovieService {
  MovieService._();

  static final IMovieService _instance = MovieService._();
  static IMovieService get instance => _instance;

  final MovieClient _client = locator<MovieClient>();

  @override
  Future<BaseResponseModelList<MovieResponseModel>> getFavorites() {
    return _client.getFavorites();
  }

  @override
  Future<BaseResponseModel<MovieListResponseModel>> getMovies({int page = 1}) {
    return _client.getMovies(page);
  }

  @override
  Future<BaseResponseModel<MovieFavoriteResponseModel>> toggleFavorite(
    String movieId,
  ) {
    return _client.toggleFavorite(movieId);
  }
}
