import 'package:movies_app/movies/domain/entities/get_movies.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure,List<GetMovies>>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}