import 'package:flutter/material.dart';
import 'package:movie_apps/models/model.dart';
import 'package:movie_apps/models/movie.dart';
import 'package:movie_apps/presentation/details/movie_details.dart';
import 'package:movie_apps/presentation/home/movie/new_movie.dart';
import 'package:movie_apps/presentation/home/movie/populer_movie.dart';

import 'package:movie_apps/values/textstyle.dart';

class FilmWidget extends StatelessWidget {
  const FilmWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: Movie.movieDummy.length,
          itemBuilder: (context, index) {
            final Movie movie = Movie.movieDummy[index];
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 25,
                      child: Text(
                        'New Film',
                        style: titleTextStyle,
                      ),
                    ),
                  ),
                ),
                NewMovie(
                  movie: movie,
                  onButtonPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieDetails()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Populer',
                          style: titleTextStyle,
                        ),
                      ),
                    ),
                    Text(
                      'View All',
                      style: text15,
                    ),
                  ],
                ),
                PopulerMovie(
                  onTapDetails: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieDetails()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Soon',
                        style: titleTextStyle,
                      ),
                    ),
                  ],
                )
              ],
            );
          }),
    );
  }
}
