import '../model/pet.dart';

abstract class PetRepository {
  Future<Pet> getData();
}
