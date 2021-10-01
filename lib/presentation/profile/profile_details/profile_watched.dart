import 'package:flutter/material.dart';
import 'package:movie_apps/values/textstyle.dart';

class ProfileWatched extends StatelessWidget {
  const ProfileWatched({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              '133',
              style: text15,
            ),
            Text(
              'Watched',
              style: text15,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '13',
              style: text15,
            ),
            Text(
              'Started',
              style: text15,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '10',
              style: text15,
            ),
            Text(
              'Favorite',
              style: text15,
            ),
          ],
        ),
      ],
    );
  }
}
