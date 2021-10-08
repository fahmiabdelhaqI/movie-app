import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/data/movies/movie_api_client.dart';
import 'package:movie_apps/ui/_reusable/movie_horizontal_listview_widget.dart';
import 'package:movie_apps/ui/popular_movies/popular_movie_screen.dart';
import 'package:movie_apps/values/textstyle.dart';

class PopularMoviesSectionWidget extends StatefulWidget {
  const PopularMoviesSectionWidget({Key? key}) : super(key: key);

  @override
  _PopularMoviesSectionWidgetState createState() =>
      _PopularMoviesSectionWidgetState();
}

class _PopularMoviesSectionWidgetState
    extends State<PopularMoviesSectionWidget> {
  final MovieApiClient _movieApiClient = MovieApiClient();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MovieItemResponse>?>(
      future: _movieApiClient.getPopularMovies(),
      builder: (context, AsyncSnapshot<List<MovieItemResponse>?> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null) {
            List<MovieItemResponse> movies = snapshot.data!;

            return Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, PopularMoviesScreen.routeName);
                      },
                      child: const Text('See All'),
                    ),
                  ],
                ),
                MovieHorizontalListViewWidget(
                  movieItems: movies,
                ),
              ],
            );
          } else {
            return Text(
              'Error',
              style: text15,
            );
          }
        }

        return const PlayStoreShimmer();
      },
    );
  }
}
