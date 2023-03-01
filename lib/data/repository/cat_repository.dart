import '../../domain/model/pet.dart';
import '../../domain/repository/pet_repository.dart';
import '../api/api_util.dart';

class CatRepository extends PetRepository{
  CatRepository(this._apiUtil);

  final ApiUtil _apiUtil;

  static const _baseUrl = 'aws.random.cat';

  @override
  Future<Pet> getData() {
    const path = '/meow';
    return _apiUtil.getPet(baseUrl: _baseUrl, path: path);
  }

}