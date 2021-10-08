import 'package:flutter/material.dart';
import 'package:movie_apps/data/movies/model/movie_detail_response.dart';
import 'package:movie_apps/ui/movie_detail/product_companies/movie_product_companies_item.dart';

class MovieProductCompaniesWidget extends StatelessWidget {
  final MovieDetailResponse movieDetailResponse;
  const MovieProductCompaniesWidget(
      {Key? key, required this.movieDetailResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: movieDetailResponse.productionCompanies!.length,
        itemBuilder: (context, index) {
          ProductionCompanyResponse companyResponse =
              movieDetailResponse.productionCompanies![index];

          return MovieProductComaniesItem(
            companyResponse: companyResponse,
          );
        },
      ),
    );
  }
}
