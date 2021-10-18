import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_apps/ui/_model/movie_item.dart';

const String boxNameFavoriteMovies = 'Cerret';

class HiveDb {
  Future<void> initHiveDatabase() async {
    // Init Hive Setup
    await Hive.initFlutter();

    // Register Custom Objects
    Hive.registerAdapter(MovieItemAdapter());

    // Open Boxes
    await _openMovieItemBox();
  }

  Future<void> _openMovieItemBox() async {
    await Hive.openBox<MovieItem>(boxNameFavoriteMovies);
  }

  ///=============
  /// Utility Functions

  // ADD by auto-increment key
  void add<T>({required String boxName, required T value}) async {
    await Hive.box<T>(boxName).add(value);
  }

  // Add multiple data with auto-increment key
  void addAll<T>({required String boxName, required List<T> values}) async {
    await Hive.box<T>(boxName).addAll(values);
  }

  // ADD by define manual key or UPDATE existing by key.
  void put<T>(
      {required String boxName, required String? key, required T value}) async {
    await Hive.box<T>(boxName).put(key, value);
  }

  // UPDATE by index
  void putAt<T>(
      {required String boxName, required int index, required T value}) async {
    await Hive.box<T>(boxName).putAt(index, value);
  }

  // UPDATE by entires
  void putAll<T>({
    required String boxName,
    required Map<dynamic, T> values,
  }) async {
    await Hive.box<T>(boxName).putAll(values);
  }

  // DELETE by key
  void delete<T>({
    required String boxName,
    required String? key,
  }) async {
    await Hive.box<T>(boxName).delete(key);
  }

  // DELETE by index
  void deleteAt<T>({
    required String boxName,
    required int index,
  }) async {
    await Hive.box<T>(boxName).deleteAt(index);
  }

  // DELETE by multiple keys
  void deleteMultiple<T>({
    required String boxName,
    required List<String> keys,
  }) async {
    await Hive.box<T>(boxName).deleteAll(keys);
  }

  // DELETE All data
  Future<void> clear<T>({required String boxName}) async {
    await Hive.box<T>(boxName).clear();
  }

  // DELETE box
  void deleteFromDisk<T>({required String boxName}) async {
    await Hive.box<T>(boxName).deleteFromDisk();
  }

  // Get listenable value stream
  ValueListenable<Box<T>> listenable<T>({required String boxName}) {
    return Hive.box<T>(boxName).listenable();
  }

  // Get values
  List<T> list<T>({required String boxName}) {
    return Hive.box<T>(boxName).values.toList();
  }

  // Get single value
  T? get<T>({required String boxName, required String? key}) {
    return Hive.box<T>(boxName).get(key);
  }
}
