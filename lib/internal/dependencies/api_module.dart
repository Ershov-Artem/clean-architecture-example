import 'package:clean_architecture_example/data/api/api_util.dart';
import 'package:clean_architecture_example/data/api/service/pet_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    _apiUtil ??= ApiUtil(PetService());
    return _apiUtil!;
  }
}