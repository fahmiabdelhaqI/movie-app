import 'package:equatable/equatable.dart';

class Cast {
  final String image;
  final String name;

  Cast({required this.name, required this.image});

  static List<Cast> castDummies = [
    Cast(
        name: 'Bae Suzy',
        image:
            'https://d17389e216ygm.cloudfront.net/wp-content/uploads/CE_Startup_FullSize.jpg'),
    Cast(
        name: 'Nam Joo-hyuk',
        image:
            'https://kinipaham.com/wp-content/uploads/2020/11/Nam-Joo-Hyuk.jpg'),
    Cast(
        name: 'Nam Da-reum',
        image:
            'https://cdn.idntimes.com/content-images/post/20201019/121642614-1123374298095330-1005358867106870935-n-945031a0a201b0e98d5562b5fa823d8f.jpg'),
    Cast(
        name: 'Kang Han-na',
        image:
            'https://kpophit.com/wp-content/uploads/2020/09/Kang-Han-Na-Transforms-Into-Aspiring-Career-Woman-For-Upcoming.jpeg'),
  ];
}
