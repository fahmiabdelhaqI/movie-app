import 'package:flutter/material.dart';
import 'package:movie_apps/values/textstyle.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({Key? key}) : super(key: key);

  // static const String routeName = '/Profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: text18,
        ),
      ),
    );
  }
}
