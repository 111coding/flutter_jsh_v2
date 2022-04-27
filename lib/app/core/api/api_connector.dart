import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiConnector {
  static const host = "http://192.168.0.41:8080";

  late final http.Client _client;
  late final Map<String, String> _defaultHeader;

  Future<T?> get<T>(String path, {Map<String, dynamic>? query}) async {
    var queryString = query?.entries.map((e) => "${e.key}${e.value}").toList().join();
    String requestUrl = "$host$path?$queryString";

    var response = await _client.get(
      Uri.parse(requestUrl),
      headers: _defaultHeader,
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as T;
    }

    return null;
  }

  // =============== SingleTon Begin
  static final ApiConnector _instance = ApiConnector._internal();
  factory ApiConnector() => _instance;
  ApiConnector._internal() {
    _client = http.Client();
    _defaultHeader = {"Content-Type": "application/json; charset=utf-8"};
  }
  // =============== SingleTon End
}