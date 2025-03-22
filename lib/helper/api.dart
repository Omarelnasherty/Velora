import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there is a problem .. ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url, required Map<String, dynamic> body}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);

    return jsonDecode(response.body);
  }

  Future<dynamic> put(
      {required String url, required Map<String, dynamic> body}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);

    return jsonDecode(response.body);
  }
}
