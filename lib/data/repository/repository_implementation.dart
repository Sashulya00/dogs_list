import 'package:dogs_list/data/model/breed_model.dart';
import 'package:dogs_list/data/services/network_services.dart';
import 'package:dogs_list/data/repository/repository.dart';

class RepositoryImpl implements Repository {
  final NetworkService networkService;

  RepositoryImpl(this.networkService);

  @override
  Future<List<Breed>> fetchBreeds() async {
    final messageMap = await networkService.fetchBreeds();
    final dogMainBreeds = messageMap.keys.toList();
    final myDogList = <Breed>[];
    for (var a in dogMainBreeds) {
      List subBreed = messageMap[a];
      if (subBreed.isEmpty) {
        myDogList.add(Breed(a));
      } else {
        for (var i in subBreed) {
          myDogList.add(Breed(a, subBreed: i));
        }
      }
    }
    return myDogList;
  }
}
