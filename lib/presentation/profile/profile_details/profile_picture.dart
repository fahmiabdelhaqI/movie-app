import 'package:flutter/material.dart';
import 'package:movie_apps/values/textstyle.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://thumbs.dreamstime.com/z/satisfied-young-person-holding-guitar-7350024.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            'Kemal Kelana Bima',
            style: titleTextStyle,
          ),
        ),
        Center(
          child: Text(
            'kemalbima23@gmail.com',
            style: text15,
          ),
        ),
      ],
    );
  }
}
