import 'package:movies_app/movies/domain/entities/get_movies.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  Future<List<GetMovies>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}