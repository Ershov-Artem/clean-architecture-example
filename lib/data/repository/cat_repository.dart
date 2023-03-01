import '../../domain/model/pet.dart';
import '../../domain/repository/pet_repository.dart';
import '../api/api_cat_util.dart';

class CatRepository extends PetRepository{
  CatRepository(this._apiUtil);

  final ApiCatUtil _apiUtil;

  static const _baseUrl = 'aws.random.cat';

  @override
  Future<Pet> getData() {
    const path = '/meow';
    return _apiUtil.getCat(baseUrl: _baseUrl, path: path);
  }

}