import 'package:hive/hive.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';
import '../../data/movies/model/movie_item_response.dart';

part 'movie_item.g.dart';

@HiveType(typeId: 1)
class MovieItem {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String image;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final double rating;

  @HiveField(4)
  final DateTime? releaseDate;

  MovieItem({
    required this.id,
    required this.image,
    required this.title,
    required this.rating,
    required this.releaseDate,
  });

  factory MovieItem.fromMovieItemResponse(MovieItemResponse response) {
    return MovieItem(
      id: response.id ?? 0,
      image: response.posterPath ?? '',
      title: response.title ?? '',
      releaseDate: response.releaseDate == null
          ? null
          : DateTime.parse(response.releaseDate!),
      rating: response.voteAverage ?? 0,
    );
  }

  factory MovieItem.fromMovieDetailResponse(MovieDetailResponse response) {
    return MovieItem(
      id: response.id ?? 0,
      image: response.posterPath ?? '',
      title: response.title ?? '',
      releaseDate: response.releaseDate == null
          ? null
          : DateTime.parse(response.releaseDate!),
      rating: response.voteAverage ?? 0,
    );
  }
}
