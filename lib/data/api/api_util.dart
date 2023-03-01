import '../../domain/model/pet.dart';
import '../mapper/pet_mapper.dart';
import 'service/pet_service.dart';

class ApiUtil {
  final PetService _petService;

  ApiUtil(this._petService);

  Future<Pet> getPet({
    required String baseUrl,
    required String path,
  }) async {
    final result = await _petService.getPet(baseUrl: baseUrl,path: path);
    return PetMapper.fromApi(result);
  }
}
