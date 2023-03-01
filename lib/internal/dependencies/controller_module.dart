

import '../../domain/controller/home_controller.dart';

class ControllerModule {
  HomeController? _homeController;

  HomeController homeController(){
    _homeController??=HomeController();
    return _homeController!;
  }
}