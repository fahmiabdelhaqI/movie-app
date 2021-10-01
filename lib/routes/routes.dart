import 'package:flutter/material.dart';
import 'package:movie_apps/presentation/main_screen.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainScreen.routeName:
        return MaterialPageRoute(builder: (_) => MainScreen());
    }
  }
}
