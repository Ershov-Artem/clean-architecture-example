
import 'package:clean_architecture_example/domain/repository/pet_repository.dart';
import 'package:clean_architecture_example/internal/dependencies/repository_module.dart';

import 'pet_model.dart';

class CatModel implements PetModel{
  @override
  String get text => 'Покажи кота';

  @override
  PetRepository get repository => RepositoryModule.catRepository();

}