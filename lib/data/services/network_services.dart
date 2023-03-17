import 'package:dogs_list/data/model/breed_model.dart';

abstract class NetworkService{
  Future<Map<String, dynamic>> fetchBreeds();
  Future<List<String>> fetchImages(Breed breed);
}