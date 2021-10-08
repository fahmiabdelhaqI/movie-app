import 'package:flutter/material.dart';
import 'package:movie_apps/values/textstyle.dart';

class SearchScreens extends StatelessWidget {
  const SearchScreens({Key? key}) : super(key: key);
  //static const String routeName = '/Search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Search',
          style: text18,
        ),
      ),
    );
  }
}
