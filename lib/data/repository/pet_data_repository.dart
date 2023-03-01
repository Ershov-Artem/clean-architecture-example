import 'package:clean_architecture_example/data/api/api_cat_util.dart';
import 'package:clean_architecture_example/data/api/api_dog_util.dart';
import 'package:clean_architecture_example/domain/model/cat.dart';
import 'package:clean_architecture_example/domain/model/dog.dart';
import 'package:clean_architecture_example/domain/repository/pet_repository.dart';

class PetDataRepository extends PetRepository{
  PetDataRepository(this._apiDogUtil, this._apiCatUtil);

  final ApiDogUtil _apiDogUtil;
  final ApiCatUtil _apiCatUtil;

  @override
  Future<Cat> getCat() {
    return _apiCatUtil.getCat();
  }

  @override
  Future<Dog> getDog() {
    return _apiDogUtil.getDog();
  }

}