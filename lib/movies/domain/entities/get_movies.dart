import 'package:equatable/equatable.dart';

class GetMovies extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final double voteAverage;
  final String releaseDate;

  const GetMovies({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreIds,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object?> get props =>
      [id, title, backdropPath, genreIds, voteAverage, releaseDate];
}
