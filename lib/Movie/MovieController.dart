import 'Movie.dart';

class Moviecontroller {
  final List<Movie> movies = [
    Movie(id: 1, title: 'Avenged Sevenfold',
     voteAverage: 5.0,
     posterPath: 'assets/Band/ax7.jpeg'),
    Movie(id: 2, title: 'Queen',
     voteAverage: 4.8,
      posterPath: 'assets/Band/queen.jpeg'),
    Movie(id: 3,
     title: 'GnR', 
     voteAverage: 4.9, 
     posterPath: 'assets/Band/gnr.jpeg'),
  ];
}