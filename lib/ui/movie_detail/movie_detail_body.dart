import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:movie_apps/data/movies/local/movie_local_data_source.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';
import 'package:movie_apps/data/movies/remote/movie_api_client.dart';
import 'package:movie_apps/ui/_model/movie_item.dart';
import 'package:movie_apps/ui/_reusable/sliver/sliver_view_widget.dart';
import 'package:movie_apps/ui/movie_detail/genres/movie_genre.dart';
import 'package:movie_apps/ui/movie_detail/movie_info/movie_info.dart';
import 'package:movie_apps/ui/movie_detail/product_companies/movie_product_companies.dart';
import 'package:movie_apps/values/textstyle.dart';

class MovieDetailBody extends StatefulWidget {
  final int movieId;

  const MovieDetailBody({Key? key, required this.movieId}) : super(key: key);

  @override
  _MovieDetailBodyState createState() => _MovieDetailBodyState();
}

class _MovieDetailBodyState extends State<MovieDetailBody> {
  MovieApiClient _movieApiClient = MovieApiClient();
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
                  title:  '',
                  imageUrl: '$imagebaseurl${movie.posterPath}',
                  body: _buildBody(context, movie),
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

  Column _buildBody(BuildContext context, MovieDetailResponse movie) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage('$imagebaseurl${movie.posterPath}'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        // CachedNetworkImage(
        //   imageUrl: '$imagebaseurl${movie.posterPath}',
        //   fit: BoxFit.cover,
        //   width: double.infinity,
        //   height: 250,
        // ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 30,
          child: Text(
            '${movie.originalTitle}',
            style: text18,
          ),
        ),

        SizedBox(
          height: 30,
          child: MovieGenre(
            movieDetailResponse: movie,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 6,
          child: Text(
            '${movie.overview}',
            style: text15,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rateMovie) {
            _movieApiClient.rateMovie(
                movieId: movie.id.toString(), rating: rateMovie);
            print(rateMovie);
          },
        ),
        InfoMovieWidget(movie: movie),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'PRODUCTION COMPANY ',
              style: text18,
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: MovieProductCompaniesWidget(
            movieDetailResponse: movie,
          ),
        ),
      ],
    );
  }
}
