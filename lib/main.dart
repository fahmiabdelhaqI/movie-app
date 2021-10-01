import 'package:flutter/material.dart';
import 'package:movie_apps/presentation/login/login.dart';
import 'package:movie_apps/presentation/main_screen.dart';
import 'package:movie_apps/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Movie',
      theme: ThemeData(
        canvasColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      // home: const LoginPage(),
      initialRoute: MainScreen.routeName,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
