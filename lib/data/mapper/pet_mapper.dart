import '../../domain/model/pet.dart';
import '../api/model/api_pet.dart';

class PetMapper {
  static Pet fromApi(ApiPet pet) {
    return Pet(
      image: pet.image,
    );
  }
}