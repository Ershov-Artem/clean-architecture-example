import '../../domain/model/pet.dart';
import '../mapper/cat_mapper.dart';
import 'service/cat_service.dart';

class ApiCatUtil {
  final CatService? _catService;

  ApiCatUtil(this._catService);

  Future<Pet> getCat({
    required String baseUrl,
    required String path,
  }) async {
    final result = await _catService!.getPet(baseUrl: baseUrl,path: path);
    return CatMapper.fromApi(result);
  }

}
