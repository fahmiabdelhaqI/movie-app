import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';
import 'package:movie_apps/values/textstyle.dart';

class InfoMovieWidget extends StatelessWidget {
  const InfoMovieWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieDetailResponse movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                '${movie.status}',
                style: text18,
              ),
            ),
            Text(
              'Status',
              style: text15,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
          child: VerticalDivider(
            color: Colors.white,
            thickness: 2,
            indent: 10,
            endIndent: 0,
            width: 10,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                '${movie.releaseDate}',
                style: text18,
              ),
            ),
            Text(
              'Release Date',
              style: text15,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
          child: VerticalDivider(
            color: Colors.white,
            thickness: 2,
            indent: 10,
            endIndent: 0,
            width: 10,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                '${movie.voteAverage}',
                style: text18,
              ),
            ),
            Text(
              'Rating',
              style: text18,
            ),
          ],
        ),
      ],
    );
  }
}
