class Movie {
  final String name;
  final String imageUrl;
  final String country;
  final String genre;
  final String year;

  Movie({
    required this.name,
    required this.imageUrl,
    required this.country,
    required this.genre,
    required this.year,
  });

  static List<Movie> movieDummy = [
    Movie(
        name: 'Start-Up',
        imageUrl: 'https://i.mydramalist.com/RQLeY_4f.jpg',
        country: 'Korea',
        genre: 'Drama, Romance',
        year: '2020'),
  ];
}
