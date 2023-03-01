import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/api_cat.dart';

class CatService {
  Future<ApiCat> getPet({
    required String baseUrl,
    required String path,
  }) async {
    final response = await http.get(Uri.https(baseUrl,path));
    return ApiCat.fromApi(jsonDecode(response.body));
  }
}