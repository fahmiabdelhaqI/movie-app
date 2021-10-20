import 'package:flutter/material.dart';
import 'package:movie_apps/storage/hive_db.dart';

import 'app.dart';

Future<void> main() async{
  runApp(MyApp());

  await HiveDb().initHiveDatabase();  
}