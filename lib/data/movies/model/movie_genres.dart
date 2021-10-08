import 'package:json_annotation/json_annotation.dart';

part 'movie_genres.g.dart';

@JsonSerializable()
class Genres {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  Genres({required this.id, required this.name});

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}
