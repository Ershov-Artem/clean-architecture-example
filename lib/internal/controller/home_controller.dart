
import 'package:mobx/mobx.dart';

import '../../../domain/model/pet.dart';
import '../../../domain/repository/pet_repository.dart';
import '../../../internal/models/pet_model.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  HomeControllerBase();

  @observable
  PetModel? model;

  @observable
  PetRepository? repository;

  @observable
  Pet? pet;

  @action
  void setModel(PetModel petModel, PetRepository petRepository){
    repository = petRepository;
    model = petModel;
  }

  @action
  Future<void> getPet() async {
    pet = await repository!.getData();
  }
}