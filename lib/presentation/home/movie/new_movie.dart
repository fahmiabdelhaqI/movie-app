import 'package:flutter/material.dart';
import 'package:movie_apps/models/model.dart';
import 'package:movie_apps/values/textstyle.dart';

class NewMovie extends StatelessWidget implements PreferredSizeWidget {
  const NewMovie({
    Key? key,
    required this.movie,
    required this.onButtonPressed,
    this.toolbarHeight = kToolbarHeight,
  }) : super(key: key);

  final Movie movie;
  final double toolbarHeight;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: NetworkImage(movie.imageUrl), fit: BoxFit.cover),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'You started wacthing : ',
                style: text15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                movie.name,
                style: textHeading,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    movie.country + '|',
                    style: text13,
                  ),
                ),
                // const VerticalDivider(
                //   thickness: 5,
                //   color: Colors.white,
                // ),
                Text(
                  movie.year + '|',
                  style: text13,
                ),
                // const VerticalDivider(
                //   thickness: 15,
                //   color: Colors.white,
                // ),
                Text(
                  movie.genre,
                  style: text13,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: RichText(
                text: TextSpan(
                  style: titleTextStyle,
                  children: const [
                    TextSpan(text: 'Watching : '),
                    TextSpan(text: '79 %'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: onButtonPressed,
              child: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                primary: Colors.red.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
