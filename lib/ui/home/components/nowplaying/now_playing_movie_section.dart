import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/data/movies/remote/movie_api_client.dart';
import 'package:movie_apps/data/movies/remote/movie_remote_data_source.dart';
import 'package:movie_apps/ui/_model/movie_item.dart';
import 'package:movie_apps/ui/now_playing_movies/movie_now_playing_list_view.dart';
import 'package:movie_apps/values/textstyle.dart';

class NowPlayingMovieSectionWidget extends StatefulWidget {
  const NowPlayingMovieSectionWidget({Key? key}) : super(key: key);

  @override
  _NowPlayingMovieSectionWidgetState createState() =>
      _NowPlayingMovieSectionWidgetState();
}

class _NowPlayingMovieSectionWidgetState
    extends State<NowPlayingMovieSectionWidget> {
      MoviesRemoteDataSource _remoteDataSource = MoviesRemoteDataSourceImpl();
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MovieItem>?>(
      future: _remoteDataSource.listNowPlayingMovies(),
      builder: (context, AsyncSnapshot<List<MovieItem>?> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null) {
            List<MovieItem> movieItems = snapshot.data!;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Now Playing',
                  style: titleTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                MovieNowPlayingListViewWidget(movieItems: movieItems),
              ],
            );
          }
        }
        return const PlayStoreShimmer();
      },
    );
  }
}
