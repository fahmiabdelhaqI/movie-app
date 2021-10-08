import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';
import 'package:movie_apps/data/movies/movie_api_client.dart';
import 'package:movie_apps/values/textstyle.dart';

class MovieProductComaniesItem extends StatelessWidget {
  final ProductionCompanyResponse companyResponse;
  const MovieProductComaniesItem({
    Key? key,
    required this.companyResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(
                        '$imagebaseurl${companyResponse.logoPath}'),
                    fit: BoxFit.fill,
                    onError: (error, stackTrace) => const Icon(Icons.error),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            Text(
              '${companyResponse.name}',
              style: text18,
            ),
          ],
        ),
      ],
    );
  }
}
