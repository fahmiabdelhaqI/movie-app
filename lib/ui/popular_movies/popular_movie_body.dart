import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/data/movies/movie_api_client.dart';
import 'package:movie_apps/values/textstyle.dart';

class PopularMovieBody extends StatelessWidget {
  const PopularMovieBody({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieItemResponse movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 50,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('$imagebaseurl${movie.posterPath}'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Text(
          '${movie.title}',
          maxLines: 2,
          style: text18,
        ),
      ],
    );
  }
}
