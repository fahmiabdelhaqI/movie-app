import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:movie_apps/storage/hive_db.dart';

import '../../../ui/_model/movie_item.dart';

abstract class MoviesLocalDataSource {
  void addToFavorite(MovieItem movie);

  void putToFavorite(String key, MovieItem movie);

  void deleteFromFavorite(String key);

  List<MovieItem> listFavorite();

  MovieItem getFavorite(String key);

  ValueListenable<Box<MovieItem>> listenable();
}

class MoviesLocalDataSourceImpl implements MoviesLocalDataSource {
  HiveDb hiveDb = HiveDb();

  @override
  void addToFavorite(MovieItem movie) {
    hiveDb.add<MovieItem>(boxName: boxNameFavoriteMovies, value: movie);
  }

  @override
  void deleteFromFavorite(String key) {
    hiveDb.delete<MovieItem>(boxName: boxNameFavoriteMovies, key: key);
  }

  @override
  MovieItem getFavorite(String key) {
    return hiveDb.get(boxName: boxNameFavoriteMovies, key: key);
  }

  @override
  List<MovieItem> listFavorite() {
    return hiveDb.list(boxName: boxNameFavoriteMovies);
  }

  @override
  ValueListenable<Box<MovieItem>> listenable() {
    return hiveDb.listenable(boxName: boxNameFavoriteMovies);
  }

  @override
  void putToFavorite(String key, MovieItem movie) {
    hiveDb.put(boxName: boxNameFavoriteMovies, key: key, value: movie);
  }
}