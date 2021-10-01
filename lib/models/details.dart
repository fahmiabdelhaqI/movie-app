import 'package:movie_apps/models/cast.dart';
import 'package:equatable/equatable.dart';

class DetailsCasting extends Equatable {
  final String nameFilm;
  final String imageUrls;
  final String description;
  final List<Cast> casts;

  const DetailsCasting({
    required this.nameFilm,
    required this.imageUrls,
    required this.description,
    required this.casts,
  });

  @override
  List<Object> get props {
    return [nameFilm, imageUrls, description, casts];
  }

  @override
  bool get stringify => true;

  @override
  String toString() {
    return 'DetailsCasting(nameFilm: $nameFilm, imageUrls: $imageUrls, description: $description, casts: $casts)';
  }
}
