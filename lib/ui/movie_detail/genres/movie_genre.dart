import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';
import 'package:movie_apps/data/movies/remote/movie_api_client.dart';
import 'package:movie_apps/ui/movie_detail/genres/movie_genre_item.dart';

class MovieGenre extends StatelessWidget {
  final MovieDetailResponse movieDetailResponse;
  const MovieGenre({
    Key? key,
    required this.movieDetailResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: movieDetailResponse.genres!.length,
        itemBuilder: (context, index) {
          GenreResponse genreResponse = movieDetailResponse.genres![index];

          return MovieGenreItem(
            genreResponse: genreResponse,
          );
        },
      ),
    );
  }
}
