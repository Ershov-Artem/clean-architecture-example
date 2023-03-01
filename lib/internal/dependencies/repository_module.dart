import '../../data/repository/cat_repository.dart';
import '../../data/repository/dog_repository.dart';
import '../../domain/repository/pet_repository.dart';
import 'api_module.dart';

class RepositoryModule {
  static PetRepository? _catRepository;
  static PetRepository? _dogRepository;

  static PetRepository catRepository() {
    _catRepository ??= CatRepository(ApiModule.apiUtil());
    return _catRepository!;
  }

  static PetRepository dogRepository() {
    _dogRepository ??= DogRepository(ApiModule.apiUtil());
    return _dogRepository!;
  }
}
