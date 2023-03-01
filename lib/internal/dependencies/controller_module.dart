import 'package:clean_architecture_example/presentation/home/controller/home_controller.dart';

class ControllerModule {
  HomeController? _homeController;

  HomeController homeController(){
    _homeController??=HomeController();
    return _homeController!;
  }
}