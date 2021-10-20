import 'package:flutter/material.dart';

import 'movie_detail_body.dart';

class MovieDetailArguments {
  final int movieId;
  final String movieName;

  MovieDetailArguments({
    required this.movieId,
    required this.movieName,
  });
}

class MovieDetailScreen extends StatelessWidget {
  final MovieDetailArguments args;
  const MovieDetailScreen({
    Key? key,
    required this.args,
  }) : super(key: key);
  static const String routeName = '/detail_movie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(args.movieName),
      // ),
      body: MovieDetailBody(movieId: args.movieId),
    );
  }
}
