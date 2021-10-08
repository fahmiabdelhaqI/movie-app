import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';
import 'package:movie_apps/values/textstyle.dart';

class MovieGenreItem extends StatelessWidget {
  final GenreResponse genreResponse;
  const MovieGenreItem({Key? key, required this.genreResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 3.5,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '${genreResponse.name}',
                style: text15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
