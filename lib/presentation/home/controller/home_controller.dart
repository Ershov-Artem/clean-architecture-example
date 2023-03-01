
import 'package:clean_architecture_example/internal/models/pet_model.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/model/pet.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  HomeControllerBase();

  @observable
  PetModel? model;

  @observable
  Pet? pet;

  @action
  void setModel(PetModel petModel){
    model = petModel;
  }

  @action
  Future<void> getPet() async {
    pet = await model!.repository.getData();
  }
}