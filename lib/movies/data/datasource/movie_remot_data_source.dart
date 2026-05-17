import 'package:dio/dio.dart';
import 'package:movies_app/core/api/api_consumer.dart';
import 'package:movies_app/core/api/endpoint.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemotDataSource extends BaseMovieRemoteDataSource {
  final ApiConsumer apiConsumer;

  MovieRemotDataSource({required this.apiConsumer});

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final Response response = await apiConsumer.get(
      Endpoint.nowPlayingMovies,
      queryParameters: {'api_key': ApiKey.apiKey},
    );
  }

  @override
  Future<List<MovieModel>> getPopularMovies() {
    throw UnimplementedError();
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() {
    throw UnimplementedError();
  }
}
