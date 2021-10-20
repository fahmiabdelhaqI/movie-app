import 'package:dio/dio.dart';
import 'package:movie_apps/data/auth/auth_api_client.dart';
import 'package:movie_apps/data/dio_logging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    hide Options;
import 'package:movie_apps/data/movies/model/list_response.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';

import '../model/movie_detail_response.dart';

const String baseurl = 'https://api.themoviedb.org/3';
const String imagebaseurl = 'https://image.tmdb.org/t/p/w500';
const String apikey = '13445a109ec0ac0e1962c19e1c361432';
const String language = 'en-US';

class MovieApiClient {
  final storage = const FlutterSecureStorage();

  final Dio _dio = Dio(BaseOptions(
    baseUrl: baseurl,
    connectTimeout: 30000,
    sendTimeout: 30000,
  ))
    ..interceptors.add(Logging());

  //TODO:GET LIST MOVIE POPULAR

  Future<List<MovieItemResponse>?> getPopularMovies() async {
    List<MovieItemResponse>? movies;

    try {
      Response response = await _dio.get('/movie/popular', queryParameters: {
        'api_key': apikey,
        'language': language,
      });

      ListResponse<MovieItemResponse> moviesResponse =
          ListResponse<MovieItemResponse>.fromJson(
              response.data,
              (json) =>
                  MovieItemResponse.fromJson(json as Map<String, dynamic>));
      movies = moviesResponse.results;
    } on DioError catch (e) {
      if (e.response != null) {
        print('Error(getPopularMovies): ${e.response!.statusCode}');
      } else {
        print('Something went wrong : ${e.message}');
      }
    }
    return movies;
  }

  //TODO: GETNOW PLAYING MOVIE
  Future<List<MovieItemResponse>?> getNowPlayingMovie() async {
    List<MovieItemResponse>? movies;
    try {
      Response response = await _dio
          .get('/movie/now_playing?api_key=$apikey&language=$language');

      ListResponse<MovieItemResponse> moviesResponse =
          ListResponse<MovieItemResponse>.fromJson(
              response.data,
              (json) =>
                  MovieItemResponse.fromJson(json as Map<String, dynamic>));
      movies = moviesResponse.results;
    } on DioError catch (e) {
      if (e.response != null) {
        print('Error: getNowPlayingMovie');
        print('STATUS : ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Unexpected error!');
        print('e.message');
      }
    }
    return movies;
  }

  Future<MovieDetailResponse?> getMovieDetail(String movieId) async {
    MovieDetailResponse? movieDetail;

    try {
      Response response =
          await _dio.get('/movie/$movieId?api_key=$apikey&language=$language');

      MovieDetailResponse movieDetailResponse = MovieDetailResponse.fromJson(
        response.data,
      );

      movieDetail = movieDetailResponse;
    } on DioError catch (e) {
      if (e.response != null) {
        print('Error: getMovieDetail');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.headers}');
      } else {
        print('Unexpected error!');
        print(e.message);
      }
    }
    return movieDetail;
  }

  Future<bool?> rateMovie(
      {required String movieId, required double rating}) async {
    try {
      String? guestSessionId = await storage.read(key: keyGuestSessionId);

      Response response = await _dio.post(
        '/movie/$movieId/rating',
        options: Options(
          headers: {
            Headers.contentTypeHeader: 'application/json',
          },
        ),
        queryParameters: {
          'api_key': apikey,
          'guest_session_id': guestSessionId,
        },
        data: {
          'value': rating,
        },
      );

      print("RESPONSE RATE MOVIE: ${response.data}");

      return true;
    } on DioError catch (e) {
      if (e.response != null) {
        print('Error: rateMovie');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Unexpected error!');
        print(e.message);
      }
    }

    return false;
  }
}
