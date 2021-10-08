// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListGenre<T> _$ListGenreFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return ListGenre<T>(
    genres: (json['genres'] as List<dynamic>)
        .map((e) => Genres.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ListGenreToJson<T>(
  ListGenre<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
