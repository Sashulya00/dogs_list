import 'package:dogs_list/data/model/breed_model.dart';

abstract class Repository{
  Future<List<Breed>> fetchBreeds();
  Future<List<String>> fetchImages(Breed breed);
}