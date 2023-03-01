import '../../domain/model/cat.dart';
import '../mapper/cat_mapper.dart';
import 'service/cat_service.dart';

class ApiCatUtil {
  final CatService _catService;

  ApiCatUtil(this._catService);

  Future<Cat> getCat() async {
    final result = await _catService.getPet();
    return CatMapper.fromApi(result);
  }
}
