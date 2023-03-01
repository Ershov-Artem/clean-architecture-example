
import 'package:clean_architecture_example/domain/repository/pet_repository.dart';

abstract class PetModel {
  const PetModel({required this.text, required this.repository});

  final String text;
  final PetRepository repository;
}