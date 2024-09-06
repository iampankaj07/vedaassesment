import 'package:flutter/material.dart';
import 'plant_model.dart';

class PlantProvider extends ChangeNotifier {
  final List<Plant> _plants = [];

  List<Plant> get plants => _plants;

  void addPlant(Plant plant) {
    _plants.add(plant);
    notifyListeners();
  }
}
