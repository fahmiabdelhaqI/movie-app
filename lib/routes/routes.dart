import 'package:flutter/material.dart';
import 'package:movie_apps/dashboard/dashboard_screen.dart';

import 'package:movie_apps/ui/login/login_screen.dart';
import 'package:movie_apps/ui/movie_detail/movie_detail_screen.dart';
import 'package:movie_apps/ui/popular_movies/popular_movie_screen.dart';

import 'package:movie_apps/ui/splashscreen/splash_screen.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case MainScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => MainScreen());
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case DashboardScreen.routeName:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());

      case PopularMoviesScreen.routeName:
        return MaterialPageRoute(builder: (_) => const PopularMoviesScreen());

      // case ProfileScreens.routeName:
      //   return MaterialPageRoute(builder: (_) => const ProfileScreens());

      case MovieDetailScreen.routeName:
        var movieArgs = settings.arguments as MovieDetailArguments;
        return MaterialPageRoute(
          builder: (_) => MovieDetailScreen(args: movieArgs),
        );
    }
  }
}
