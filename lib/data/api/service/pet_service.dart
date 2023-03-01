import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/api_pet.dart';

class PetService {
  Future<ApiPet> getPet({
    required String baseUrl,
    required String path,
}) async {
    final response = await http.get(Uri.https(baseUrl,path));
    return ApiPet.fromApi(jsonDecode(response.body));
}
}