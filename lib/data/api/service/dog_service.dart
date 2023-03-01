import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/api_dog.dart';

class DogService {

  static const _baseUrl = 'random.dog';

  Future<ApiDog> getPet() async {
    const path = '/woof.json';
    final response = await http.get(Uri.https(_baseUrl,path));
    return ApiDog.fromApi(jsonDecode(response.body));
  }
}