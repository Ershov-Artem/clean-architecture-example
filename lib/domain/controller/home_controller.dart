import 'package:mobx/mobx.dart';

import '../../internal/dependencies/repository_module.dart';
import '../model/dog.dart';
import '../model/cat.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  HomeControllerBase();

  final repository = RepositoryModule.petRepository();

  @observable
  Cat? cat;

  @observable
  Dog? dog;

  @computed
  String? get image => dog?.image ?? cat?.image;

  @action
  Future<void> getDog() async {
    dog = await repository.getDog();
  }

  @action
  Future<void> getCat() async {
    cat = await repository.getCat();
  }
}
