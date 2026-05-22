import 'package:movies_app/movies/data/models/movie_model.dart';

abstract class MoviesState {}

class MoviesInitial extends MoviesState {}

class GetNowPlayingMoviesLoadingState extends MoviesState {}

class GetNowPlayingMoviesSuccessState extends MoviesState {
  final List<MovieModel> movies;

  GetNowPlayingMoviesSuccessState({required this.movies});
}

class GetNowPlayingMoviesErrorState extends MoviesState {
  final String error;

  GetNowPlayingMoviesErrorState({required this.error});
}

class GetPopularMoviesLoadingState extends MoviesState {}

class GetPopularMoviesSuccessState extends MoviesState {
  final List<MovieModel> movies;

  GetPopularMoviesSuccessState({required this.movies});
}

class GetPopularMoviesErrorState extends MoviesState {
  final String error;

  GetPopularMoviesErrorState({required this.error});
}

class GetTopRatedMoviesLoadingState extends MoviesState {}

class GetTopRatedMoviesSuccessState extends MoviesState {
  final List<MovieModel> movies;

  GetTopRatedMoviesSuccessState({required this.movies});
}

class GetTopRatedMoviesErrorState extends MoviesState {
  final String error;

  GetTopRatedMoviesErrorState({required this.error});
}
