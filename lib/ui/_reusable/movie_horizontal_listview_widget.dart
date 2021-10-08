import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/ui/_reusable/movie_horizontal_listitem_widget.dart';
import 'package:movie_apps/ui/movie_detail/movie_detail_screen.dart';

class MovieHorizontalListViewWidget extends StatelessWidget {
  final List<MovieItemResponse> movieItems;
  const MovieHorizontalListViewWidget({
    Key? key,
    required this.movieItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 264,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return MovieHorizontalListItemWidget(
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
