import '../../domain/model/dog.dart';
import '../mapper/dog_mapper.dart';
import 'service/dog_service.dart';

class ApiDogUtil {
  final DogService _dogService;

  ApiDogUtil(this._dogService);

  Future<Dog> getDog() async {
    final result = await _dogService.getPet();
    return DogMapper.fromApi(result);
  }
}
