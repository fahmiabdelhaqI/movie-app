import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/data/movies/remote/movie_api_client.dart';
import 'package:movie_apps/ui/_model/movie_item.dart';
import 'package:movie_apps/values/textstyle.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MovieNowPlayingHorizontalListItemWidget extends StatelessWidget {
   final MovieItem movie;
  final VoidCallback onTap;
  const MovieNowPlayingHorizontalListItemWidget({
    Key? key,
    required this.movie,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 350,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      '$imagebaseurl${movie.image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  width: 150,
                  child: Text(
                    '${movie.title}',
                    maxLines: 2,
                    style: titleTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(5.0),
                //   child: Text(
                //     'Release Date: ',
                //     style: text18,
                //   ),
                // ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.all(5.0),
                //     child: Text(
                //       '${movie.releaseDate}',
                //       maxLines: 2,
                //       style: text15,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 5.0,
                    animation: true,
                    percent: 0.7,
                    center: Text(
                      '${movie.rating}',
                      style: text15,
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.purple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
