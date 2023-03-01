import 'package:clean_architecture_example/internal/controller/home_controller.dart';
import 'package:clean_architecture_example/internal/dependencies/controller_module.dart';
import 'package:clean_architecture_example/internal/dependencies/repository_module.dart';
import 'package:clean_architecture_example/internal/models/cat_model.dart';
import 'package:clean_architecture_example/internal/models/dog_model.dart';
import 'package:clean_architecture_example/internal/models/pet_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../domain/repository/pet_repository.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final homeController = ControllerModule().homeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Observer(
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _HomeButton(
                    petRepository: RepositoryModule.catRepository(),
                    isSelected: homeController.model is CatModel,
                    homeController: homeController,
                    model: CatModel(),
                  ),
                  _HomeButton(
                    petRepository: RepositoryModule.dogRepository(),
                    isSelected: homeController.model is DogModel,
                    homeController: homeController,
                    model: DogModel(),
                  ),
                ],
              ),
              _PetImageWidget(
                homeController: homeController,
              ),
              _RequestButton(
                homeController: homeController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeButton extends StatelessWidget {
  const _HomeButton(
      {required this.model,
      required this.homeController,
      required this.isSelected,
      required this.petRepository});

  final PetModel model;
  final PetRepository petRepository;
  final HomeController homeController;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        homeController.setModel(
          model,
          petRepository,
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 48,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            border: isSelected
                ? Border.all(color: Colors.lightGreenAccent, width: 2)
                : Border.all(width: 2)),
        child:
            Padding(padding: const EdgeInsets.all(12), child: Text(model.text)),
      ),
    );
  }
}

class _RequestButton extends StatelessWidget {
  const _RequestButton({required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        homeController.getPet();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 48,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.lightGreenAccent,
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: const Center(
            child: Text(
          'Смотреть',
        )),
      ),
    );
  }
}

class _PetImageWidget extends StatelessWidget {
  const _PetImageWidget({required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (context) => SizedBox(
              height: 200,
              child: homeController.pet != null
                  ? Image.network(
                      homeController.pet!.image,
                      fit: BoxFit.cover,
                    )
                  : null,
            ));
  }
}
