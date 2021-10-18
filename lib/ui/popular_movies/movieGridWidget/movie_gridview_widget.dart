import 'package:flutter/material.dart';
import 'package:movie_apps/ui/_model/movie_item.dart';
import 'package:movie_apps/ui/movie_detail/movie_detail_screen.dart';
import 'package:movie_apps/ui/popular_movies/popular_movie_body.dart';


class MovieGridViewWidget extends StatelessWidget {
  final List<MovieItem> movie;

  const MovieGridViewWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
      ),
      itemCount: movie.length,
      itemBuilder: (context, index) {
        return MovieGridItemWidget(
          onTap: () {
            Navigator.pushNamed(
              context,
              MovieDetailScreen.routeName,
              arguments: MovieDetailArguments(
                movieId: movie[index].id,
                movieName: movie[index].title,
              ),
            );
          },
          movie: movie[index],
        );
      },
    );
  }
}
