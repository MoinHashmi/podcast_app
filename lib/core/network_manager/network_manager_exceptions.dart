
import 'dart:collection';

class NetworkManagerError implements Exception {
  final NetworkManagerErrors errorType;
  final String message;
  final HashMap<String, dynamic>? responseData;

  NetworkManagerError(this.errorType, this.message, {this.responseData});

  @override
  String toString() => responseData != null ?
  '$message\n${responseData.toString()}':
  '$errorType: $message';
}


enum NetworkManagerErrors{
  internetError,
  invalidUrlError,
  authTokenError,
  dataParsingError,
  invalidRequestError,
  serverError,
  networkRequestCanceled,
  networkManagerError
}