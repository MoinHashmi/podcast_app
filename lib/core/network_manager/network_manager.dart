import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'network_manager_exceptions.dart';
import 'network_manager_utils.dart';

enum RequestType { get, post, patch, delete }

enum AuthorizationType {
  bearer('Bearer'),
  jwt(''),
  oAuth('');

  final String value;

  const AuthorizationType(this.value);

}

enum ContentType {
  json(
      'application/json'
  ),
  jsonUTF(
      'application/json; charset=UTF-8'
  );

  final String value;

  const ContentType(this.value);

}

enum DisplayType { snackbar, dialog, modalBottomSheet, other }

typedef FromJson<T> = T Function(dynamic data);



class NetworkManager {
  late String _baseUrl;
  late final Dio _dio;
  final String _tag = 'NETWORK MANAGER ERROR:';

  //Cancel Tokens Map
  final Map<int, CancelToken> _cancelRequestMap = {};

  static final NetworkManager _instance = NetworkManager._internal();

  static NetworkManager get instance => _instance;

  NetworkManager._internal() {
    _dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: ContentType.json.value,
        },
      ),
    );
  }

  void init(String url) {
    _baseUrl = url;
  }

  Future<T> sendApiCall<T>({
    bool useDefaultBaseUrl = true,
    required String endpoint,
    required FromJson<T> fromJson,
    RequestType requestType = RequestType.post,
    ContentType contentType = ContentType.json,
    AuthorizationType authorizationType=AuthorizationType.bearer,
    HashMap<String, dynamic>? bodyParam,
    HashMap<String, dynamic>? queryParam,
    bool shouldUseToken = false,
    String? authToken,
    int? requestId,
  }) async {

    try {

      final isConnected = await hasInternet();

      debugPrint("Data Posting ${bodyParam.toString()}");

      CancelToken cancelToken = CancelToken();
      debugPrint('Cancel token is: $cancelToken');
      String url = '$_baseUrl$endpoint';
      debugPrint('Complete url is: $url');

      debugPrint('IS_CONNECTED: $isConnected');

      if(!isConnected){
        debugPrint('$_tag Internet is not connected');
        throw NetworkManagerError(NetworkManagerErrors.internetError, '$_tag Internet is not connected');
      }

      if (useDefaultBaseUrl && _baseUrl.trim().isEmpty) {
        debugPrint('$_tag Invalid url');
        throw NetworkManagerError(NetworkManagerErrors.invalidUrlError, '$_tag Invalid url');
      }

      if(shouldUseToken && authToken == null ||
          (shouldUseToken && authToken != null && authToken.isEmpty)
      ) {
        debugPrint('$_tag Auth token not found');
        throw NetworkManagerError(NetworkManagerErrors.authTokenError, '$_tag Auth token not found');
      }

      _dio.options = shouldUseToken ? BaseOptions(
        headers: {
          HttpHeaders.authorizationHeader: '${authorizationType
              .value} $authToken',
          'Authorization': authToken,
        },
      ) : _dio.options.copyWith(
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: contentType.value,
        },
      );

      if (requestId != null) {
        _cancelRequestMap.addAll({requestId: cancelToken});
      }

      Response response;

      if (requestType == RequestType.get){
        response = await _dio.get(
            url,
            queryParameters: queryParam,
            cancelToken: cancelToken);
      } else if (requestType == RequestType.delete){
        response = await _dio.delete(url,
            queryParameters: queryParam,
            cancelToken: cancelToken);
      } else if (requestType == RequestType.patch){
        response = await _dio.patch(url,
            queryParameters: queryParam,
            data: contentType == ContentType.json ? jsonEncode(bodyParam) : bodyParam,
            cancelToken: cancelToken);
      } else {
        response = await _dio.post(
            url,
            queryParameters: queryParam,
            data: contentType == ContentType.json ? jsonEncode(bodyParam) : bodyParam,
            cancelToken: cancelToken);
      }

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {

        debugPrint('RECEIVED: ${response.data}');

        if (response.data != null) {
          final parsedData = await (kIsWeb ? compute(fromJson,response.data) :
          runTaskOnBackgroundIsolate<T?>(
              data: response.data, actionToBePerfomed: fromJson));

          if (parsedData == null) {
            debugPrint('DATA PARSING FAILED: $parsedData');
            throw NetworkManagerError(
                NetworkManagerErrors.dataParsingError,
                'An error occurred while parsing response',
                responseData: response.data
            );
          }

          return parsedData;

        }
      }

      if (response.statusCode == 400) {
        return throw NetworkManagerError(
            NetworkManagerErrors.invalidRequestError,
            'Bad request, response: ${response.statusMessage}'
        );
      }

      if (response.statusCode == 404) {
        throw NetworkManagerError(
            NetworkManagerErrors.invalidRequestError,
            '404: Unable to complete request, response: ${response.statusMessage}'
        );
      }

      if ([401, 403].contains(response.statusCode)) {
        throw NetworkManagerError(
            NetworkManagerErrors.invalidRequestError,
            'Unable to complete request, response: ${response.statusMessage}'
        );
      }

      if (response.statusCode.toString().startsWith('5')) {
        throw NetworkManagerError(
            NetworkManagerErrors.serverError,
            'Unable to complete request, response: ${response.statusMessage}'
        );
      }

      throw NetworkManagerError(
          NetworkManagerErrors.networkManagerError,
          'Unable to complete request, response: ${response.statusMessage}'
      );
    } on SocketException catch (e) {
      debugPrint('SocketException: $e');
      throw NetworkManagerError(
          NetworkManagerErrors.internetError,
          'Internet not connected: $e'
      );
    } on DioException catch (e) {
      if(e.type == DioExceptionType.cancel){
        debugPrint('Api request canceled for endpoint: $endpoint');
        throw NetworkManagerError(
            NetworkManagerErrors.networkRequestCanceled,
            'Api request canceled for endpoint: $endpoint'
        );
      }

      debugPrint('Dio exception occurred for endpoint: $endpoint');

      throw NetworkManagerError(
          NetworkManagerErrors.serverError,
          'Dio exception occurred for endpoint: $endpoint\n$e'
      );
    }
  }

  void cancelApiCalls({int? requestId}) {
    if (_cancelRequestMap.containsKey(requestId)) {
      _cancelRequestMap.forEach((key, value) {
        if (key == requestId) {
          value.cancel();
        }
      });
      _cancelRequestMap.remove(requestId);
    }
  }

}

