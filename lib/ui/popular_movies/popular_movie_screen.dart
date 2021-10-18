import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/data/movies/movie_api_client.dart';
import 'package:movie_apps/ui/_model/movie_item.dart';
import 'package:movie_apps/ui/movie_detail/movie_detail_screen.dart';
import 'package:movie_apps/ui/popular_movies/movieGridWidget/movie_gridview_widget.dart';
import 'package:movie_apps/ui/popular_movies/popular_movie_body.dart';

class PopularMoviesScreen extends StatefulWidget {
  const PopularMoviesScreen({Key? key}) : super(key: key);
  static const String routeName = '/popular';

  @override
  _PopularMoviesScreenState createState() => _PopularMoviesScreenState();
}

class _PopularMoviesScreenState extends State<PopularMoviesScreen> {
  MovieApiClient _movieApiClient = MovieApiClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<MovieItemResponse>?>(
        future: _movieApiClient.getPopularMovies(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.hasData) {
               List<MovieItemResponse> movies = snapshot.data!;
              return MovieGridViewWidget(
                movie: movies.map((e) => MovieItem.fromMovieItemResponse(e)).toList(),
              );
            } else {
              return Text('Empty');
            }
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

