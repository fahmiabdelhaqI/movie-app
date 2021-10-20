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
    hiveDb.add<MovieItem>(boxName: boxnamefavoritemovies, value: movie);
  }

  @override
  void deleteFromFavorite(String key) {
    hiveDb.delete<MovieItem>(boxName: boxnamefavoritemovies, key: key);
  }

  @override
  MovieItem getFavorite(String key) {
    return hiveDb.get(boxName: boxnamefavoritemovies, key: key);
  }

  @override
  List<MovieItem> listFavorite() {
    return hiveDb.list(boxName: boxnamefavoritemovies);
  }

  @override
  ValueListenable<Box<MovieItem>> listenable() {
    return hiveDb.listenable(boxName: boxnamefavoritemovies);
  }

  @override
  void putToFavorite(String key, MovieItem movie) {
    hiveDb.put(boxName: boxnamefavoritemovies, key: key, value: movie);
  }
}