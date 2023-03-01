import '../../domain/model/dog.dart';
import '../api/model/api_dog.dart';

class DogMapper {
  static Dog fromApi(ApiDog dog) {
    return Dog(
      image: dog.image,
    );
  }
}