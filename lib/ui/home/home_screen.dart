import 'package:flutter/material.dart';
import 'package:movie_apps/ui/home/home_body.dart';
import 'package:movie_apps/ui/login/login_screen.dart';
import 'package:movie_apps/values/textstyle.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie App',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            icon: Icon(Icons.login),
          ),
        ],
      ),
      body: const HomeBody(),
    );
  }
}
