import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_response.g.dart';

@JsonSerializable()
class MovieDetailResponse {
  @JsonKey(name: 'adult')
  final bool? adult;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollectionResponse? belongsToCollection;

  @JsonKey(name: 'budget')
  final int? budget;

  @JsonKey(name: 'genres')
  final List<GenreResponse>? genres;

  @JsonKey(name: 'homepage')
  final String? homepage;

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'imgdb_id')
  final String? imdbId;

  @JsonKey(name: 'original_language')
  final String? originalLanguage;

  @JsonKey(name: 'original_title')
  final String? originalTitle;

  @JsonKey(name: 'overview')
  final String? overview;

  @JsonKey(name: 'popularity')
  final double? popularity;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'production_companies')
  final List<ProductionCompanyResponse>? productionCompanies;

  @JsonKey(name: 'production_countries')
  final List<ProductionCountriesResponse>? productionCountries;

  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @JsonKey(name: 'revenue')
  final int? revenue;

  @JsonKey(name: 'runtime')
  final int? runtime;

  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguagesResponse>? spokenLanguages;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'tagline')
  final String? tagline;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'video')
  final bool? video;

  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  @JsonKey(name: 'vote_count')
  final int? voteCount;

  MovieDetailResponse({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailResponseFromJson(json);
}

@JsonSerializable()
class SpokenLanguagesResponse {
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;

  @JsonKey(name: 'name')
  final String? name;

  SpokenLanguagesResponse({
    this.iso6391,
    this.name,
  });

  factory SpokenLanguagesResponse.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguagesResponseFromJson(json);
}

@JsonSerializable()
class ProductionCountriesResponse {
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;

  @JsonKey(name: 'name')
  final String? name;

  ProductionCountriesResponse({
    this.iso31661,
    this.name,
  });

  factory ProductionCountriesResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountriesResponseFromJson(json);
}

@JsonSerializable()
class GenreResponse {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'name')
  final String? name;

  GenreResponse({
    this.id,
    this.name,
  });

  factory GenreResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreResponseFromJson(json);
}

@JsonSerializable()
class ProductionCompanyResponse {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'logo_path')
  final String? logoPath;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'origin_country')
  final String? originCountry;

  ProductionCompanyResponse({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  factory ProductionCompanyResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyResponseFromJson(json);
}

@JsonSerializable()
class BelongsToCollectionResponse {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'logo_path')
  final String? logoPath;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  BelongsToCollectionResponse({
    this.id,
    this.logoPath,
    this.name,
    this.backdropPath,
  });

  factory BelongsToCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionResponseFromJson(json);
}
