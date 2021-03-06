import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:movie_apps/routes/routes.dart';
import 'package:movie_apps/ui/splashscreen/splash_screen.dart';


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
      // initialRoute: MainScreen.routeName,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: Routes.generateRoute,
      builder: EasyLoading.init(),
    );
  }
}