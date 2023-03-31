import 'package:dogs_list/data/model/breed_model.dart';
import 'package:dogs_list/data/repository/repository.dart';
import 'package:flutter/material.dart';

class BreedProvider with ChangeNotifier {
  final Repository _repository;

  List<Breed>? _breedList;

  BreedProvider(this._repository);

  List<Breed> get breedList => _breedList ?? [];

  void fetchBreeds() async {
    _breedList = await _repository.fetchBreeds();
    notifyListeners();
  }
}
