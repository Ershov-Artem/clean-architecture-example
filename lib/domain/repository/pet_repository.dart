
import '../model/cat.dart';
import '../model/dog.dart';

abstract class PetRepository {
  Future<Dog> getDog();
  Future<Cat> getCat();
}
