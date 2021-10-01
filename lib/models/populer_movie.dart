class PopulerMovies {
  final String name;
  final String imageURL;

  PopulerMovies({
    required this.name,
    required this.imageURL,
  });

  static List<PopulerMovies> populers = [
    PopulerMovies(
      name: 'Start-Up',
      imageURL: 'https://i.mydramalist.com/RQLeY_4f.jpg',
    ),
    PopulerMovies(
      name: 'Squid Game',
      imageURL:
          'https://0.soompi.io/wp-content/uploads/2021/09/02161811/Squid-Game-2.jpg',
    ),
    PopulerMovies(
      name: 'Avangers EndGame',
      imageURL:
          'https://images.wallpapersden.com/image/download/avengers-endgame-official-poster_a2htZ26UmZqaraWkpJRoaGxrrWplZWU.jpg',
    ),
    PopulerMovies(
      name: 'Attack on Titan',
      imageURL:
          'https://cdn.aiktry.com/monthly_2020_12/1733405704_AttackonTitanTheFinalSeasonPoster.jpg.7eee34f84d184bc6f12b350a60960a96.jpg',
    ),
    PopulerMovies(
      name: 'Start-Up',
      imageURL: 'https://i.mydramalist.com/RQLeY_4f.jpg',
    ),
  ];
}
