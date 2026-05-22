import 'package:dio/dio.dart';

import 'error_model.dart';

class ServerExption implements Exception {
  final ErrorModel? errorModel;
  final String? error;

  ServerExption({this.errorModel, this.error});
}

class LocalDatabaseExption implements Exception {
  final String? error;

  LocalDatabaseExption({this.error});
}

void handelDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerExption(
        error: 'Connection timeout',
        errorModel: e.response?.data != null
            ? ErrorModel.fromJson(e.response!.data)
            : null,
      );
    case DioExceptionType.sendTimeout:
      throw ServerExption(
        error: 'Failed to send data',
        errorModel: e.response?.data != null
            ? ErrorModel.fromJson(e.response!.data)
            : null,
      );

    case DioExceptionType.receiveTimeout:
      throw ServerExption(
        error: 'Server took too long to respond',
        errorModel: e.response?.data != null
            ? ErrorModel.fromJson(e.response!.data)
            : null,
      );

    case DioExceptionType.badCertificate:
      throw ServerExption(
        error: 'Security certificate error',
        errorModel: e.response?.data != null
            ? ErrorModel.fromJson(e.response!.data)
            : null,
      );

    case DioExceptionType.cancel:
      throw ServerExption(
        error: 'Request was cancelled',
        errorModel: e.response?.data != null
            ? ErrorModel.fromJson(e.response!.data)
            : null,
      );

    case DioExceptionType.connectionError:
      throw ServerExption(
        error: 'No internet connection',
        errorModel: e.response?.data != null
            ? ErrorModel.fromJson(e.response!.data)
            : null,
      );

    case DioExceptionType.unknown:
      throw ServerExption(
        error: 'An unexpected error occurred',
        errorModel: e.response?.data != null
            ? ErrorModel.fromJson(e.response!.data)
            : null,
      );

    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 401:
          throw ServerExption(
            error: 'Unauthorized',
            errorModel: e.response?.data != null
                ? ErrorModel.fromJson(e.response!.data)
                : null,
          );
        case 403:
          throw ServerExption(
            error: 'Access denied',
            errorModel: e.response?.data != null
                ? ErrorModel.fromJson(e.response!.data)
                : null,
          );
        case 404:
          throw ServerExption(
            error: 'Not found',
            errorModel: e.response?.data != null
                ? ErrorModel.fromJson(e.response!.data)
                : null,
          );
        case 409:
          throw ServerExption(
            error: 'Conflict',
            errorModel: e.response?.data != null
                ? ErrorModel.fromJson(e.response!.data)
                : null,
          );
        case 422:
          String error = e.response?.data['status_message'];
          throw ServerExption(
            error: error,
            errorModel: e.response?.data != null
                ? ErrorModel.fromJson(e.response!.data)
                : null,
          );
        case 500:
          throw ServerExption(
            error: 'Server error',
            errorModel: e.response?.data != null
                ? ErrorModel.fromJson(e.response!.data)
                : null,
          );
        case 504:
          throw ServerExption(
            error: 'Server not responding',
            errorModel: e.response?.data != null
                ? ErrorModel.fromJson(e.response!.data)
                : null,
          );
        default:
          throw ServerExption(
            error: 'Ops, there was an error',
            errorModel: e.response?.data != null
                ? ErrorModel.fromJson(e.response!.data)
                : null,
          );
      }
    default:
      throw ServerExption(error: 'Ops, there was an error');
  }
}
