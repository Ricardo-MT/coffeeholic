// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:http/http.dart' as http;

/// API services for get, post, put and delete over-the-web requests
class Api {
  /// API services for get, post, put and delete over-the-web requests
  const Api();

  Future<ApiResponse> get(String url,
      {Map<String, dynamic>? params, Map<String, String>? headers,}) async {
    var uri = Uri.parse(url);
    if (params != null) {
      uri = uri.replace(queryParameters: params);
    }
    final response = await http.get(
      _parseUrl(url, params: params),
      headers: headers,
    );
    return _handleResponse(response);
  }

  Future<ApiResponse> post(String url, {Object? body, Map<String, String>? headers,}) async {
    final response = await http
        .post(_parseUrl(url), headers: headers, body: body);

    return _handleResponse(response);
  }

  Future<ApiResponse> put(String url,
      {Map<String, dynamic>? params, Object? body, Map<String, String>? headers,}) async {
    final response = await http.put(_parseUrl(url, params: params),
        headers: headers, body: body,);

    return _handleResponse(response);
  }

  Future<ApiResponse> delete(String url,
      {Map<String, dynamic>? params, Object? body, Map<String, String>? headers,})
      async {
    final response = await http.delete(
        _parseUrl(url, params: params),
        headers: headers,
        body: body);
    return _handleResponse(response);
  }
}

Uri _parseUrl(String url, {Map<String, dynamic>? params}) {
  var parsedUrl = Uri.parse(url);
  if (params != null) {
    parsedUrl = parsedUrl.replace(queryParameters: params);
  }
  return parsedUrl;
}

ApiResponse _handleResponse(http.Response response) {
  final code = response.statusCode;
  final rawJsonString = response.body;
  final dynamic res = jsonDecode(rawJsonString);

  String? message;
  final dynamic resMessage = res['message'];

  if (code >= 400) {
    message = (resMessage.runtimeType==String)? 
      (resMessage as String) : defaultErrorMessage;
    throw ApiException(
      code: code,
      message: message,
    );
  } else {
    message = (resMessage.runtimeType==String)? 
      (resMessage as String) : defaultSuccessMessage;
  }

  return ApiResponse(
    data: jsonDecode(rawJsonString),
    message: message,
  );
}

class ApiException implements Exception {
  ApiException({required this.code, this.message = '',});
  String message;
  int code;
}

class ApiResponse {
  ApiResponse({this.message, this.data});
  String? message;
  dynamic data;
}

/// Default error message for over-the-web api services
const defaultErrorMessage =
    'API service error';
    
/// Default success message for over-the-web api services
const defaultSuccessMessage =
    'Success';
