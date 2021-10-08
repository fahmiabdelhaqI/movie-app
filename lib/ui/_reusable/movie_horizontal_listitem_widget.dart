import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:movie_apps/data/movies/model/movie_item_response.dart';
import 'package:movie_apps/data/movies/movie_api_client.dart';

class MovieHorizontalListItemWidget extends StatelessWidget {
  const MovieHorizontalListItemWidget({
    Key? key,
    required this.movieItemResponse,
    required this.onTap,
  }) : super(key: key);

  final MovieItemResponse movieItemResponse;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 130,
        child: Card(
          child: Column(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: '$imagebaseurl${movieItemResponse.posterPath}',
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30,
                  child: Text(
                    '${movieItemResponse.title}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
