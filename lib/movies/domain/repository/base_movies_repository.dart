import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/get_movies.dart';

abstract class BaseMoviesRepository {

Future<Either<Failure,List<GetMovies>>> getNowPlayingMovies();
Future<Either<Failure,List<GetMovies>>> getPopularMovies();
Future<Either<Failure,List<GetMovies>>> getTopRatedMovies();

}