import 'package:flutter/material.dart';
import 'package:movie_apps/models/populer_movie.dart';

class PopulerMovie extends StatelessWidget {
  const PopulerMovie({
    Key? key,
    required this.onTapDetails,
  }) : super(key: key);

  final VoidCallback onTapDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: PopulerMovies.populers.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          PopulerMovies movies = PopulerMovies.populers[index];
          return GestureDetector(
            onTap: onTapDetails,
            child: Container(
              width: 100,
              height: 250,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(movies.imageURL), fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
