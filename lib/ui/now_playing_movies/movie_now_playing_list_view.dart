import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/ui/movie_detail/movie_detail_screen.dart';
import 'package:movie_apps/ui/now_playing_movies/movie_now_playing_horizontal_list_item.dart';

class MovieNowPlayingListViewWidget extends StatelessWidget {
  final List<MovieItemResponse> movieItems;
  const MovieNowPlayingListViewWidget({
    Key? key,
    required this.movieItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return MovieNowPlayingHorizontalListItemWidget(
            movieItemResponse: movieItems[index],
            onTap: () {
              Navigator.pushNamed(
                context,
                MovieDetailScreen.routeName,
                arguments: MovieDetailArguments(
                  movieId: movieItems[index].id ?? 0,
                  movieName: movieItems[index].title ?? '',
                ),
              );
            },
          );
        },
      ),
    );
  }
}
