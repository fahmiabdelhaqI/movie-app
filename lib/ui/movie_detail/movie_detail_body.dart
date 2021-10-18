import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:movie_apps/data/movies/local/movie_local_data_source.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';

import 'package:movie_apps/data/movies/movie_api_client.dart';
import 'package:movie_apps/ui/_model/movie_item.dart';
import 'package:movie_apps/ui/movie_detail/genres/movie_genre.dart';
import 'package:movie_apps/ui/movie_detail/movie_info/movie_info.dart';
import 'package:movie_apps/ui/movie_detail/product_companies/movie_product_companies.dart';
import 'package:movie_apps/ui/popular_movies/sliver/sliver_view_widget.dart';
import 'package:movie_apps/values/textstyle.dart';

class MovieDetailBody extends StatefulWidget {
  final int movieId;

  const MovieDetailBody({Key? key, required this.movieId}) : super(key: key);

  @override
  _MovieDetailBodyState createState() => _MovieDetailBodyState();
}

class _MovieDetailBodyState extends State<MovieDetailBody> {
  final MovieApiClient _movieApiClient = MovieApiClient();
 MoviesLocalDataSource moviesLocalDataSource = MoviesLocalDataSourceImpl();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieDetailResponse?>(
      future: _movieApiClient.getMovieDetail(widget.movieId.toString()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null) {
            MovieDetailResponse movie = snapshot.data!;

            return ValueListenableBuilder<Box<MovieItem>>(
              valueListenable: moviesLocalDataSource.listenable(),
              builder: (context, box, child) {
                List<int> favoritedIds = box.values.map((e) => e.id).toList();
                bool isFavorite = favoritedIds.contains(movie.id);

                return SliverViewWidget(
                  title: movie.title ?? '',
                  imageUrl: '$imagebaseurl${movie.posterPath}',
                  body: _buildBody(movie),
                  onFavoritePressed: () {
                    if (isFavorite) {
                      moviesLocalDataSource.deleteFromFavorite(
                        movie.id.toString(),
                      );
                    } else {
                      moviesLocalDataSource.putToFavorite(
                        movie.id.toString(),
                        MovieItem.fromMovieDetailResponse(movie),
                      );
                    }
                  },
                  isFavorite: isFavorite,
                );
              },
            );
          } else {
            return Text('Data movie not found.');
          }
        }

        return CircularProgressIndicator();
      },
    );
  }

  Column _buildBody(MovieDetailResponse movie) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '${movie.title}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text(
              '${movie.runtime} minutes',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            Expanded(child: SizedBox.shrink()),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amberAccent,
                  size: 12,
                ),
                SizedBox(width: 4),
                Text(
                  '${movie.voteAverage}',
                  style: TextStyle(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 6,
          children: movie.genres
                  ?.map((e) => Chip(label: Text(e.name ?? '')))
                  .toList() ??
              [],
        ),
        SizedBox(height: 16),
        Text(
          '${movie.overview}',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 54,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: movie.productionCompanies
                    ?.map(
                      (e) => CachedNetworkImage(
                        imageUrl: "$imagebaseurl${e.logoPath}",
                        height: 54,
                      ),
                    )
                    .toList() ??
                [],
          ),
        ),
        Text(
          '${movie.productionCompanies?.map((e) => e.name)}',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

