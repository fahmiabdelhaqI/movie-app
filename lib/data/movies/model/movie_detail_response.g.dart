// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailResponse _$MovieDetailResponseFromJson(Map<String, dynamic> json) {
  return MovieDetailResponse(
    adult: json['adult'] as bool?,
    backdropPath: json['backdrop_path'] as String?,
    belongsToCollection: json['belongs_to_collection'] == null
        ? null
        : BelongsToCollectionResponse.fromJson(
            json['belongs_to_collection'] as Map<String, dynamic>),
    budget: json['budget'] as int?,
    genres: (json['genres'] as List<dynamic>?)
        ?.map((e) => GenreResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    homepage: json['homepage'] as String?,
    id: json['id'] as int?,
    imdbId: json['imgdb_id'] as String?,
    originalLanguage: json['original_language'] as String?,
    originalTitle: json['original_title'] as String?,
    overview: json['overview'] as String?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    posterPath: json['poster_path'] as String?,
    productionCompanies: (json['production_companies'] as List<dynamic>?)
        ?.map((e) =>
            ProductionCompanyResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    productionCountries: (json['production_countries'] as List<dynamic>?)
        ?.map((e) =>
            ProductionCountriesResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    releaseDate: json['release_date'] as String?,
    revenue: json['revenue'] as int?,
    runtime: json['runtime'] as int?,
    spokenLanguages: (json['spoken_languages'] as List<dynamic>?)
        ?.map(
            (e) => SpokenLanguagesResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: json['status'] as String?,
    tagline: json['tagline'] as String?,
    title: json['title'] as String?,
    video: json['video'] as bool?,
    voteAverage: (json['vote_average'] as num?)?.toDouble(),
    voteCount: json['vote_count'] as int?,
  );
}

Map<String, dynamic> _$MovieDetailResponseToJson(
        MovieDetailResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'belongs_to_collection': instance.belongsToCollection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imgdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'production_companies': instance.productionCompanies,
      'production_countries': instance.productionCountries,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spoken_languages': instance.spokenLanguages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

SpokenLanguagesResponse _$SpokenLanguagesResponseFromJson(
    Map<String, dynamic> json) {
  return SpokenLanguagesResponse(
    iso6391: json['iso_639_1'] as String?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$SpokenLanguagesResponseToJson(
        SpokenLanguagesResponse instance) =>
    <String, dynamic>{
      'iso_639_1': instance.iso6391,
      'name': instance.name,
    };

ProductionCountriesResponse _$ProductionCountriesResponseFromJson(
    Map<String, dynamic> json) {
  return ProductionCountriesResponse(
    iso31661: json['iso_3166_1'] as String?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$ProductionCountriesResponseToJson(
        ProductionCountriesResponse instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
    };

GenreResponse _$GenreResponseFromJson(Map<String, dynamic> json) {
  return GenreResponse(
    id: json['id'] as int?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$GenreResponseToJson(GenreResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ProductionCompanyResponse _$ProductionCompanyResponseFromJson(
    Map<String, dynamic> json) {
  return ProductionCompanyResponse(
    id: json['id'] as int?,
    logoPath: json['logo_path'] as String?,
    name: json['name'] as String?,
    originCountry: json['origin_country'] as String?,
  );
}

Map<String, dynamic> _$ProductionCompanyResponseToJson(
        ProductionCompanyResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };

BelongsToCollectionResponse _$BelongsToCollectionResponseFromJson(
    Map<String, dynamic> json) {
  return BelongsToCollectionResponse(
    id: json['id'] as int?,
    logoPath: json['logo_path'] as String?,
    name: json['name'] as String?,
    backdropPath: json['backdrop_path'] as String?,
  );
}

Map<String, dynamic> _$BelongsToCollectionResponseToJson(
        BelongsToCollectionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'backdrop_path': instance.backdropPath,
    };
