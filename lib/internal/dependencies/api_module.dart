import '../../data/api/api_cat_util.dart';
import '../../data/api/service/cat_service.dart';
import '../../data/api/service/dog_service.dart';
import '../../data/api/api_dog_util.dart';

class ApiModule {
  static ApiDogUtil? _apiDogUtil;
  static ApiCatUtil? _apiCatUtil;

  static ApiDogUtil apiDogUtil() {
    _apiDogUtil ??= ApiDogUtil(DogService());
    return _apiDogUtil!;
  }

  static ApiCatUtil apiCatUtil() {
    _apiCatUtil ??= ApiCatUtil(CatService());
    return _apiCatUtil!;
  }
}
