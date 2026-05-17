import 'package:movies_app/core/utils/app_constance.dart';

class Endpoint {
  static String baseUrl = AppConstance.baseUrl;
  static String movies = "3/movie";
  static String nowPlayingMovies = "/now_playing";
  static String popularMovies = "/popular";
  static String topRatedMovies = "/top_rated";
}

class ApiKey {
  static String apiKey = AppConstance.apiKey;
  static String statusCode = 'status_code';
  static String statusMessage = 'status_message';
  // static String message = 'message';
  // static String password = 'password';
  // static String token = 'token';
  // static String id = 'id';
  // static String email = 'email';
  // static String name = 'name';
  // static String phone = 'phone';
  // static String image = 'image';
  // static String data = 'data';
}
