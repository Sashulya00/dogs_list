import 'package:dogs_list/data/model/breed_model.dart';
import 'package:dogs_list/data/repository/repository.dart';
import 'package:flutter/material.dart';

class ImagesProvider with ChangeNotifier {
  final Repository _repository;

  List<String>? _imageList;

  ImagesProvider(this._repository);

  List<String> get imagesList => _imageList ?? [];

  void fetchImages(Breed breed) async {
    _imageList = await _repository.fetchImages(breed);
    notifyListeners();
  }
}