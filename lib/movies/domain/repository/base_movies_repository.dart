import 'package:movies_app/movies/domain/entities/get_movies.dart';

abstract class BaseMoviesRepository {

Future<List<GetMovies>> getNowPlayingMovies();
Future<List<GetMovies>> getPopularMovies();
Future<List<GetMovies>> getTopRatedMovies();

}