import 'package:flutter/material.dart';
import 'package:movie_apps/values/assets.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(imagelogo),
    );
  }
}
