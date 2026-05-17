import 'package:dio/dio.dart';
import 'package:movies_app/core/api/api_consumer.dart';
import 'package:movies_app/core/api/endpoint.dart';
import 'package:movies_app/core/error/exption.dart';
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
    try {
  final Response response = await apiConsumer.get(
    Endpoint.nowPlayingMovies,
    queryParameters: {'api_key': ApiKey.apiKey},
   
  );

  List<dynamic> resulte = response.data['results'];

  List<MovieModel> listMovie = resulte.map((e)=>MovieModel.fromJson(e)).toList();

  return listMovie;

} on ExceptionHandler catch (e) {
  throw ExceptionHandler(errorModel: e.errorModel, error:e.error);
}
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async{
    try {
  final Response response = await apiConsumer.get(
    Endpoint.popularMovies,
    queryParameters: {'api_key': ApiKey.apiKey},
   
  );

  List<dynamic> resulte = response.data['results'];

  List<MovieModel> listMovie = resulte.map((e)=>MovieModel.fromJson(e)).toList();

  return listMovie;

} on ExceptionHandler catch (e) {
  throw ExceptionHandler(errorModel: e.errorModel, error:e.error);
}
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async{
      try {
  final Response response = await apiConsumer.get(
    Endpoint.topRatedMovies,
    queryParameters: {'api_key': ApiKey.apiKey},
   
  );

  List<dynamic> resulte = response.data['results'];

  List<MovieModel> listMovie = resulte.map((e)=>MovieModel.fromJson(e)).toList();

  return listMovie;

} on ExceptionHandler catch (e) {
  throw ExceptionHandler(errorModel: e.errorModel, error:e.error);
}
  }
}
