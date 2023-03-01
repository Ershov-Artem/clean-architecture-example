import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../domain/controller/home_controller.dart';
import '../../internal/dependencies/controller_module.dart';

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
              _PetImageWidget(
                homeController: homeController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _HomeButton(
                    onTap: () {
                      homeController.getCat();
                    },
                    text: 'Покажи кота',
                  ),
                  _HomeButton(
                    onTap: () {
                      homeController.getDog();
                    },
                    text: 'Покажи собаку',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeButton extends StatelessWidget {
  const _HomeButton({
    required this.onTap,
    required this.text,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 48,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            border: Border.all(color: Colors.lightGreenAccent, width: 2)),
        child: Padding(padding: const EdgeInsets.all(12), child: Text(text)),
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
              height: 300,
              child: homeController.image != null
                  ? Image.network(
                      homeController.image!,
                      fit: BoxFit.cover,
                    )
                  : null,
            ));
  }
}
