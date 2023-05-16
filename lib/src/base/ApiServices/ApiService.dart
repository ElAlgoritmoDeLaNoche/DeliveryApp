// ignore_for_file: file_names, avoid_print, no_leading_underscores_for_local_identifiers

import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'AppError.dart';

abstract class _Exceptions {
  static String socketExceptionMessage = 'No internet connection 🙃';
  static String httpException = "Couldn't find the path 😱";
  static String formatException = 'Bad response format 🫤';
}

abstract class ApiService {
  Future<Map<String, dynamic>> getDataFromPostRequest({
    required Map<String, dynamic> bodyparameters,
    required String url,
    Map<String, String>? headers,
  });

  Future<Map<String, dynamic>> getDataFromPutRequest({
    required Map<String, dynamic> bodyparameters,
    required String url,
    Map<String, String>? headers,
  });

  Future<Map<String, dynamic>> getDataFromGetRequest({
    required String url,
    Map<String, String>? headers,
  });
}

// * * * * * * * * * * * * * * * //

class DefaultApiService extends ApiService {
  @override
  Future<Map<String, dynamic>> getDataFromGetRequest({
    required String url,
    Map<String, String>? headers,
  }) async {
    final _url = Uri.parse(url);
    final response = await http.get(_url, headers: headers);

    try {
      if (response.statusCode.toString().contains('20')) {
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      throw Failure.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      throw Failure.fromMessage(message: _Exceptions.formatException);
    }
  }

  @override
  Future<Map<String, dynamic>> getDataFromPostRequest({
    required Map<String, dynamic> bodyparameters,
    required String url,
    Map<String, String>? headers,
  }) async {
    final _url = Uri.parse(url);
    final body = json.encode(bodyparameters);

    final response = await http.post(_url, headers: headers, body: body);

    try {
      if (response.statusCode.toString().contains('20')) {
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      throw Failure.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      throw Failure.fromMessage(message: _Exceptions.formatException);
    }
  }

  @override
  Future<Map<String, dynamic>> getDataFromPutRequest({
    required Map<String, dynamic> bodyparameters,
    required String url,
    Map<String, String>? headers,
  }) async {
    final _url = Uri.parse(url);
    final body = json.encode(bodyparameters);

    final response = await http.put(_url, headers: headers, body: body);

    try {
      if (response.statusCode.toString().contains('20')) {
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      throw Failure.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      throw Failure.fromMessage(message: _Exceptions.formatException);
    }
  }
}
