import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:movie_apps/data/movies/local/movie_detail.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/data/movies/movie_api_client.dart';
import 'package:movie_apps/presentation/details/movie_details.dart';

import '../../../ui/_model/movie_item.dart';

abstract class MoviesRemoteDataSource {
  Future<List<MovieItem>?> listPopularMovies();
  Future<List<MovieItem>?> listNowPlayingMovie();
  Future<MovieDetail?> detailMovie(String id);
  Future<List<MovieItem>?> listSearchMovies({required String keyword});
}

class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  MovieApiClient apiClient = MovieApiClient();

  @override
  Future<MovieDetail?> detailMovie(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<MovieItem>?> listNowPlayingMovie() async {
    try {
      List<MovieItemResponse>? responses = await apiClient.getPopularMovies();
      if (responses != null) {
        return responses
            .map((e) => MovieItem.fromMovieItemResponse(e))
            .toList();
      }
    } catch (error) {
      print('Error: detailMovie => $error');
    }
    return null;
  }

  @override
  Future<List<MovieItem>?> listPopularMovies() {
    // TODO: implement listPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MovieItem>?> listSearchMovies({required String keyword}) {
    // TODO: implement listSearchMovies
    throw UnimplementedError();
  }
}
