import 'package:flutter/material.dart';
import 'package:movie_apps/values/textstyle.dart';

class FavoriteScreens extends StatelessWidget {
  const FavoriteScreens({Key? key}) : super(key: key);
  //static const String routeName = '/Favorite';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Favorite',
          style: text18,
        ),
      ),
    );
  }
}
