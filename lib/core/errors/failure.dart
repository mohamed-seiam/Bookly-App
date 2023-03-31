import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.error);

  factory ServiceFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServiceFailure('Connection timeout with Server');
      case DioErrorType.sendTimeout:
        return ServiceFailure('Send timeout with Server');
      case DioErrorType.receiveTimeout:
        return ServiceFailure('Receive timeout with Server');
      case DioErrorType.badCertificate:
        return ServiceFailure('BadCertificate with Server');
      case DioErrorType.badResponse:
        return ServiceFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServiceFailure('Request to Server was Cancelled');
      case DioErrorType.connectionError:
        return ServiceFailure('Please makeSure that you are connected');
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServiceFailure('No internet connection');
        }
        return ServiceFailure('Unexpected error , try again later! ');
      default:
        return ServiceFailure(
            'Opps there was an error , Please try again later !');
    }
  }

  factory ServiceFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailure('Your request not found , please try again later!');
    } else if (statusCode == 500) {
      return ServiceFailure('Internal Server error, try again later !');
    } else {
      return ServiceFailure(
          'Opps there was an error , Please try again later !');
    }
  }
}
