import '../../data/repository/pet_data_repository.dart';
import '../../domain/repository/pet_repository.dart';
import 'api_module.dart';

class RepositoryModule {
  static PetRepository? _petRepository;

  static PetRepository petRepository() {
    _petRepository ??=
        PetDataRepository(ApiModule.apiDogUtil(), ApiModule.apiCatUtil());
    return _petRepository!;
  }
}
