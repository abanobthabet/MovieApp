import 'package:movies_app/movies/domain/entities/get_movies.dart';

class MovieModel extends GetMovies {
  MovieModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreIds,
    required super.voteAverage,
    required super.releaseDate,
  });
}
