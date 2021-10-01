import 'package:flutter/material.dart';
import 'package:movie_apps/models/dummies_data.dart';
import 'package:movie_apps/models/model.dart';
import 'package:movie_apps/presentation/details/detail/cast_widget.dart';
import 'package:movie_apps/presentation/details/detail/description.dart';
import 'package:movie_apps/presentation/details/detail/trailer_movie.dart';
import 'package:movie_apps/presentation/details/detail/video_player.dart';
import 'package:movie_apps/values/textstyle.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('START-UP'),
        ),
        actions: const [
          Icon(
            Icons.share,
            color: Colors.red,
            size: 25,
          ),
        ],
      ),
      body: ListView(
        children: [
          const VideoPlayer(),
          const SizedBox(
            height: 15,
          ),
          const Description(),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'The Cast',
              style: text15,
            ),
          ),
          SizedBox(
            height: 140,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                vertical: 22,
                horizontal: 14,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: Cast.castDummies.length,
              separatorBuilder: (context, index) => SizedBox(width: 8),
              itemBuilder: (context, index) {
                Cast cast = Cast.castDummies[index];
                return Column(
                  children: [
                    CastsMovie(
                      image: cast.image,
                      // padding: 4,
                    ),
                    Text(
                      cast.name,
                      style: text15,
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Trailer',
              style: text15,
            ),
          ),
          const TrailerMovie(
            imageUrls:
                'https://larepublica.pe/resizer/z_mB81hdEsR6OrotwA_CS5yXqm8=/1200x660/top/cloudfront-us-east-1.images.arcpublishing.com/gruporepublica/HY7YPUJPBZGQHHRAS5IQAU4KFE.jpg',
          ),
        ],
      ),
    );
  }
}
