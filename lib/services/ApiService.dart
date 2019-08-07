library apiservice;

import 'dart:convert';

import 'package:flutter_mobile_boilerplate/util/constants.dart';
import 'package:http/http.dart' as http;


class ApiService {
  static const BASE_URL = Constants.API_HOST;

  Future<http.Response> _get(String url, {auth = true, host = BASE_URL}) async {
    final header = <String, String>{};
//    if (auth) {
//      String token = await sl.get<PrefsService>().jwtToken;
//      header["Authorization"] = "Bearer $token";
//    }
    return http.get(host + url, headers: header);
  }

  Future<http.Response> _post(String url, Map<String, dynamic> body, {auth = true, host = BASE_URL}) async {
    final header = <String, String>{"Content-Type": "application/json"};
//    if (auth) {
//      String token = await sl.get<PrefsService>().jwtToken;
//      header["Authorization"] = "Bearer $token";
//    }
    return http.post(host + url, body: json.encode(body), headers: header);
  }

  bool isSuccessful(http.Response r) => r.statusCode >= 200 && r.statusCode < 400;

//  Future<User> createUser(User user) async {
//    http.Response res = await _post("/create", user.toJson(), auth: false);
//    if (isSuccessful(res)) {
//      return new User.fromJson(json.decode(res.body));
//    } else {
//      throw NetworkError('Failed to load post [${res.statusCode}]: ${res.body}');
//    }
//  }


//  Future<User> getUser(String userId) async {
//    http.Response res = await _get("/$userId");
//    if (isSuccessful(res)) {
//      return User.fromJson(json.decode(res.body));
//    } else {
//      throw NetworkError('Failed to load post [${res.statusCode}]: ${res.body}');
//    }
//  }

}
