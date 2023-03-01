import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/api_cat.dart';

class CatService {
  static const _baseUrl = 'aws.random.cat';

  Future<ApiCat> getPet() async {
    const path = '/meow';
    final response = await http.get(Uri.https(_baseUrl, path));
    return ApiCat.fromApi(jsonDecode(response.body));
  }
}
