import '../../domain/model/pet.dart';
import '../mapper/dog_mapper.dart';
import 'service/dog_service.dart';

class ApiDogUtil {
  final DogService? _dogService;

  ApiDogUtil(this._dogService);

  Future<Pet> getDog({
    required String baseUrl,
    required String path,
  }) async {
    final result = await _dogService!.getPet(baseUrl: baseUrl,path: path);
    return DogMapper.fromApi(result);
  }
}
