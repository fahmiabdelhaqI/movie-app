import 'package:flutter/material.dart';
import 'package:movie_apps/presentation/details/detail/trailer_player/trailer_player.dart';

class TrailerMovie extends StatelessWidget {
  const TrailerMovie({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  final String imageUrls;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TrailerPlayer(imageUrls: imageUrls),
        ],
      ),
    );
  }
}
