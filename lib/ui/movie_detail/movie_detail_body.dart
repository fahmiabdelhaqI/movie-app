import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';
import 'package:movie_apps/data/movies/model/movie_genres.dart';
import 'package:movie_apps/data/movies/movie_api_client.dart';
import 'package:movie_apps/ui/movie_detail/genres/movie_genre.dart';
import 'package:movie_apps/ui/movie_detail/movie_info/movie_info.dart';
import 'package:movie_apps/ui/movie_detail/product_companies/movie_product_companies.dart';
import 'package:movie_apps/values/textstyle.dart';

class MovieDetailBody extends StatefulWidget {
  final int movieId;

  const MovieDetailBody({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  _MovieDetailBodyState createState() => _MovieDetailBodyState();
}

class _MovieDetailBodyState extends State<MovieDetailBody> {
  MovieApiClient _movieApiClient = MovieApiClient();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieDetailResponse?>(
      future: _movieApiClient.getMovieDetail(widget.movieId.toString()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null) {
            MovieDetailResponse movie = snapshot.data!;

            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.5,
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
              ),
            );
          } else {
            return Text('Data movie not found');
          }
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
