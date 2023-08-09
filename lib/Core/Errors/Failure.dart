import 'package:dio/dio.dart';

abstract class Failure {
  final String messege;
  Failure(
    this.messege,
  );
}

class ServerFailure extends Failure {
  ServerFailure(super.messege);

  factory ServerFailure.fromDioException(DioException ex) {
    switch (ex.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TimeOut With Api Server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send TimeOut With Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive TimeOut With Api Server');

      case DioExceptionType.badCertificate:
        return ServerFailure('BadCertificare With Api Server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            ex.response!.statusCode!, ex.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection  ');

      case DioExceptionType.unknown:
        return ServerFailure(' please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('Your Request was not found, please try again');
    } else if (statusCode >= 500) {
      return ServerFailure(
          'There is a problem with a server, please try again');
    } else if (statusCode == 401 || statusCode == 403 || statusCode == 400) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('There was an error , please try again');
    }
  }
}
