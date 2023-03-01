
import '../../domain/model/pet.dart';
import '../../domain/repository/pet_repository.dart';
import '../api/api_dog_util.dart';

class DogRepository extends PetRepository{
   DogRepository(this._apiUtil);

  final ApiDogUtil _apiUtil;

  static const _baseUrl = 'random.dog';

  @override
  Future<Pet> getData() {
    const path = '/woof.json';
    return _apiUtil.getDog(baseUrl: _baseUrl, path: path);
  }

}