import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exption.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/data/datasource/movie_remot_data_source.dart';
import 'package:movies_app/movies/domain/entities/get_movies.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class MovieRepository implements BaseMoviesRepository {
 final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository({required this.baseMovieRemoteDataSource});




  @override
  Future<Either<Failure, List<GetMovies>>> getNowPlayingMovies() async{
    try {
  final result = await baseMovieRemoteDataSource.getNowPlayingMovies();   
     return  right(result);

} on ServerExption catch (e) {
  return left(ServerFailure(message: e.errorModel!.message));
}
  }

  @override
  Future<Either<Failure, List<GetMovies>>> getPopularMovies() async{

      try {
  final result = await baseMovieRemoteDataSource.getPopularMovies();   
     return  right(result);

} on ServerExption catch (e) {
  return left(ServerFailure(message: e.errorModel!.message));
}

  }

  @override
  Future<Either<Failure, List<GetMovies>>> getTopRatedMovies() async{
    
      try {
  final result = await baseMovieRemoteDataSource.getTopRatedMovies();   
     return  right(result);

} on ServerExption catch (e) {
  return left(ServerFailure(message: e.errorModel!.message));
}

  }
}