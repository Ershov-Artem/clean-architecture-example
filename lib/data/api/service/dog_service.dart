import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/api_dog.dart';

class DogService {
  Future<ApiDog> getPet({
    required String baseUrl,
    required String path,
  }) async {
    final response = await http.get(Uri.https(baseUrl,path));
    return ApiDog.fromApi(jsonDecode(response.body));
  }
}