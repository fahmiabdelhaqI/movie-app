import 'package:json_annotation/json_annotation.dart';
import 'package:movie_apps/data/movies/model/movie_genres.dart';

part 'list_genre.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class ListGenre<T> {
  @JsonKey(name: 'genres')
  List<Genres> genres;

  ListGenre({required this.genres});

  factory ListGenre.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ListGenreFromJson(json, fromJsonT);
}
