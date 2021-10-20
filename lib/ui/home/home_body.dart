import 'package:flutter/material.dart';
import 'package:movie_apps/ui/home/components/nowplaying/now_playing_movie_section.dart';
import 'package:movie_apps/ui/home/components/popular/popular_movie_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NowPlayingMovieSectionWidget(),
        PopularMoviesSectionWidget(),
      ],
    );
  }
}
