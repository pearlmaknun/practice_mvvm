import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/search.dart';
import '../model/result.dart';
import '../config/env.dart';

class ApiService {
  final client = http.Client();
  final baseUrl = "http://www.omdbapi.com/";

  Future<List<Search>> getSearch(String keyword) async {
    var response = await client.get(
      "$baseUrl?s=$keyword&apikey=${EnvironmentConfig.API_KEY}",
      headers: {"accept": "application/json"},
    );
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      print(responseJson);
      return Result.fromJson(responseJson).search;
    } else {
      return null;
    }
  }
}